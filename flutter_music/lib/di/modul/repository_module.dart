import 'package:flutter_music/data/network_repository.dart';
import 'package:flutter_music/data/rest_api_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RepositoryModule {
  @LazySingleton()
  NetworkRepository provideNetworkRepository(RestApiService apiService) =>
      NetworkRepository(apiService);
}
