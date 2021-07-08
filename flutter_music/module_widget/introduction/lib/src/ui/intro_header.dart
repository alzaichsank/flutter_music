import 'package:flutter/material.dart';
import 'package:introduction/src/model/page_view_model.dart';

class IntroPage extends StatelessWidget {
  final PageViewModel page;

  const IntroPage({Key key, @required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: page.decoration.pageColor,
      decoration: page.decoration.boxDecoration,
      child: SafeArea(
        top: false,
        child: Padding(
          padding: page.decoration.imagePadding,
          child: page.image,
        ),
      ),
    );
  }
}
