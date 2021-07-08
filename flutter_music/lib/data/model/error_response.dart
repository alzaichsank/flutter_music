import 'package:json_annotation/json_annotation.dart';

part 'error_response.g.dart';

@JsonSerializable()
class ErrorResponse {
  @JsonKey(name: "results", nullable: true, disallowNullValue: true)
  List<dynamic>? data;
  @JsonKey(name: "resultCount", disallowNullValue: true)
  int? totalResults;

  ErrorResponse({this.data, this.totalResults});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      json == null ? ErrorResponse() : _$ErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);
}
