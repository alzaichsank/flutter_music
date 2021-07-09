import 'package:flutter_music/data/handler/api_result.dart';
import 'package:flutter_music/data/model/search_data.dart';
import 'package:flutter_music/data/repository/search_music_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class SearchMusicUseCase {
  Future<ApiResult<List<SearchData>>> execute(String keyword) async {
    String url =
        "https://itunes.apple.com/search?term=$keyword&media=music&entity=song&attribute=artistTerm";
    final response = await SearchMusicRepository.get(url);
    List results = response['results'];
    var data = results.map((e) => SearchData(e)).toList();
    if (results.length > 0) {
      return ApiResult.success(data);
    } else {
      return ApiResult.failure("something wrong");
    }
  }
}
