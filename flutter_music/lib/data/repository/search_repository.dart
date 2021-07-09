part of '../network_repository.dart';

mixin _SearchRepository {
  RestApiService get _apiService;

  Future<ApiResult<SearchResponse>> searchMovie(String keywordArtist) async {
    try {
      return await _apiService
          .searchMusicByArtist(keywordArtist, "music", "song", "artistTerm")
          .then(
            (value) => value.data != null
                ? ApiResult.success(
                    SearchResponse(
                      totalResults: value.totalResults,
                      data: value.data!
                          .map((entity) => SearchData.fromJson(entity))
                          .toList(),
                    ),
                  )
                : ApiResult.failure(
                    NetworkException.getDioException(value),
                  ),
          );
    } catch (e) {
      return ApiResult.failure(NetworkException.getDioException(e));
    }
  }
}
