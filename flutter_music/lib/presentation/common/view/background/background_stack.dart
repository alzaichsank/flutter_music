import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manifest/manifest.dart';
import 'package:utilities/utilities.dart';

part 'view/regular_body_stack.dart';

class BackgroundStack extends StatefulWidget {
  final Widget? body;
  final Widget? toolbar;
  final RegularBackgroundBuilder? regularBuilder;

  const BackgroundStack({
    Key? key,
    required this.body,
    this.toolbar,
    this.regularBuilder,
  })  : assert(body != null),
        super(key: key);

  @override
  _BackgroundStackState createState() => _BackgroundStackState();
}

class _BackgroundStackState extends State<BackgroundStack> {
  @override
  Widget build(BuildContext context) {
    return _buildContent();
  }

  Widget _buildContent() {
    if (widget.regularBuilder != null) {
      return _buildRegularBodyStack(widget);
    } else {
      throw FlutterError(
          "Please choose whether `transparentBuilder` or `regularBuilder` by pass the object tot the constructor");
    }
  }
}

class RegularBackgroundBuilder {
  final double cardTopPadding;
  final double topHeight;
  final String cardColor;
  final String backgroundColor;

  RegularBackgroundBuilder({
    this.cardTopPadding = 0,
    this.topHeight = 270,
    this.cardColor = ColorManifest.WHITE_COLOR,
    this.backgroundColor = ColorManifest.BACKGROUND_COLOR,
  });
}

class TransparentBackgroundBuilder {
  final bool useCard;
  final bool useBackground;
  final double cardTopPadding;
  final double topHeight;
  final bool useBuiltInScaffold;
  final bool useOpacityBackground;
  final Color? cardColor;

  TransparentBackgroundBuilder({
    this.useCard = true,
    this.useBackground = true,
    this.useBuiltInScaffold = true,
    this.cardTopPadding = 0,
    this.topHeight = 270,
    this.useOpacityBackground = true,
    this.cardColor,
  });
}
