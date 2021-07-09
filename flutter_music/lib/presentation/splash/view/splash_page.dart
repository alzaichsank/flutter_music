import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_music/di/injector.dart';
import 'package:manifest/manifest.dart';
import 'package:utilities/utilities.dart';

import '../splash.dart';

class SplashPage extends StatefulWidget {
  SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          SizeConfig()
              .init(context, constraints, orientation); //initialize SizerUtil
          return Scaffold(
            backgroundColor: HexColor.toColor(ColorManifest.BACKGROUND_COLOR),
            body: Container(
              child: BlocProvider(
                create: (context) =>
                    Injector.locator<SplashBloc>()..add(SplashReady()),
                child: SplashView(),
              ),
            ),
          );
        },
      );
    });
  }
}
