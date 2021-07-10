part of '../main_view.dart';

class _MainBody extends StatefulWidget {
  _MainBody({Key? key}) : super(key: key);

  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<_MainBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) => _buildContent(context, state),
    );
  }

  Widget _buildContent(BuildContext context, MainState state) {
    final totalWidth = SizeConfig().getScreenWidth() / 1.75;
    final totalHeight =
        SizeConfig().getPercentageHeightSize(DimensionsManifest.UNIT_7);
    final buttonWidth = (SizeConfig().getScreenWidth() / 3.75);
    final buttonHeight = totalHeight -
        SizeConfig().getPercentageHeightSize(2.9) +
        DimensionsManifest.UNIT_10;

    if (state.state is NoInternetError) {
      return _buildNoInternetState();
    } else if (state.state is EmptyContent) {
      return _buildNegativeState();
    } else if (state.state is UpdateMusic) {
      final music = state.data;
      return _buildPositiveState(
        totalWidth,
        totalHeight,
        state,
        context,
        buttonWidth,
        buttonHeight,
        music,
      );
    } else if (state.state is PureSearch) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageAssets.splash), fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: DimensionsManifest.UNIT_2.blockH),
            Text(
              "Search the music",
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStylesManifest.textFormFieldSemiBold.copyWith(
                  color: HexColor.toColor(ColorManifest.HEADER_TEXT_COLOR),
                  fontSize: DimensionsManifest.FONT_REGULAR_5),
            )
          ],
        ),
      );
    } else {
      return _buildLoadingState(
        totalWidth,
        totalHeight,
        state,
        context,
        buttonWidth,
        buttonHeight,
      );
    }
  }

  _paddingTop({Widget? child}) => Container(
        padding: EdgeInsets.only(top: DimensionsManifest.UNIT_16),
        child: child,
      );

  _buildPositiveState(
    double totalWidth,
    double totalHeight,
    MainState state,
    BuildContext context,
    double buttonWidth,
    double buttonHeight,
    List<SearchData> music,
  ) {
    return _paddingTop(
      child: Container(
        width: SizeConfig().getScreenWidth(),
        height: DimensionsManifest.UNIT_80.h,
        child: Container(
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(child: _buildBody(state, music)),
              if (state.isShowPlayer)
                Positioned(
                    child: new Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: MainPlayer())),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNoInternetState() {
    return Column(children: <Widget>[
      ErrorManifest.errorNoInternet(),
      Text(
        "Please Check internet first",
        textAlign: TextAlign.left,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStylesManifest.textFormFieldSemiBold.copyWith(
            color: HexColor.toColor(ColorManifest.HEADER_TEXT_COLOR),
            fontSize: DimensionsManifest.FONT_REGULAR_5),
      )
    ]);
  }

  Widget _buildNegativeState() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ErrorManifest.errorNotFound(),
          Text(
            "Sorry not found",
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStylesManifest.textFormFieldSemiBold.copyWith(
                color: HexColor.toColor(ColorManifest.HEADER_TEXT_COLOR),
                fontSize: DimensionsManifest.FONT_REGULAR_5),
          )
        ]);
  }

  Widget _buildLoadingState(
    double totalWidth,
    double totalHeight,
    MainState state,
    BuildContext context,
    double buttonWidth,
    double buttonHeight,
  ) {
    return Center(
      child: DoubleBounceLoading(
        color: HexColor.toColor(ColorManifest.BLUE_COLOR_2),
      ),
    );
  }

  Widget _buildBody(MainState state, List<SearchData> music) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      scrollDirection: Axis.vertical,
      itemCount: music == null ? 0 : music.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildBodyItem(music, index, context, state);
      },
    );
  }
}
