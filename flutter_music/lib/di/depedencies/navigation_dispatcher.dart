import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_music/di/depedencies/app_route_registry.dart';

class NavigationDispatcher {
  final AppRouteRegistry? _internalRoute;
  FluroRouter? _router;

  NavigationDispatcher(this._internalRoute) {
    _router = _internalRoute!.router;
  }

  void back(context, {dynamic result}) {
    _router!.pop(context, result);
  }

  //region intro navigation
  Future<dynamic> goToSplash(
    BuildContext context, {
    bool useLoading = false,
    bool clearCache = false,
  }) async {
    return _router!.navigateTo(
      context,
      IntroRoute.SPLASH,
      clearStack: true,
      transition: TransitionType.material,
    );
  }

  //endregion

  //region internal route
  Future<dynamic> goToMain(
    BuildContext context,
  ) async {
    return _router!.navigateTo(
      context,
      InternalRoute.MAIN,
      clearStack: true,
      transition: TransitionType.fadeIn,
    );
  }

//endregion
}
