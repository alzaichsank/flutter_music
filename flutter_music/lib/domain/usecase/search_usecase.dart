import 'package:flutter_music/data/handler/api_result.dart';
import 'package:flutter_music/data/handler/network_exception.dart';
import 'package:flutter_music/data/network_repository.dart';
import 'package:flutter_music/domain/entity/search_music.dart';
import 'package:flutter_music/domain/mapper/search_mapper.dart';
import 'package:injectable/injectable.dart';

import '../base_usecase.dart';

@Singleton()
class SearchUseCase
    extends BaseUseCase<String, Future<ApiResult<List<SearchMusic>>>> {
  final NetworkRepository _networkRepository;
  final SearchMapper _searchMapper;

  SearchUseCase(this._networkRepository, this._searchMapper);

  @override
  Future<ApiResult<List<SearchMusic>>> execute(String keyword) async {
    final apiCall = await _networkRepository.searchMusic(keyword);
    return apiCall.when(
      success: (response) =>
          ApiResult.success(_searchMapper.transformSearch(response.data)),
      failure: (error) => ApiResult.failure(
        NetworkException.getDioException(error),
      ),
    );
  }
}
