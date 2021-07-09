library manifest;

export 'src/assets_manifest.dart' show ImageAssets;
export 'src/build_config.dart' show BuildConfig;
export 'src/color_manifest.dart' show ColorManifest;
export 'src/dimension_manifest.dart' show DimensionsManifest;
export 'src/error_manifest.dart' show ErrorManifest;
export 'src/shape_style_manifest.dart' show ShapeStylesManifest;
export 'src/text_style_manifest.dart' show TextStylesManifest;

/**
    How to generate file, Please note that you need to run flutter pub get or pub get in each generator module first
    1.  All String : Go to manifest directory, run on terminal `flutter pub run language:generate --source-dir=../../resources/langs/ --output-dir=lib/src/string/`, you need to run this command since this generator is dart specific
    2.  All Assets : Go to manifest directory, run on terminal `flutter pub run assets:generate` for this one, this generator is flutter specific
    3.  Code : Go to root directory of the project, run on tereminal `flutter packages pub run build_runner build`, this generator is flutter specific

    All files will generated, you can just use it, cheers!
 **/
