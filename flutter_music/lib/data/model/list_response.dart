import 'package:json_annotation/json_annotation.dart';

part 'list_response.g.dart';

@JsonSerializable()
class ListResponse {
  @JsonKey(name: "results", nullable: true, disallowNullValue: true)
  List<dynamic>? data;
  @JsonKey(name: "resultCount", disallowNullValue: true)
  int? totalResults;

  ListResponse({this.data, this.totalResults});

  factory ListResponse.fromJson(Map<String, dynamic> json) =>
      json == null ? ListResponse() : _$ListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListResponseToJson(this);
}
