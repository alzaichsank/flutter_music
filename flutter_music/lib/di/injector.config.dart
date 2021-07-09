// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:fluro/fluro.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:utilities/utilities.dart' as _i3;

import '../data/network_repository.dart' as _i11;
import '../data/rest_api_service.dart' as _i10;
import '../presentation/splash/bloc/splash_bloc.dart' as _i5;
import 'depedencies/app_route_registry.dart' as _i6;
import 'depedencies/dio_logger.dart' as _i8;
import 'depedencies/navigation_dispatcher.dart' as _i9;
import 'modul/application_modules.dart' as _i12;
import 'modul/env_modules.dart' as _i14;
import 'modul/network_modules.dart' as _i13;
import 'modul/repository_module.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final applicationModules = _$ApplicationModules();
  final networkModule = _$NetworkModule();
  final envModules = _$EnvModules();
  final repositoryModule = _$RepositoryModule();
  gh.lazySingleton<_i3.ConnectionChecker>(
      () => applicationModules.provideConnectionChecker());
  gh.lazySingleton<_i4.FluroRouter>(
      () => applicationModules.provideFluroRouter());
  gh.factory<Map<String, String>>(() => networkModule.provideHeaders(),
      instanceName: 'headers');
  gh.lazySingleton<_i3.PermissionHelper>(
      () => applicationModules.providePermissionHelper());
  gh.factory<_i5.SplashBloc>(() => _i5.SplashBloc());
  gh.factory<String>(() => envModules.baseUrl, instanceName: 'base_url');
  gh.factory<bool>(() => envModules.buildMode, instanceName: 'build_mode');
  gh.factory<int>(() => networkModule.readTimeOut,
      instanceName: 'read_time_out');
  gh.factory<int>(() => networkModule.connectTimeOut,
      instanceName: 'connect_time_out');
  gh.lazySingleton<_i6.AppRouteRegistry>(
      () => applicationModules.provideInternalRouter(get<_i4.FluroRouter>()));
  gh.lazySingleton<_i7.Dio>(() => networkModule.provideDio(
      get<_i7.BaseOptions>(),
      get<bool>(instanceName: 'build_mode'),
      get<_i8.DioLogger>()));
  gh.lazySingleton<_i9.NavigationDispatcher>(() => applicationModules
      .provideNavigationDispatcher(get<_i6.AppRouteRegistry>()));
  gh.factory<_i10.RestApiService>(
      () => networkModule.provideApiService(get<_i7.Dio>()));
  gh.lazySingleton<_i11.NetworkRepository>(() =>
      repositoryModule.provideNetworkRepository(get<_i10.RestApiService>()));
  gh.singleton<_i8.DioLogger>(networkModule.provideDioLogger());
  gh.singleton<_i7.BaseOptions>(networkModule.provideDioBaseOptions(
      get<String>(instanceName: 'base_url'),
      get<Map<String, String>>(instanceName: 'headers'),
      get<int>(instanceName: 'connect_time_out'),
      get<int>(instanceName: 'read_time_out')));
  return get;
}

class _$ApplicationModules extends _i12.ApplicationModules {}

class _$NetworkModule extends _i13.NetworkModule {}

class _$EnvModules extends _i14.EnvModules {}

class _$RepositoryModule extends _i15.RepositoryModule {}
