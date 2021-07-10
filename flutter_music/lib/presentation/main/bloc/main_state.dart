part of 'main_bloc.dart';

class MainState extends Equatable {
  const MainState(
      {this.state = const SearchBlocState.pureSearch(),
      this.statePlayer = const PlayerBlocState.purePlayer(),
      this.data = const [],
      this.isShowPlayer = false,
      this.position = 0});

  final SearchBlocState state;
  final PlayerBlocState statePlayer;
  final List<SearchData> data;
  final bool isShowPlayer;
  final int position;

  MainState copyWith(
      {SearchBlocState? state,
      PlayerBlocState? statePlayer,
      List<SearchData>? data,
      bool? isShowPlayer,
      int? position,
      bool? initController}) {
    return MainState(
        state: state ?? this.state,
        statePlayer: statePlayer ?? this.statePlayer,
        data: data ?? this.data,
        isShowPlayer: isShowPlayer ?? this.isShowPlayer,
        position: position ?? this.position);
  }

  @override
  List<Object> get props => [state, statePlayer, data, isShowPlayer, position];
}
