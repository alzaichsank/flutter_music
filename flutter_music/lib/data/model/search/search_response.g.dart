// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return SearchResponse(
    data: (json['results'] as List<dynamic>?)
        ?.map((e) => SearchData.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalResults: json['resultCount'] as int?,
  );
}

Map<String, dynamic> _$SearchResponseToJson(SearchResponse instance) =>
    <String, dynamic>{
      'results': instance.data,
      'resultCount': instance.totalResults,
    };

SearchData _$SearchDataFromJson(Map<String, dynamic> json) {
  return SearchData(
    idArtist: json['artistId'] as int?,
    idCollection: json['collectionId'] as int?,
    artistName: json['artistName'] as String?,
    artworkUrl: json['artworkUrl60'] as String?,
    songTitle: json['trackName'] as String?,
    albumName: json['collectionName'] as String?,
    previewUrl: json['previewUrl'] as String?,
  );
}

Map<String, dynamic> _$SearchDataToJson(SearchData instance) =>
    <String, dynamic>{
      'artistId': instance.idArtist,
      'collectionId': instance.idCollection,
      'artistName': instance.artistName,
      'artworkUrl60': instance.artworkUrl,
      'trackName': instance.songTitle,
      'collectionName': instance.albumName,
      'previewUrl': instance.previewUrl,
    };
