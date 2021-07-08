// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListResponse _$ListResponseFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['results', 'resultCount']);
  return ListResponse(
    data: json['results'] as List<dynamic>?,
    totalResults: json['resultCount'] as int?,
  );
}

Map<String, dynamic> _$ListResponseToJson(ListResponse instance) {
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
