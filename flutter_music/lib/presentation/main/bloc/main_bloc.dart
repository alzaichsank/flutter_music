import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_music/data/handler/network_exception.dart';
import 'package:flutter_music/domain/base_item_type.dart';
import 'package:flutter_music/domain/entity/search_music.dart';
import 'package:flutter_music/domain/usecase/search_usecase.dart';
import 'package:injectable/injectable.dart';

import '../main.dart';

part 'main_event.dart';

part 'main_state.dart';

@Injectable()
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(
    this._searchUseCase,
  ) : super(const MainState());

  final SearchUseCase _searchUseCase;
  final List<ItemType> _events = [];
  String keyword = "";

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {
    if (event is MainReady) {
      yield state.copyWith(state: SearchBlocState.pureSearch());
    } else if (event is MainQueryChanged) {
      keyword = event.query;
    } else if (event is MainSubmitted) {
      keyword = event.query;
      _events.clear();
      yield* _mapEventToMainEvent();
    } else {
      yield state.copyWith(state: SearchBlocState.pureSearch());
    }
  }

  Stream<MainState> _mapEventToMainEvent() async* {
    MainState _onSucceed(List<SearchMusic> data) {
      _events.removeWhere((element) => element is SearchMusicsLoading);
      _events.addAll(data);
      if (_events.isEmpty) {
        return state.copyWith(state: SearchBlocState.emptyContent());
      } else {
        return state.copyWith(
          state: SearchBlocState.updateMusic(),
          data: _events,
        );
      }
    }

    MainState _onFailed(NetworkException error) {
      _events.removeWhere((element) => element is SearchMusicsLoading);
      if (error is NoInternetConnection && _events.isEmpty) {
        return state.copyWith(state: SearchBlocState.noInternetError());
      } else {
        return state.copyWith(state: SearchBlocState.failedLoadMusic());
      }
    }

    yield state.copyWith(state: SearchBlocState.showMusicLoading());
    final response = await _searchUseCase.execute(keyword);
    yield* response.when(
      success: (List<SearchMusic> data) async* {
        yield _onSucceed(data);
      },
      failure: (NetworkException error) async* {
        yield _onFailed(error);
      },
    );
  }

//endregion
}
