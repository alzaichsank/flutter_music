import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'theme.dart';

class _ThemePick extends InheritedWidget {
  final ThemePickState data;

  _ThemePick({
    this.data,
    Key key,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_ThemePick oldWidget) {
    return true;
  }
}

class ThemePick extends StatefulWidget {
  final Widget child;
  final ThemePickerOption initialThemeKey;

  const ThemePick({
    Key key,
    this.initialThemeKey,
    @required this.child,
  }) : super(key: key);

  @override
  ThemePickState createState() => ThemePickState();

  static ThemeData of(BuildContext context) {
    _ThemePick inherited =
    context.dependOnInheritedWidgetOfExactType<_ThemePick>();
    return inherited.data.theme;
  }

  static ThemePickState instanceOf(BuildContext context) {
    _ThemePick inherited =
        context.dependOnInheritedWidgetOfExactType<_ThemePick>();
    return inherited.data;
  }
}

class ThemePickState extends State<ThemePick> {
  ThemeData _theme;

  ThemeData get theme => _theme;

  @override
  void initState() {
    _theme = ThemePicker.getTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _ThemePick(
      data: this,
      child: widget.child,
    );
  }
}
