import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class ErrorManifest {
  static errorNotFound() =>
      Center(
        child: Icon(CupertinoIcons.music_note_list, size: 150),
      );

  static errorNoInternet() =>
      Center(
          child: Icon(CupertinoIcons.wifi_slash, size: 150),
      );
}
