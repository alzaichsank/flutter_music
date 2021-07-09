import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_music/presentation/splash/splash.dart';

class AppRouteRegistry {
  final FluroRouter router;

  AppRouteRegistry(this.router);

  initRouter() {
    _initIntro();
    _initInternal();
  }

  //region initialization
  _initIntro() {
    router.define(IntroRoute.SPLASH, handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return SplashPage();
    }));
  }

  _initInternal() {
    router.define(InternalRoute.MAIN, handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return SplashPage();
    }));
  }
//endregion
}

//region list of route
abstract class IntroRoute {
  static const SPLASH = "/splash";
}

abstract class InternalRoute {
  static const MAIN = "/main";
}

//endregion
