import 'package:flutter/material.dart';

import '../manifest.dart';

class ShapeStylesManifest {
  static const LEAF_RADIUS = BorderRadius.only(
      topLeft: Radius.circular(7),
      bottomRight: Radius.circular(7),
      topRight: Radius.circular(7),
      bottomLeft: Radius.circular(7));

  //region radius
  static const RADIUS_CIRCULAR_15 = Radius.circular(15);
  static const RADIUS_CIRCULAR_25 = Radius.circular(25);
  static const RADIUS_CIRCULAR_35 = Radius.circular(35);
  static const RADIUS_CTA = BorderRadius.all(Radius.circular(100));
  static const RADIUS_CTA_ELLIPSE = BorderRadius.all(Radius.circular(16));
  static const RADIUS_CIRCULAR_3 = BorderRadius.all(Radius.circular(3));
  static const RADIUS_CIRCULAR_8 = BorderRadius.all(Radius.circular(8));
  static const RADIUS_CIRCULAR_14 = BorderRadius.all(Radius.circular(14));
  static const RADIUS_CIRCULAR_16 = BorderRadius.all(Radius.circular(16));
  static const RADIUS_CIRCULAR_20 = BorderRadius.all(Radius.circular(20));
  static const RADIUS_CIRCULAR_50 = BorderRadius.all(Radius.circular(50));
  static const RADIUS_CIRCULAR_25_TOP = BorderRadius.only(
      topLeft: RADIUS_CIRCULAR_35, topRight: RADIUS_CIRCULAR_35);
  static const RADIUS_CIRCULAR_25_BOTTOM = BorderRadius.only(
      bottomLeft: RADIUS_CIRCULAR_25, bottomRight: RADIUS_CIRCULAR_25);
  static const RADIUS_CIRCULAR_25_ALL = BorderRadius.all(RADIUS_CIRCULAR_25);
  static const RADIUS_CIRCULAR_15_ALL = BorderRadius.all(RADIUS_CIRCULAR_15);

  //endregion

  static var gradientRed = LinearGradient(colors: [
    Color(int.parse(ColorManifest.BUTTON_RED_COLOR_ONE.replaceAll("#", "ff"),
        radix: 16)),
    Color(int.parse(ColorManifest.BUTTON_RED_COLOR_TWO.replaceAll("#", "ff"),
        radix: 16)),
  ]);

  static var gradientBlue = LinearGradient(colors: [
    Color(int.parse(ColorManifest.BUTTON_RED_COLOR_ONE, radix: 16)),
    Color(int.parse(ColorManifest.BUTTON_RED_COLOR_TWO, radix: 16)),
  ]);

  static const leafShadow = [
    BoxShadow(
      color: Color(0xffD8D8D8),
      blurRadius: 4.0, // soften the shadow
      spreadRadius: 0.0, //extend the shadow
      offset: Offset(
        0,
        1,
      ),
    )
  ];

  static const BUTTON_SHADOW = [
    BoxShadow(
      color: Color(0x44ffffff),
      blurRadius: 5.0, // soften the shadow
      spreadRadius: 2.0, //extend the shadow
      offset: Offset(
        2,
        4,
      ),
    )
  ];

  static const CARD_SHADOW = [
    BoxShadow(
      color: Color(0x44ffffff),
      blurRadius: 0.0, // soften the shadow
      spreadRadius: 0.0, //extend the shadow
      offset: Offset(
        0,
        1,
      ),
    )
  ];
}
