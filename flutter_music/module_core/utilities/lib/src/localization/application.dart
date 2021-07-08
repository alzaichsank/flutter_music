import 'dart:ui';

import 'package:manifest/manifest.dart';

class Application {
  static final Application _application = Application._internal();

  factory Application() {
    return _application;
  }

  Application._internal();

  final List<Locale> supportedLanguagesCodes = [
    BuildConfig.LANG_EN,
    BuildConfig.LANG_AR
  ];

  //returns the list of supported Locales
  Iterable<Locale> supportedLocales() => supportedLanguagesCodes;

  //function to be invoked when changing the language
  LocaleChangeListener onLocaleChanged;
}

typedef void LocaleChangeListener(Locale locale);
