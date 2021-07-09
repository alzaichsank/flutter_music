import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@Singleton()
class SearchMusicRepository {
  static final Map<String, String> headers = {
    "Content-type": "application/json",
    "accept": "application/json"
  };

  static get(String url) async {
    final response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode != 200) {
      return throw ("show error");
    }
    return json.decode(response.body);
  }
}
