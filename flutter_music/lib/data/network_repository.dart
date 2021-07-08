import 'package:flutter_music/data/handler/api_result.dart';
import 'package:flutter_music/data/handler/network_exception.dart';
import 'package:flutter_music/data/model/search/search_response.dart';
import 'package:flutter_music/data/rest_api_service.dart';

part 'repository/search_repository.dart';

class NetworkRepository with _SearchRepository {
  final RestApiService _apiService;

  NetworkRepository(this._apiService);
}
