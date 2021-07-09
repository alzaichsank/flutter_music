import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_music/di/depedencies/navigation_dispatcher.dart';
import 'package:flutter_music/di/injector.dart';
import 'package:manifest/manifest.dart';

import '../splash.dart';

class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final _navigator = Injector.locator<NavigationDispatcher>();

  _SplashViewState();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => Future.delayed(
        Duration(seconds: 1),
        () => context.read<SplashBloc>().add(SplashShowMain())));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashViewState>(
      listener: (context, state) {
        if (state.state == SplashState.showMainScreen()) {
          _navigator.goToMain(context);
        }
      },
      child: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageAssets.splash), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
