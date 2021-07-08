import 'package:flutter/material.dart';
import 'package:introduction/src/model/page_view_model.dart';
import 'package:introduction/src/ui/intro_content.dart';

class IntroBody extends StatelessWidget {
  final PageViewModel page;

  const IntroBody({Key key, @required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: page.decoration.pageColor,
      decoration: page.decoration.boxDecoration,
      child: SafeArea(
        top: false,
        child: IntroContent(page: page),
      ),
    );
  }
}
