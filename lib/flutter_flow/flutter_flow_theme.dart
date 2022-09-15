// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color primaryBtnText;
  late Color lineColor;
  late Color white;
  late Color black;
  late Color appBg;
  late Color color1;
  late Color color2;
  late Color color3;
  late Color color4;
  late Color color5;
  late Color color6;
  late Color color7;
  late Color color8;
  late Color black10;
  late Color white30;
  late Color grad1;
  late Color grad2;
  late Color iconColour;
  late Color grayIcon;
  late Color gray200;
  late Color gray600;
  late Color black600;
  late Color tertiary400;
  late Color textColor;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF4B39EF);
  late Color secondaryColor = const Color(0xFF39D2C0);
  late Color tertiaryColor = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFFF5963);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF101213);
  late Color secondaryText = const Color(0xFF57636C);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFE0E3E7);
  late Color white = Color(0xFFFFFFFF);
  late Color black = Color(0xFF000000);
  late Color appBg = Color(0xFF1D1C21);
  late Color color1 = Color(0xFFC0DEDD);
  late Color color2 = Color(0xFFE6DEF1);
  late Color color3 = Color(0xFFF1EEE9);
  late Color color4 = Color(0xFFF1DFDD);
  late Color color5 = Color(0xFF26EAE7);
  late Color color6 = Color(0xFFD5B9FF);
  late Color color7 = Color(0xFFEDC9AA);
  late Color color8 = Color(0xFFFFADAE);
  late Color black10 = Color(0x16000000);
  late Color white30 = Color(0x4DFFFFFF);
  late Color grad1 = Color(0xFF000046);
  late Color grad2 = Color(0xFF2193B0);
  late Color iconColour = Color(0x7F000000);
  late Color grayIcon = Color(0xFF95A1AC);
  late Color gray200 = Color(0xFFDBE2E7);
  late Color gray600 = Color(0xFF262D34);
  late Color black600 = Color(0xFF090F13);
  late Color tertiary400 = Color(0xFF39D2C0);
  late Color textColor = Color(0xFF1E2429);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Montserrat';
  TextStyle get title1 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.black,
        fontWeight: FontWeight.w800,
        fontSize: 24,
      );
  String get title2Family => 'Montserrat';
  TextStyle get title2 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.black,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      );
  String get title3Family => 'Montserrat';
  TextStyle get title3 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.black,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  String get subtitle1Family => 'Montserrat';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.black,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  String get subtitle2Family => 'Montserrat';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.black,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  String get bodyText1Family => 'Montserrat';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.black,
        fontWeight: FontWeight.w300,
        fontSize: 12,
      );
  String get bodyText2Family => 'Montserrat';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.black,
        fontWeight: FontWeight.w300,
        fontSize: 12,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
