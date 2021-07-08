import 'package:assets/src/arguments.dart';
import 'package:assets/src/generator/assets_generator.dart';
import 'package:assets/src/generator/fonts_generator.dart';
import 'package:assets/src/model/dart_class.dart';
import 'package:assets/src/model/resources.dart';
import 'package:recase/recase.dart';

String generateFile(Resources res, Config arguments) {
  var classes = <DartClass>[];
  classes.add(generateFontClass(res.fonts));
  classes.addAll(generateAssetsClass(res.assets.assets));

  classes = classes.where((item) => item != null).toList();

  final fullCode = StringBuffer("");
  final imports = classes.expand((it) => it.imports).toSet().toList();
  imports.sort();
  for (final import in imports) {
    fullCode.writeln("import '$import';");
  }

  if (fullCode.isNotEmpty) {
    fullCode.write("\n");
  }

  for (final dartClass in classes) {
    fullCode.writeln(dartClass.code);
  }
  return fullCode.toString();
}

String createVariableName(String name) {
  return ReCase(name)
      .camelCase
      .replaceAll(r"ä", "ae")
      .replaceAll(r"ö", "oe")
      .replaceAll(r"ü", "ue")
      .replaceAll(r"Ä", "Ae")
      .replaceAll(r"Ö", "Oe")
      .replaceAll(r"Ü", "Üe")
      .replaceAll(r"ß", "ss")
      .replaceAll(RegExp(r"[^a-zA-Z0-9]"), "");
}
