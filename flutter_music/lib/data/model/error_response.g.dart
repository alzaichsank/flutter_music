// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['results', 'resultCount']);
  return ErrorResponse(
    data: json['results'] as List<dynamic>?,
    totalResults: json['resultCount'] as int?,
  );
}

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('results', instance.data);
  writeNotNull('resultCount', instance.totalResults);
  return val;
}
