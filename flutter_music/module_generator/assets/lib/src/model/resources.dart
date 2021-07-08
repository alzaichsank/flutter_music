class Resources {
  final List<String> fonts;
  final Assets assets;

  Resources({
    this.fonts,
    this.assets,
  });
}

class Assets {
  /// Actually found asset files
  final List<Asset> assets;

  /// Asset paths as declared in pubspec, minus the ignored ones
  final List<String> declared;

  const Assets(this.assets, this.declared);

  static const empty = Assets([], []);
}

class Asset {
  final String name;
  final String path;
  final String fileUri;
  final AssetType type;
  final String package;

  Asset({this.name, this.path, this.fileUri, this.type, this.package});

  Asset copyWith({
    String name,
    String path,
    String fileUri,
    AssetType type,
    String package,
  }) {
    return Asset(
      name: name ?? this.name,
      path: path ?? this.path,
      fileUri: fileUri ?? this.fileUri,
      type: type ?? this.type,
      package: package ?? package,
    );
  }

  @override
  String toString() {
    return "Asset(name: $name, path: $path)";
  }

  @override
  bool operator ==(dynamic other) {
    return other is Asset && other.fileUri == fileUri;
  }

  @override
  int get hashCode => fileUri.hashCode;
}

class AssetType {
  final String key;

  const AssetType(this.key);

  static const image = AssetType('image');
  static const stringPath = AssetType('stringPath');
}

class CustomAssetType extends AssetType {
  final String extension;
  final String customClass;
  final String import;

  static const defaultImport = 'asset_classes.dart';

  const CustomAssetType(this.customClass, this.extension, this.import)
      : super(customClass);
}

class StringReference {
  final String name;
  final List<String> placeholders;
  final String value;

  StringReference({
    this.name,
    this.placeholders,
    this.value,
  });
}
