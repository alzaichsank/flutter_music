import 'dart:ui';

import 'package:manifest/src/string/string_i18n_constant_manifest.dart';

class BuildConfig {
  static const APP_ID = "com.app.kidzbox";

  // TODO: Update BASE_URL here later
  static const _PROD_BASE_URL = "http://157.175.85.34/";
  static const _DEV_BASE_URL = "http://157.175.85.34/";

  static const BASE_URL = STAGING ? _DEV_BASE_URL : _PROD_BASE_URL;

  static const COUNTRY_CODE = BuildConfig.DEBUG ? "+62" : "+966";

  static const SHOW_LOG = true;
  static const STAGING = true;
  static const DEBUG = true;
  static const ALLOW_AUTO_LOCATION_UPDATE = false;

  static const LANG_EN = LocaleManifest.en;
  static const LANG_AR = LocaleManifest.ar;

  static const LANG_EN_NAME = "English";
  static const LANG_AR_NAME = "Arabic";

  static const List<Locale> SUPPORTED_LANGS = [
    BuildConfig.LANG_EN,
    BuildConfig.LANG_AR
  ];

  // KING KHALID INTL AIRPORT
  static const DEFAULT_LATITUDE = 24.860168;
  static const DEFAULT_LONGITUDE = 46.687038;
}
