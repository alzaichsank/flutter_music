import 'package:json_annotation/json_annotation.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  @JsonKey(name: "results", nullable: true)
  List<SearchData>? data;
  @JsonKey(name: "resultCount", nullable: true)
  num? totalResults;

  SearchResponse({this.data, this.totalResults});

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      json == null ? SearchResponse() : _$SearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}

@JsonSerializable()
class SearchData {
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

  SearchData(
      {this.idArtist,
      this.idCollection,
      this.artistName,
      this.artworkUrl,
      this.songTitle,
      this.albumName,
      this.previewUrl});

  factory SearchData.fromJson(Map<String, dynamic> json) =>
      json == null ? SearchData() : _$SearchDataFromJson(json);

  Map<String, dynamic> toJson() => _$SearchDataToJson(this);
}
