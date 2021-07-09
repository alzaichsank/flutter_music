// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:fluro/fluro.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:utilities/utilities.dart' as _i3;

import '../data/repository/search_music_repository.dart' as _i10;
import '../usecase/search_music_usecase.dart' as _i8;
import '../presentation/main/bloc/main_bloc.dart' as _i7;
import '../presentation/splash/bloc/splash_bloc.dart' as _i5;
import 'depedencies/app_route_registry.dart' as _i6;
import 'depedencies/navigation_dispatcher.dart' as _i9;
import 'modul/application_modules.dart' as _i11;
import 'modul/env_modules.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final applicationModules = _$ApplicationModules();
  final envModules = _$EnvModules();
  gh.lazySingleton<_i3.ConnectionChecker>(
      () => applicationModules.provideConnectionChecker());
  gh.lazySingleton<_i4.FluroRouter>(
      () => applicationModules.provideFluroRouter());
  gh.lazySingleton<_i3.PermissionHelper>(
      () => applicationModules.providePermissionHelper());
  gh.factory<_i5.SplashBloc>(() => _i5.SplashBloc());
  gh.factory<String>(() => envModules.baseUrl, instanceName: 'base_url');
  gh.factory<bool>(() => envModules.buildMode, instanceName: 'build_mode');
  gh.lazySingleton<_i6.AppRouteRegistry>(
      () => applicationModules.provideInternalRouter(get<_i4.FluroRouter>()));
  gh.factory<_i7.MainBloc>(() => _i7.MainBloc(get<_i8.SearchMusicUseCase>()));
  gh.lazySingleton<_i9.NavigationDispatcher>(() => applicationModules
      .provideNavigationDispatcher(get<_i6.AppRouteRegistry>()));
  gh.singleton<_i10.SearchMusicRepository>(_i10.SearchMusicRepository());
  gh.singleton<_i8.SearchMusicUseCase>(_i8.SearchMusicUseCase());
  return get;
}

class _$ApplicationModules extends _i11.ApplicationModules {}

class _$EnvModules extends _i12.EnvModules {}
