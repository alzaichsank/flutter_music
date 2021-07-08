part of 'extensions.dart';

extension ContextExt on BuildContext {
  void showMessage(String message) {
    Scaffold.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(message)),
      );
  }

  void showToast(String _message) {
    Fluttertoast.showToast(
      msg: _message,
      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: Colors.black87,
      textColor: Colors.white,
      gravity: ToastGravity.BOTTOM,
      fontSize: DimensionsManifest.FONT_REGULAR_5,
    );
  }
}
