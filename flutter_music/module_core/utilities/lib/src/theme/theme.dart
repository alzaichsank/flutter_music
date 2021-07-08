import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manifest/manifest.dart';
import 'package:utilities/src/view/hex_color.dart';

enum ThemePickerOption { DEFAULT }

class ThemePicker {
  static final ThemeData defaultTheme = ThemeData(
      primaryColor: HexColor.toColor(ColorManifest.PRIMARY_COLOR),
      accentColor: HexColor.toColor(ColorManifest.ACCENT_COLOR),
      backgroundColor: HexColor.toColor(ColorManifest.BACKGROUND_COLOR),
      brightness: Brightness.light,
      hintColor: HexColor.toColor(ColorManifest.HINT_TEXT_COLOR),
      focusColor: HexColor.toColor(ColorManifest.ACCENT_COLOR),
      textTheme: TextTheme(
          headline1: GoogleFonts.lato().copyWith(
              color: HexColor.toColor(ColorManifest.HEADER_TEXT_COLOR)),
          headline2: GoogleFonts.lato().copyWith(
              color: HexColor.toColor(ColorManifest.HEADER_TEXT_COLOR)),
          headline3: GoogleFonts.lato().copyWith(
              color: HexColor.toColor(ColorManifest.HEADER_TEXT_COLOR)),
          headline4: GoogleFonts.lato().copyWith(
              color: HexColor.toColor(ColorManifest.HEADER_TEXT_COLOR)),
          headline5: GoogleFonts.lato().copyWith(
              color: HexColor.toColor(ColorManifest.HEADER_TEXT_COLOR)),
          headline6: GoogleFonts.lato().copyWith(
              color: HexColor.toColor(ColorManifest.HEADER_TEXT_COLOR)),
          subtitle1: GoogleFonts.lato().copyWith(
              fontWeight: FontWeight.normal,
              color: HexColor.toColor(ColorManifest.BODY_TEXT_COLOR)),
          subtitle2: GoogleFonts.lato().copyWith(
              fontWeight: FontWeight.normal,
              color: HexColor.toColor(ColorManifest.BODY_TEXT_COLOR)),
          bodyText1: GoogleFonts.lato().copyWith(
              fontWeight: FontWeight.normal,
              color: HexColor.toColor(ColorManifest.BODY_TEXT_COLOR)),
          bodyText2: GoogleFonts.lato().copyWith(
              fontWeight: FontWeight.normal,
              color: HexColor.toColor(ColorManifest.BODY_TEXT_COLOR)),
          caption: GoogleFonts.lato(),
          button: GoogleFonts.lato(),
          overline: GoogleFonts.lato()));

  static ThemeData createTheme({
    Brightness brightness,
    Color background,
    Color primaryText,
    Color secondaryText,
    Color accentColor,
    Color divider,
    Color buttonBackground,
    Color buttonText,
    Color cardBackground,
    Color disabled,
    Color error,
  }) {
    final baseTextTheme = brightness == Brightness.dark
        ? Typography.blackMountainView
        : Typography.whiteMountainView;

    return ThemeData(
      brightness: brightness,
      buttonColor: buttonBackground,
      canvasColor: background,
      cardColor: background,
      dividerColor: divider,
      dividerTheme: DividerThemeData(
        color: divider,
        space: 1,
        thickness: 1,
      ),
      cardTheme: CardTheme(
        color: cardBackground,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),
      backgroundColor: background,
      primaryColor: accentColor,
      accentColor: accentColor,
      textSelectionColor: accentColor,
      textSelectionHandleColor: accentColor,
      cursorColor: accentColor,
      toggleableActiveColor: accentColor,
      appBarTheme: AppBarTheme(
        brightness: brightness,
        color: cardBackground,
        textTheme: TextTheme(
          bodyText1: baseTextTheme.bodyText1.copyWith(
            color: secondaryText,
            fontSize: 18,
          ),
        ),
        iconTheme: IconThemeData(
          color: secondaryText,
        ),
      ),
      iconTheme: IconThemeData(
        color: secondaryText,
        size: 16.0,
      ),
      errorColor: error,
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
        colorScheme: ColorScheme(
          brightness: brightness,
          primary: accentColor,
          primaryVariant: accentColor,
          secondary: accentColor,
          secondaryVariant: accentColor,
          surface: background,
          background: background,
          error: error,
          onPrimary: buttonText,
          onSecondary: buttonText,
          onSurface: buttonText,
          onBackground: buttonText,
          onError: buttonText,
        ),
        padding: const EdgeInsets.all(16.0),
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        brightness: brightness,
        primaryColor: accentColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        errorStyle: TextStyle(color: error),
        labelStyle: TextStyle(
          fontFamily: '',
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
          color: primaryText.withOpacity(0.5),
        ),
        hintStyle: TextStyle(
          color: secondaryText,
          fontSize: 13.0,
          fontWeight: FontWeight.w300,
        ),
      ),
      fontFamily: '',
      textTheme: TextTheme(
        headline1: baseTextTheme.headline1.copyWith(
          color: primaryText,
          fontSize: 34.0,
          fontWeight: FontWeight.bold,
        ),
        headline2: baseTextTheme.headline2.copyWith(
          color: primaryText,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        headline3: baseTextTheme.headline3.copyWith(
          color: secondaryText,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        headline4: baseTextTheme.headline4.copyWith(
          color: primaryText,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        headline5: baseTextTheme.headline5.copyWith(
          color: primaryText,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        headline6: baseTextTheme.headline6.copyWith(
          color: primaryText,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        bodyText1: baseTextTheme.bodyText1.copyWith(
          color: secondaryText,
          fontSize: 15,
        ),
        bodyText2: baseTextTheme.bodyText2.copyWith(
          color: primaryText,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        button: baseTextTheme.button.copyWith(
          color: primaryText,
          fontSize: 12.0,
          fontWeight: FontWeight.w700,
        ),
        caption: baseTextTheme.caption.copyWith(
          color: primaryText,
          fontSize: 11.0,
          fontWeight: FontWeight.w300,
        ),
        overline: baseTextTheme.overline.copyWith(
          color: secondaryText,
          fontSize: 11.0,
          fontWeight: FontWeight.w500,
        ),
        subtitle1: baseTextTheme.subtitle1.copyWith(
          color: primaryText,
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
        ),
        subtitle2: baseTextTheme.subtitle2.copyWith(
          color: secondaryText,
          fontSize: 11.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  // TODO: Update to Light Theme color
  static ThemeData get lightTheme => createTheme(
        brightness: Brightness.light,
        background: HexColor.toColor(ColorManifest.BACKGROUND_COLOR),
        cardBackground: HexColor.toColor(ColorManifest.WHITE_COLOR),
        primaryText: HexColor.toColor(ColorManifest.HEADER_TEXT_COLOR),
        secondaryText: HexColor.toColor(ColorManifest.BODY_TEXT_COLOR),
        accentColor: HexColor.toColor(ColorManifest.ACCENT_COLOR),
        divider: HexColor.toColor(ColorManifest.GREY_COLOR),
        buttonBackground: HexColor.toColor(ColorManifest.PRIMARY_COLOR),
        buttonText: HexColor.toColor(ColorManifest.BODY_TEXT_COLOR),
        disabled: HexColor.toColor(ColorManifest.GREY_COLOR),
        error: Colors.red,
      );

  // TODO: Update to Light Theme color
  static ThemeData get darkTheme => createTheme(
        brightness: Brightness.dark,
        background: HexColor.toColor(ColorManifest.BACKGROUND_COLOR),
        cardBackground: HexColor.toColor(ColorManifest.WHITE_COLOR),
        primaryText: HexColor.toColor(ColorManifest.HEADER_TEXT_COLOR),
        secondaryText: HexColor.toColor(ColorManifest.BODY_TEXT_COLOR),
        accentColor: HexColor.toColor(ColorManifest.ACCENT_COLOR),
        divider: HexColor.toColor(ColorManifest.GREY_COLOR),
        buttonBackground: HexColor.toColor(ColorManifest.PRIMARY_COLOR),
        buttonText: HexColor.toColor(ColorManifest.BODY_TEXT_COLOR),
        disabled: HexColor.toColor(ColorManifest.GREY_COLOR),
        error: Colors.red,
      );

  static ThemeData getTheme() {
    return defaultTheme;
  }
}
