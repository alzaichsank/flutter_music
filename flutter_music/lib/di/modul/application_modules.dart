import 'package:fluro/fluro.dart';
import 'package:flutter_music/di/depedencies/app_route_registry.dart';
import 'package:flutter_music/di/depedencies/navigation_dispatcher.dart';
import 'package:injectable/injectable.dart';
import 'package:utilities/utilities.dart';

@module
abstract class ApplicationModules {
  @LazySingleton()
  FluroRouter provideFluroRouter() => FluroRouter();

  @LazySingleton()
  AppRouteRegistry provideInternalRouter(FluroRouter router) =>
      AppRouteRegistry(router);

  @LazySingleton()
  NavigationDispatcher provideNavigationDispatcher(AppRouteRegistry route) =>
      NavigationDispatcher(route);

  @LazySingleton()
  ConnectionChecker provideConnectionChecker() =>
      ConnectionChecker.getInstance();

  @LazySingleton()
  PermissionHelper providePermissionHelper() => PermissionHelper();
}
