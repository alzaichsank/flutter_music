import 'package:flutter/material.dart';
import 'package:manifest/manifest.dart';

class TextStylesManifest {
  static const textFormFieldRegular =
      TextStyle(fontFamily: BuildConfig.gilroy, fontWeight: FontWeight.w400);

  static const textFormFieldLight =
      TextStyle(fontFamily: BuildConfig.gilroy, fontWeight: FontWeight.w200);

  static const textFormFieldMedium =
      TextStyle(fontFamily: BuildConfig.gilroy, fontWeight: FontWeight.w500);

  static const textFormFieldSemiBold =
      TextStyle(fontFamily: BuildConfig.gilroy, fontWeight: FontWeight.w600);

  static const textFormFieldBold =
      TextStyle(fontFamily: BuildConfig.gilroy, fontWeight: FontWeight.w700);

  static const textFormFieldBlack =
      TextStyle(fontFamily: BuildConfig.gilroy, fontWeight: FontWeight.w900);
}
