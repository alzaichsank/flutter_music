import 'dart:ui';


class BuildConfig {
  static const APP_ID = "com.app.kidzbox";

  // TODO: Update BASE_URL here later
  static const _PROD_BASE_URL = "https://itunes.apple.com/";
  static const _DEV_BASE_URL = "https://itunes.apple.com/";
  static const String gilroy = "Gilroy";
  static const BASE_URL = STAGING ? _DEV_BASE_URL : _PROD_BASE_URL;

  static const SHOW_LOG = true;
  static const STAGING = true;
  static const DEBUG = true;
}
