part of '../background_stack.dart';

Widget _buildRegularBodyStack(BackgroundStack widget) {
  Column _buildBody(BackgroundStack widget) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: SizeConfig().getScreenWidth(),
          height: widget.regularBuilder!.topHeight.toHeight,
          margin: EdgeInsets.zero,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: DimensionsManifest.UNIT_2.h),
            child: widget.body,
          ),
        ),
      ],
    );
  }

  Widget _buildRoundedBackground(BackgroundStack widget) {
    return Container(
      padding: EdgeInsets.only(
          top: DimensionsManifest.UNIT_1.h +
              widget.regularBuilder!.cardTopPadding),
      height: DimensionsManifest.UNIT_99.h,
      child: ClipRRect(
        borderRadius: ShapeStylesManifest.RADIUS_CIRCULAR_25_TOP,
        child: Container(
          color: HexColor.toColor(widget.regularBuilder!.cardColor),
        ),
      ),
    );
  }

  Container _buildBackgroundColor(BackgroundStack widget) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: HexColor.toColor(widget.regularBuilder!.backgroundColor),
    );
  }

  Stack _buildBodyStack() {
    return Stack(
      children: [
        _buildBackgroundColor(widget),
        _buildRoundedBackground(widget),
        _buildBody(widget),
      ],
    );
  }

  if (widget.toolbar != null) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          SizeConfig().getScreenWidth(),
          (DimensionsManifest.UNIT_12 + 0.1).h,
        ),
        child: Container(
          color: HexColor.toColor(widget.regularBuilder!.backgroundColor),
          child: widget.toolbar,
        ),
      ),
      body: _buildBodyStack(),
    );
  } else {
    return Stack(
      children: [
        _buildBackgroundColor(widget),
        _buildRoundedBackground(widget),
        _buildBody(widget),
      ],
    );
  }
}
