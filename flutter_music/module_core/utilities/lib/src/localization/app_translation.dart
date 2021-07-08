import 'dart:async';
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:manifest/manifest.dart';


extension AppTranslationsExt on BuildContext {
  String getString(String key) => AppTranslations.of(this).text(key);
}

class AppTranslations {
  Locale locale;
  static Map<dynamic, dynamic> _localisedValues;

  AppTranslations(Locale locale) {
    this.locale = locale;
  }

  static AppTranslations of(BuildContext context) {
    return Localizations.of<AppTranslations>(context, AppTranslations);
  }

  static Future<AppTranslations> load(Locale locale) async {
    AppTranslations appTranslations = AppTranslations(locale);
    final _languageJson =
        locale.languageCode == BuildConfig.LANG_AR.languageCode
            ? AssetManifest.ar
            : AssetManifest.en;
    String jsonContent = await rootBundle.loadString(_languageJson);
    _localisedValues = json.decode(jsonContent);
    return appTranslations;
  }

  get currentLanguage => locale.languageCode;

  String text(String key) {
    return _localisedValues[key] ?? "$key not found";
  }
}
