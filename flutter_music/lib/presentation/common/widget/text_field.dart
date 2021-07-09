import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:manifest/manifest.dart';
import 'package:utilities/utilities.dart';

class FormTextField extends StatefulWidget {
  final FormTextFieldType type;
  final String? title;
  final String? hintText;
  final String? initialText;
  final bool enable;
  final bool showError;
  final bool? autoFocus;
  final TextInputAction? textInputAction;
  final ValueChanged<String> onChanged;
  final String? errorMessage;
  final TextEditingController? controller;
  final ValueChanged<String>? onSubmitted;
  final GestureTapCallback? onTap;

  @override
  _FormTextFieldState createState() => _FormTextFieldState();

  const FormTextField({
    Key? key,
    required this.type,
    required this.enable,
    required this.onChanged,
    required this.showError,
    this.title,
    this.initialText,
    this.textInputAction,
    this.errorMessage,
    this.hintText,
    this.controller,
    this.onSubmitted,
    this.onTap,
    this.autoFocus = false,
  })  : assert(type != null),
        assert(enable != null),
        assert(showError != null),
        assert(onChanged != null),
        super(key: key);
}

class _FormTextFieldState extends State<FormTextField> {
  bool _obscureText = false;

  List<TextInputFormatter> _getInputFormatters() {
    List<TextInputFormatter> inputFormatters = [];
    switch (widget.type) {
      case FormTextFieldType.PHONE:
        inputFormatters = [FilteringTextInputFormatter.digitsOnly];
        break;
      case FormTextFieldType.FULLNAME:
        inputFormatters = [FilteringTextInputFormatter.singleLineFormatter];
        break;
      case FormTextFieldType.EMAIL:
        inputFormatters = [FilteringTextInputFormatter.singleLineFormatter];
        break;
      case FormTextFieldType.DATE:
        inputFormatters = [FilteringTextInputFormatter.singleLineFormatter];
        break;
      default:
        inputFormatters = [];
        break;
    }
    return inputFormatters;
  }

  Widget? _getPrefixIcon() {
    Widget? icon;
    switch (widget.type) {
      case FormTextFieldType.FULLNAME:
        icon = Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.person),
          ],
        );
        break;
      case FormTextFieldType.EMAIL:
        icon = Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.mail),
          ],
        );
        break;
      case FormTextFieldType.DATE:
        icon = Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.date_range_rounded),
          ],
        );
        break;
      case FormTextFieldType.PHONE:
        icon = Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.phone),
          ],
        );
        break;
      case FormTextFieldType.PASSWORD:
        icon = Row(
          mainAxisSize: MainAxisSize.min,
          children: [Icon(Icons.lock)],
        );
        break;
      default:
        icon = null;
        break;
    }
    return icon;
  }

  Widget? _getSuffixIcon() {
    _toggle() {
      setState(() {
        _obscureText = !_obscureText;
      });
    }

    Widget? suffixIcon;
    switch (widget.type) {
      case FormTextFieldType.PASSWORD:
        suffixIcon = GestureDetector(
          onTap: _toggle,
          child: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
          ),
        );
        break;
      default:
        suffixIcon = null;
        break;
    }
    return suffixIcon;
  }

  bool _isObscureText() {
    switch (widget.type) {
      case FormTextFieldType.PASSWORD:
        _obscureText = true;
        break;
      default:
        _obscureText = false;
        break;
    }
    return _obscureText;
  }

  TextInputType _getKeyboardType() {
    TextInputType type = TextInputType.text;
    switch (widget.type) {
      case FormTextFieldType.FULLNAME:
        type = TextInputType.text;
        break;
      case FormTextFieldType.EMAIL:
        type = TextInputType.emailAddress;
        break;
      case FormTextFieldType.PHONE:
        type = TextInputType.phone;
        break;
      case FormTextFieldType.PASSWORD:
        type = TextInputType.visiblePassword;
        break;
      case FormTextFieldType.COMMENT:
        type = TextInputType.multiline;
        break;
      case FormTextFieldType.NOTE:
        type = TextInputType.multiline;
        break;
      case FormTextFieldType.SEARCH:
        type = TextInputType.text;
        break;
      case FormTextFieldType.DATE:
        type = TextInputType.text;
        break;
    }
    return type;
  }

  int _getMaxDigit() {
    int maxDigit;
    switch (widget.type) {
      case FormTextFieldType.FULLNAME:
        maxDigit = 25;
        break;
      case FormTextFieldType.EMAIL:
        maxDigit = 25;
        break;
      case FormTextFieldType.PHONE:
        maxDigit = BuildConfig.DEBUG ? 13 : 13;
        break;
      case FormTextFieldType.PASSWORD:
        maxDigit = 20;
        break;
      case FormTextFieldType.COMMENT:
        maxDigit = 30000;
        break;
      case FormTextFieldType.NOTE:
        maxDigit = 30000;
        break;
      case FormTextFieldType.DATE:
        maxDigit = 10;
        break;
      default:
        return 500;
        break;
    }
    return maxDigit;
  }

  int _getMaxLines() {
    switch (widget.type) {
      case FormTextFieldType.COMMENT:
        return 2;
        break;
      case FormTextFieldType.NOTE:
        return 5;
        break;
      default:
        return 1;
        break;
    }
  }

  int _getMinLines() {
    switch (widget.type) {
      case FormTextFieldType.NOTE:
        return 5;
        break;
      default:
        return 1;
        break;
    }
  }

  bool _isEnabled() {
    switch (widget.type) {
      case FormTextFieldType.DATE:
        return false;
        break;
      default:
        return widget.enable;
        break;
    }
  }

  InputDecoration _getInputDecoration() {
    switch (widget.type) {
      case FormTextFieldType.NOTE:
        return InputDecoration(
          counterText: "",
          hintStyle: TextStylesManifest.textFormFieldRegular.copyWith(
            color: HexColor.toColor(ColorManifest.BODY_TEXT_COLOR),
            fontSize: DimensionsManifest.UNIT_11.sp,
          ),
          hintText: widget.hintText ?? "",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: HexColor.toColor(ColorManifest.BORDER_NOTE_COLOR),
            ),
            borderRadius: ShapeStylesManifest.LEAF_RADIUS,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: HexColor.toColor(ColorManifest.BORDER_NOTE_COLOR),
            ),
            borderRadius: ShapeStylesManifest.LEAF_RADIUS,
          ),
          border: OutlineInputBorder(
            borderRadius: ShapeStylesManifest.LEAF_RADIUS,
          ),
        );
        break;
      case FormTextFieldType.COMMENT:
        return InputDecoration(
          counterText: "",
          hintStyle: TextStylesManifest.textFormFieldRegular.copyWith(
            color: HexColor.toColor(ColorManifest.BODY_TEXT_COLOR),
            fontSize: DimensionsManifest.UNIT_11.sp,
          ),
          hintText: widget.hintText ?? "",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: HexColor.toColor(ColorManifest.DARKER_GREY_COLOR),
            ),
            borderRadius: ShapeStylesManifest.RADIUS_CIRCULAR_25_ALL,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: HexColor.toColor(ColorManifest.DARKER_GREY_COLOR),
            ),
            borderRadius: ShapeStylesManifest.RADIUS_CIRCULAR_25_ALL,
          ),
          border: OutlineInputBorder(
            borderRadius: ShapeStylesManifest.RADIUS_CIRCULAR_25_ALL,
          ),
        );
        break;
      case FormTextFieldType.SEARCH:
        return InputDecoration(
            counterText: "",
            hintStyle: TextStylesManifest.textFormFieldRegular.copyWith(
              color: HexColor.toColor(ColorManifest.BODY_TEXT_COLOR),
              fontSize: DimensionsManifest.UNIT_11.sp,
            ),
            hintText: widget.hintText ?? "",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: HexColor.toColor(ColorManifest.WHITE_COLOR),
              ),
              borderRadius: ShapeStylesManifest.RADIUS_CIRCULAR_16,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: HexColor.toColor(ColorManifest.WHITE_COLOR),
              ),
              borderRadius: ShapeStylesManifest.RADIUS_CIRCULAR_16,
            ),
            border: OutlineInputBorder(
              borderRadius: ShapeStylesManifest.RADIUS_CIRCULAR_16,
            ),
            fillColor: HexColor.toColor(ColorManifest.WHITE_COLOR),
            filled: true);
        break;
      default:
        return InputDecoration(
          counterText: "",
          counter: Text(""),
          suffixIcon: _getSuffixIcon(),
          prefixIcon: _getPrefixIcon(),
          errorText: widget.showError ? widget.errorMessage : null,
          errorStyle: widget.showError
              ? TextStylesManifest.textFormFieldRegular
                  .copyWith(color: Colors.red)
              : null,
          errorMaxLines: 1,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: HexColor.toColor(ColorManifest.DARKER_GREY_COLOR)),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: HexColor.toColor(ColorManifest.GREY_COLOR)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: HexColor.toColor(ColorManifest.DARKER_GREY_COLOR)),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: widget.errorMessage != null
                  ? widget.errorMessage != ""
                      ? Colors.red
                      : HexColor.toColor(ColorManifest.DARKER_GREY_COLOR)
                  : HexColor.toColor(ColorManifest.DARKER_GREY_COLOR),
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: widget.errorMessage != null
                  ? widget.errorMessage != ""
                      ? Colors.red
                      : HexColor.toColor(ColorManifest.DARKER_GREY_COLOR)
                  : HexColor.toColor(ColorManifest.DARKER_GREY_COLOR),
            ),
          ),
          fillColor: HexColor.toColor(ColorManifest.WHITE_COLOR),
          filled: true,
        );
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    _obscureText = _isObscureText();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Visibility(
            visible: widget.title != null,
            child: Padding(
              padding: widget.type == FormTextFieldType.NOTE
                  ? EdgeInsets.only(
                      bottom: DimensionsManifest.UNIT_2.h,
                    )
                  : EdgeInsets.zero,
              child: Text(
                widget.title ?? "",
                style: TextStylesManifest.textFormFieldRegular
                    .copyWith(fontSize: DimensionsManifest.UNIT_10.sp),
              ),
            ),
          ),
          TextFormField(
            initialValue: widget.initialText,
            controller: widget.controller,
            keyboardType: _getKeyboardType(),
            onFieldSubmitted: widget.onSubmitted,
            autofocus: widget.autoFocus ?? false,
            enabled: _isEnabled(),
            style: TextStylesManifest.textFormFieldRegular.copyWith(
                fontSize: DimensionsManifest.UNIT_11.sp,
                color: HexColor.toColor(ColorManifest.HEADER_TEXT_COLOR)),
            onChanged: widget.onChanged,
            obscureText: _obscureText,
            maxLength: _getMaxDigit(),
            maxLines: _getMaxLines(),
            minLines: _getMinLines(),
            inputFormatters: _getInputFormatters(),
            textAlignVertical: TextAlignVertical.center,
            textInputAction: widget.textInputAction != null
                ? widget.textInputAction
                : TextInputAction.done,
            decoration: _getInputDecoration(),
          )
        ],
      ),
    );
  }
}

enum FormTextFieldType {
  FULLNAME,
  EMAIL,
  PHONE,
  PASSWORD,
  COMMENT,
  NOTE,
  SEARCH,
  DATE,
}
