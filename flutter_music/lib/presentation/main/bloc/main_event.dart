part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();
}

class MainReady extends MainEvent {
  const MainReady();

  @override
  List<Object> get props => [];
}

class MainQueryChanged extends MainEvent {
  const MainQueryChanged(this.query);

  final String query;

  @override
  List<Object> get props => [query];
}

class MainPlayMusic extends MainEvent {
  const MainPlayMusic(this.position);

  final int position;

  @override
  List<Object> get props => [position];
}

class MainPauseMusic extends MainEvent {
  const MainPauseMusic();

  @override
  List<Object> get props => [];
}

class MainPrevMusic extends MainEvent {
  const MainPrevMusic();

  @override
  List<Object> get props => [];
}

class MainNextMusic extends MainEvent {
  const MainNextMusic();

  @override
  List<Object> get props => [];
}
