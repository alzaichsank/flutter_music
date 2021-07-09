import 'package:flutter_music/data/model/search/search_response.dart';
import 'package:flutter_music/domain/entity/search_music.dart' as Domain;
import 'package:injectable/injectable.dart';

@Singleton()
class SearchMapper {
  List<Domain.SearchMusic> transformSearch(
          List<SearchData>? searchData) =>
      searchData!
          .map(
            (SearchData searchData) => Domain.SearchMusic(
                idArtist: searchData.idArtist,
                idCollection: searchData.idCollection,
                artistName: searchData.artistName,
                artworkUrl: searchData.artworkUrl,
                albumName: searchData.albumName,
                songTitle: searchData.songTitle,
                previewUrl: searchData.previewUrl),
          )
          .toList();
}
