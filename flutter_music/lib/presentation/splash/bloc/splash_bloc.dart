import 'dart:async';

// ignore: import_of_legacy_library_into_null_safe
import 'package:bloc/bloc.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../splash.dart';

part 'splash_event.dart';

part 'splash_view_state.dart';

@Injectable()
class SplashBloc extends Bloc<SplashEvent, SplashViewState> {
  SplashBloc() : super(const SplashViewState());

  @override
  Stream<SplashViewState> mapEventToState(
    SplashEvent event,
  ) async* {
    if (event is SplashReady) {
      yield state.copyWith(state: SplashState.showLoading());
    } else if (event is SplashShowMain) {
      yield state.copyWith(state: SplashState.showMainScreen());
    }
  }
}
