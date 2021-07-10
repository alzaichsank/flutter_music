// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_music/data/model/search_data.dart';
import 'package:flutter_music/presentation/main/bloc/main_bloc.dart';
import 'package:flutter_music/presentation/main/main.dart';
import 'package:flutter_music/usecase/search_music_usecase.dart';

import 'response.dart';

void main() {
  /**TODO create widget test**/
}

mockResponse() {
  final response = API_RESPONSE;
  List results = response['results'] as List;
  final bloc = MainBloc(SearchMusicUseCase());
  var data = results.map((e) => SearchData(e)).toList();
  bloc.eventItem.addAll(data);
}
