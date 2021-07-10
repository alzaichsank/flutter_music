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
  final List<SearchData> eventItem = [];
  String keyword = "";
  int positions = 0;

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
      eventItem.clear();
      yield* _mapEventToMainEvent();
    } else if (event is MainPlayMusic) {
      yield state.copyWith(
          statePlayer: PlayerBlocState.playerShowMusicLoading());
      positions = event.position;
      yield state.copyWith(
          statePlayer: PlayerBlocState.playMusic(),
          isShowPlayer: true,
          isAlreadyInit: false,
          isPause: false,
          position: positions);
    } else if (event is MainPauseMusic) {
      yield state.copyWith(
          statePlayer: PlayerBlocState.playerShowMusicLoading());
      if (event.isPlaying) {
        yield state.copyWith(
            statePlayer: PlayerBlocState.pauseMusic(),
            isPause: true,
            isAlreadyInit: true);
      } else {
        yield state.copyWith(
            statePlayer: PlayerBlocState.pauseMusic(),
            isPause: false,
            isAlreadyInit: true);
      }
    } else if (event is MainNextMusic) {
      if (positions < eventItem.length - 1) {
        var newPosition =
            positions < eventItem.length - 1 ? positions + 1 : positions;
        positions = newPosition;
        yield state.copyWith(
            statePlayer: PlayerBlocState.playerShowMusicLoading());
        yield state.copyWith(
            statePlayer: PlayerBlocState.nextMusic(),
            isShowPlayer: true,
            isAlreadyInit: false,
            isPause: false,
            position: newPosition);
      }
    } else if (event is MainPrevMusic) {
      if (positions != 0) {
        var newPosition = positions > 0 ? positions - 1 : positions;
        positions = newPosition;
        yield state.copyWith(
            statePlayer: PlayerBlocState.playerShowMusicLoading());
        yield state.copyWith(
            statePlayer: PlayerBlocState.prevMusic(),
            isShowPlayer: true,
            isAlreadyInit: false,
            isPause: false,
            position: newPosition);
      }
    } else {
      yield state.copyWith(state: SearchBlocState.pureSearch());
    }
  }

  Stream<MainState> _mapEventToMainEvent() async* {
    MainState _onSucceed(List<SearchData> data) {
      this.eventItem.addAll(data);
      if (eventItem.isEmpty) {
        return state.copyWith(state: SearchBlocState.noInternetError());
      } else {
        return state.copyWith(
          state: SearchBlocState.updateMusic(),
          data: eventItem,
        );
      }
    }

    MainState _onFailed(String error) {
      return state.copyWith(state: SearchBlocState.failedLoadMusic());
    }

    yield state.copyWith(state: SearchBlocState.showMusicLoading());
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
}
