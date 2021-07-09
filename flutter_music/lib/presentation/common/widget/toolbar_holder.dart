import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manifest/manifest.dart';
import 'package:utilities/utilities.dart';

class ToolbarHolder extends StatefulWidget {
  final Color? color;
  final Widget? child;
  final double? height;

  ToolbarHolder({
    Key? key,
    this.color,
    this.height,
    @required this.child,
  }) : super(key: key);

  @override
  _ToolbarHolderState createState() => _ToolbarHolderState();
}

class _ToolbarHolderState extends State<ToolbarHolder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color ?? Colors.transparent,
      height: widget.height ?? double.infinity,
      padding: EdgeInsets.only(
        top: SizeConfig().getPercentageHeightSize(DimensionsManifest.UNIT_5),
        left: SizeConfig().getHorizontal(DimensionsManifest.UNIT_4),
        right: SizeConfig().getHorizontal(DimensionsManifest.UNIT_4),
        bottom: SizeConfig().getVertical(DimensionsManifest.UNIT_1),
      ),
      child: widget.child,
    );
  }
}
