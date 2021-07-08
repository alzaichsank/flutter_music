#!/usr/bin/env dart
import 'dart:io';

import 'package:args/args.dart';
import 'package:assets/builder.dart';
import 'package:assets/src/arguments.dart';
import 'package:assets/src/generator/generator.dart';
import 'package:assets/src/utils/utils.dart';
import 'package:yaml/yaml.dart';

void main(List<String> args) {
  final arguments = CommandLineArguments()
    ..parse(args);

  final configRaw = safeCast<YamlMap>(loadYaml(File(arguments.pubspecFilename).absolute.readAsStringSync()));
  final config = Config.parsePubspecConfig(configRaw ?? YamlMap());

  final res = parseResources(config);
  final contents = generateFile(res, config);

  final outoutFile = File(arguments.outputFilename);
  outoutFile.writeAsStringSync(contents);

  print("${outoutFile.path} generated successfully");
}

class CommandLineArguments {
  String pubspecFilename;
  String outputFilename;

  void parse(List<String> args) {
    ArgParser()
      ..addOption(
        "pubspec-file",
        defaultsTo: 'pubspec.yaml',
        callback: (value) => pubspecFilename = safeCast(value),
        help: 'Specify the pubspec file.',
      )
      ..addOption(
        "output-file",
        defaultsTo: 'lib/src/assets_generated_manifest.dart',
        callback: (value) => outputFilename = safeCast(value),
        help: 'Specify the output file.',
      )
      ..parse(args);
  }
}