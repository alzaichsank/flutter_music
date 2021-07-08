import 'dart:developer';

import 'package:manifest/manifest.dart';

class Logger {
  static const _TAG = "APP_LOGGER";

  static void debug(String message) {
    if (BuildConfig.SHOW_LOG) {
      log("$_TAG >>> $message");
    }
  }
}
