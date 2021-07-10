import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_music/data/model/search_data.dart';
import 'package:flutter_music/presentation/common/view/background/background_stack.dart';
import 'package:flutter_music/presentation/common/view/loading.dart';
import 'package:flutter_music/presentation/common/widget/text_field.dart';
import 'package:flutter_music/presentation/common/widget/toolbar_holder.dart';
import 'package:manifest/manifest.dart';
import 'package:utilities/utilities.dart';
import 'package:video_player/video_player.dart';

import '../main.dart';

part 'content/main_content.dart';

part 'content/main_row_item.dart';

part 'content/main_toolbar.dart';

part 'content/main_player.dart';

class MainView extends StatefulWidget {
  MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  _MainViewState();

  final GlobalKey<State> _loadingKey = new GlobalKey<State>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<MainBloc, MainState>(
      listener: (context, state) {
        if(state.state is UpdateMusic) {;
        }
      },
      child: BackgroundStack(
        toolbar: MainToolbar(),
        regularBuilder: RegularBackgroundBuilder(
          topHeight: 0,
          backgroundColor: ColorManifest.GREY_COLOR,
          cardColor: ColorManifest.BACKGROUND_COLOR,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: DimensionsManifest.UNIT_4.blockW),
          child: _MainBody(),
        ),
      ),
    );
  }
}
