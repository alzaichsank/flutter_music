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

class MainSubmitted extends MainEvent {
  const MainSubmitted(this.query);

  final String query;

  @override
  List<Object> get props => [query];
}

class MainPlayMusic extends MainEvent {
  const MainPlayMusic(this.position);

  final num position;

  @override
  List<Object> get props => [position];
}

class MainPauseMusic extends MainEvent {
  const MainPauseMusic(this.position);

  final num position;

  @override
  List<Object> get props => [position];
}

class MainPrevMusic extends MainEvent {
  const MainPrevMusic(this.position);

  final num position;

  @override
  List<Object> get props => [position];
}

class MainNextMusic extends MainEvent {
  const MainNextMusic(this.position);

  final num position;

  @override
  List<Object> get props => [position];
}
