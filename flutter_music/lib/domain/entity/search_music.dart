import 'package:flutter_music/domain/base_item_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_music.g.dart';

@JsonSerializable()
class SearchMusic extends ItemType {
  @JsonKey(name: "artistId")
  num? idArtist;
  @JsonKey(name: "collectionId")
  num? idCollection;
  @JsonKey(name: "artistName")
  String? artistName;
  @JsonKey(name: "artworkUrl60")
  String? artworkUrl;
  @JsonKey(name: "trackName")
  String? songTitle;
  @JsonKey(name: "collectionName")
  String? albumName;
  @JsonKey(name: "previewUrl")
  String? previewUrl;

  SearchMusic(
      {this.idArtist,
      this.idCollection,
      this.artistName,
      this.artworkUrl,
      this.songTitle,
      this.albumName,
      this.previewUrl});

  SearchMusic copyWith(
      {num? idArtist,
      num? idCollection,
      String? artistName,
      String? artworkUrl,
      String? songTitle,
      String? albumName,
      String? previewUrl}) {
    return SearchMusic(
        idArtist: idArtist ?? this.idArtist,
        idCollection: idCollection ?? this.idCollection,
        artistName: artistName ?? this.artistName,
        artworkUrl: artworkUrl ?? this.artworkUrl,
        songTitle: songTitle ?? this.songTitle,
        albumName: albumName ?? this.albumName,
        previewUrl: previewUrl ?? this.previewUrl);
  }

  factory SearchMusic.fromJson(Map<String, dynamic> json) =>
      json == null ? SearchMusic() : _$SearchMusicFromJson(json);

  Map<String, dynamic> toJson() => _$SearchMusicToJson(this);

  static empty() {
    return SearchMusic();
  }
}

class SearchMusicsLoading extends ItemType {}
