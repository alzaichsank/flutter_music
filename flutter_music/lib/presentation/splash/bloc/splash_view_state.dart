part of 'splash_bloc.dart';

class SplashViewState extends Equatable {
  const SplashViewState({this.state = const SplashState.pure()});

  final SplashState state;

  SplashViewState copyWith({SplashState? state}) {
    return SplashViewState(state: state ?? this.state);
  }

  @override
  List<Object> get props => [state];
}
