import 'package:injectable/injectable.dart';
import 'package:manifest/manifest.dart';

@module
abstract class EnvModules {
  @Named("build_mode")
  bool get buildMode => BuildConfig.DEBUG;

  @Named("base_url")
  String get baseUrl => BuildConfig.BASE_URL;
}
