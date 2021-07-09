import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_music/data/model/search_data.dart';
import 'package:flutter_music/usecase/search_music_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../main.dart';

part 'main_event.dart';

part 'main_state.dart';

@Injectable()
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(
    this.searchMusicUseCase,
  ) : super(const MainState());

  final SearchMusicUseCase searchMusicUseCase;
  final List<SearchData> _events = [];
  String keyword = "";

  @override
  Stream<Transition<MainEvent, MainState>> transformEvents(
      Stream<MainEvent> events, transitionFn) {
    return events
        .debounceTime(const Duration(milliseconds: 1000))
        .switchMap((transitionFn));
  }

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {
    if (event is MainReady) {
      yield state.copyWith(state: SearchBlocState.pureSearch());
    } else if (event is MainQueryChanged) {
      keyword = event.query;
      _events.clear();
      yield* _mapEventToMainEvent();
    } else {
      yield state.copyWith(state: SearchBlocState.pureSearch());
    }
  }

  Stream<MainState> _mapEventToMainEvent() async* {
    MainState _onSucceed(List<SearchData> data) {
      this._events.addAll(data);
      print("cek response succes ${_events.length}");
      if (_events.isEmpty) {
        return state.copyWith(state: SearchBlocState.noInternetError());
      } else {
        return state.copyWith(
          state: SearchBlocState.updateMusic(),
          data: _events,
        );
      }
    }

    MainState _onFailed(String error) {
      return state.copyWith(state: SearchBlocState.failedLoadMusic());
    }

    yield state.copyWith(state: SearchBlocState.showMusicLoading());
    print("cek response before lood ${state.state}");
    final result = await searchMusicUseCase.execute(keyword);

    yield* result.when(
      success: (List<SearchData> data) async* {
        yield _onSucceed(data);
      },
      failure: (String message) async* {
        yield _onFailed(message);
      },
    );
  }

//endregion
}
