import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_music/data/model/list_response.dart';
import 'package:manifest/manifest.dart';
import 'package:retrofit/http.dart';

part 'rest_api_service.g.dart';

@RestApi(baseUrl: BuildConfig.BASE_URL)
abstract class RestApiService {
  factory RestApiService(Dio dio) = _RestApiService;

  @GET("search")
  Future<ListResponse> searchMusicByArtist(
      @Query("term") String term,
      @Query("media") String media,
      @Query("entity") String entity,
      @Query("artistTerm") String artistTerm);
}
