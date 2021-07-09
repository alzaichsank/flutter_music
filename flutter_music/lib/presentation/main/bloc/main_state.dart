part of 'main_bloc.dart';

class MainState extends Equatable {
  const MainState({
    this.state = const SearchBlocState.pureSearch(),
    this.statePlayer = const PlayerBlocState.purePlayer(),
    this.data = const [],
  });

  final SearchBlocState state;
  final PlayerBlocState statePlayer;
  final List<ItemType> data;

  MainState copyWith({
    SearchBlocState? state,
    PlayerBlocState? statePlayer,
    List<ItemType>? data,
  }) {
    return MainState(
      state: state ?? this.state,
      statePlayer: statePlayer ?? this.statePlayer,
      data: data ?? this.data,
    );
  }

  @override
  List<Object> get props => [
        state,
        statePlayer,
        data,
      ];
}
