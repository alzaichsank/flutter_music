part of 'main_bloc.dart';

class MainState extends Equatable {
  const MainState(
      {this.state = const SearchBlocState.pureSearch(),
      this.statePlayer = const PlayerBlocState.purePlayer(),
      this.data = const [],
      this.isShowPlayer = false,
      this.isPause = false,
      this.isAlreadyInit = false,
      this.position = 0});

  final SearchBlocState state;
  final PlayerBlocState statePlayer;
  final List<SearchData> data;
  final bool isShowPlayer;
  final bool isPause;
  final bool isAlreadyInit;
  final int position;

  MainState copyWith(
      {SearchBlocState? state,
      PlayerBlocState? statePlayer,
      List<SearchData>? data,
      bool? isShowPlayer,
      bool? isPause,
      bool? isAlreadyInit,
      int? position}) {
    return MainState(
        state: state ?? this.state,
        statePlayer: statePlayer ?? this.statePlayer,
        data: data ?? this.data,
        isShowPlayer: isShowPlayer ?? this.isShowPlayer,
        isPause: isPause ?? this.isPause,
        isAlreadyInit: isAlreadyInit ?? this.isAlreadyInit,
        position: position ?? this.position);
  }

  @override
  List<Object> get props => [
        state,
        statePlayer,
        data,
        isShowPlayer,
        isPause,
        isAlreadyInit,
        position
      ];
}
