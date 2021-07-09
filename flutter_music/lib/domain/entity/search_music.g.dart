// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_music.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchMusic _$SearchMusicFromJson(Map<String, dynamic> json) {
  return SearchMusic(
    idArtist: json['artistId'] as num?,
    idCollection: json['collectionId'] as num?,
    artistName: json['artistName'] as String?,
    artworkUrl: json['artworkUrl60'] as String?,
    songTitle: json['trackName'] as String?,
    albumName: json['collectionName'] as String?,
    previewUrl: json['previewUrl'] as String?,
  );
}

Map<String, dynamic> _$SearchMusicToJson(SearchMusic instance) =>
    <String, dynamic>{
      'artistId': instance.idArtist,
      'collectionId': instance.idCollection,
      'artistName': instance.artistName,
      'artworkUrl60': instance.artworkUrl,
      'trackName': instance.songTitle,
      'collectionName': instance.albumName,
      'previewUrl': instance.previewUrl,
    };
