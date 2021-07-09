part of 'splash_bloc.dart';

abstract class SplashEvent extends Equatable {
  const SplashEvent();
}

class SplashReady extends SplashEvent {
  const SplashReady();

  @override
  List<Object> get props => [];
}

class SplashShowMain extends SplashEvent {
  const SplashShowMain();

  @override
  List<Object> get props => [];
}
