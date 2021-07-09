import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_music/di/injector.dart';
import 'package:manifest/manifest.dart';
import 'package:utilities/utilities.dart';

import '../main.dart';


class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor.toColor(ColorManifest.TAB_BACKGROUND_COLOR),
        body: Container(
          child: BlocProvider(
            create: (context) =>
                Injector.locator<MainBloc>()..add(const MainReady()),
            child: MainView(),
          ),
        ));
  }
}
