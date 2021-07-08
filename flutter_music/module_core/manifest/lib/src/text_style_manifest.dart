import 'package:flutter/material.dart';
import 'package:manifest/src/assets_generated_manifest.dart';

class TextStylesManifest {
  static const textFormFieldRegular =
      TextStyle(fontFamily: FontManifest.gilroy, fontWeight: FontWeight.w400);

  static const textFormFieldLight =
      TextStyle(fontFamily: FontManifest.gilroy, fontWeight: FontWeight.w200);

  static const textFormFieldMedium =
      TextStyle(fontFamily: FontManifest.gilroy, fontWeight: FontWeight.w500);

  static const textFormFieldSemiBold =
      TextStyle(fontFamily: FontManifest.gilroy, fontWeight: FontWeight.w600);

  static const textFormFieldBold =
      TextStyle(fontFamily: FontManifest.gilroy, fontWeight: FontWeight.w700);

  static const textFormFieldBlack =
      TextStyle(fontFamily: FontManifest.gilroy, fontWeight: FontWeight.w900);
}
