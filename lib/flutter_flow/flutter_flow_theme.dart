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
  late Color primaryColor = const Color(0xFF6EA80F);
  late Color secondaryColor = const Color(0xFFB6D365);
  late Color tertiaryColor = const Color(0xFFE6E6E6);
  late Color alternate = const Color(0xFFB8E6E0);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF0F1113);
  late Color secondaryText = const Color(0xFF57636C);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFE0E3E7);
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

  String get title1Family => 'Akzidenz Grotesk Pro';
  TextStyle get title1 => TextStyle(
        fontFamily: 'Akzidenz Grotesk Pro',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w300,
        fontSize: 60,
      );
  String get title2Family => 'Akzidenz Grotesk Pro';
  TextStyle get title2 => TextStyle(
        fontFamily: 'Akzidenz Grotesk Pro',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w300,
        fontSize: 40,
      );
  String get title3Family => 'Akzidenz Grotesk Pro';
  TextStyle get title3 => TextStyle(
        fontFamily: 'Akzidenz Grotesk Pro',
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 20,
      );
  String get subtitle1Family => 'Akzidenz Grotesk Pro';
  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Akzidenz Grotesk Pro',
        color: Color(0xFF757575),
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  String get subtitle2Family => 'Akzidenz Grotesk Pro';
  TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Akzidenz Grotesk Pro',
        color: Color(0xFF616161),
        fontWeight: FontWeight.w300,
        fontSize: 16,
      );
  String get bodyText1Family => 'Akzidenz Grotesk Pro';
  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Akzidenz Grotesk Pro',
        color: Color(0xFF303030),
        fontWeight: FontWeight.normal,
        fontSize: 12,
      );
  String get bodyText2Family => 'Akzidenz Grotesk Pro';
  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Akzidenz Grotesk Pro',
        color: Color(0xFF424242),
        fontWeight: FontWeight.normal,
        fontSize: 10,
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
