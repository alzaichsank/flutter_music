import 'package:flutter/widgets.dart';
import 'package:manifest/manifest.dart';

class ErrorManifest {
  static errorNotFound() => Center(
        child: Image(
          image: ImageManifest.icErrorNotFoundGeneric,
        ),
      );

  static errorActivityNotFound() => Center(
        child: Image(
          image: ImageManifest.icErrorNotFound,
        ),
      );

  static errorCartNotFound() => Center(
        child: Image(
          image: ImageManifest.icEmptyCart,
        ),
      );

  static errorActDataNotFound() => Center(
    child: Image(
      image: ImageManifest.icActProviderDataEmpty,
    ),
  );

  static errorNoInternet() => Center(
        child: Image(
          image: ImageManifest.icErrorNoInternet,
        ),
      );
}
