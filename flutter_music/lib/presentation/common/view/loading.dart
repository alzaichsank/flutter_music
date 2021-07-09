import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manifest/manifest.dart';
import 'package:utilities/utilities.dart';

class DoubleBounceLoading extends StatefulWidget {
  const DoubleBounceLoading({
    Key? key,
    this.color,
    this.size = 50.0,
    this.itemBuilder,
    this.duration = const Duration(milliseconds: 2000),
    this.controller,
  })  : assert(
            !(itemBuilder is IndexedWidgetBuilder && color is Color) &&
                !(itemBuilder == null && color == null),
            'You should specify either a itemBuilder or a color'),
        assert(size != null),
        super(key: key);

  final Color? color;
  final double? size;
  final IndexedWidgetBuilder? itemBuilder;
  final Duration? duration;
  final AnimationController? controller;

  @override
  _DoubleBounceLoadingState createState() => _DoubleBounceLoadingState();
}

class _DoubleBounceLoadingState extends State<DoubleBounceLoading>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();

    _controller = (widget.controller ??
        AnimationController(vsync: this, duration: widget.duration))
      ..addListener(() => setState(() {}))
      ..repeat(reverse: true);
    _animation = Tween(begin: -1.0, end: 1.0).animate(
        CurvedAnimation(parent: _controller!, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: List.generate(2, (i) {
          return Transform.scale(
            scale: (1.0 - i - _animation!.value.abs()).abs(),
            child: SizedBox.fromSize(
                size: Size.square(widget.size!), child: _itemBuilder(i)),
          );
        }),
      ),
    );
  }

  Widget _itemBuilder(int index) => widget.itemBuilder != null
      ? widget.itemBuilder!(context, index)
      : DecoratedBox(
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: widget.color!.withOpacity(0.6)));
}

class LoadingDialog {
  static Future<void> showLoadingDialog(
      BuildContext context, GlobalKey key, String message) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new WillPopScope(
              onWillPop: () async => false,
              child: SimpleDialog(
                  key: key,
                  shape: RoundedRectangleBorder(
                      borderRadius: ShapeStylesManifest.RADIUS_CIRCULAR_25_ALL),
                  backgroundColor: HexColor.toColor(ColorManifest.WHITE_COLOR),
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: [
                          DoubleBounceLoading(
                            color: HexColor.toColor(ColorManifest.BLUE_COLOR_2),
                          ),
                          SizedBox(
                            height: message != null
                                ? DimensionsManifest.UNIT_10
                                : DimensionsManifest.UNIT_1,
                          ),
                          Text(
                            message,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStylesManifest.textFormFieldRegular
                                .copyWith(
                                    color: HexColor.toColor(
                                        ColorManifest.BODY_TEXT_COLOR),
                                    fontSize:
                                        DimensionsManifest.FONT_REGULAR_7),
                          ),
                        ],
                      ),
                    )
                  ]));
        });
  }
}
