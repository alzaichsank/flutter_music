import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.pure() = Pure;

  const factory SplashState.showLoading() = ShowLoading;

  const factory SplashState.showMainScreen() = ShowMainScreen;
}
