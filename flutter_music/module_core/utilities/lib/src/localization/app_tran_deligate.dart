import 'dart:async';

import 'package:flutter/material.dart';
import 'package:manifest/manifest.dart';

import 'app_translation.dart';
import 'application.dart';

class AppTranslationsDelegate extends LocalizationsDelegate<AppTranslations> {
  Locale newLocale;

  AppTranslationsDelegate(this.newLocale);

  @override
  bool isSupported(Locale locale) {
    return Application()
        .supportedLanguagesCodes
        .map((e) => e.languageCode)
        .contains(locale.languageCode);
  }

  @override
  Future<AppTranslations> load(Locale locale) {
    return AppTranslations.load(newLocale ?? locale ?? BuildConfig.LANG_EN);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppTranslations> old) {
    return true;
  }
}
