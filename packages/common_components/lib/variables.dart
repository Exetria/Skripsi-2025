import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// LIGHT MODE COLORS
final Color primaryColor = const Color.fromRGBO(0, 128, 128, 1);
final Color secondaryColor = const Color.fromRGBO(0, 150, 136, 1);
final Color tertiaryColor = const Color.fromRGBO(178, 223, 219, 1);
final Color fillColor = const Color.fromRGBO(255, 255, 255, 1);
final Color accentColor = const Color.fromRGBO(0, 105, 92, 1);
final Color backgroundColor = const Color.fromRGBO(245, 245, 245, 1);
final Color textColor = const Color.fromRGBO(33, 33, 33, 1);
final Color invertedTextColor = const Color.fromRGBO(245, 245, 245, 1);
final Color successColor = const Color.fromRGBO(76, 175, 80, 1);
final Color warningColor = const Color.fromRGBO(255, 152, 0, 1);
final Color errorColor = const Color.fromRGBO(244, 67, 54, 1);
final Color dividerColor = const Color.fromRGBO(204, 204, 204, 1);
final Color selectedItemColor = primaryColor;
final Color unselectedItemColor = textColor.withAlpha(150);
final Color transparentColor = Colors.transparent;
final Color amberColor = const Color.fromRGBO(255, 193, 7, 1);

// DARK MODE COLORS
final Color darkModePrimaryColor = const Color.fromRGBO(0, 150, 136, 1);
final Color darkModeSecondaryColor = const Color.fromRGBO(178, 223, 219, 1);
final Color darkModeTertiaryColor = const Color.fromRGBO(0, 105, 92, 1);
final Color darkModeFillColor = const Color.fromRGBO(48, 48, 48, 1);
final Color darkModeAccentColor = const Color.fromRGBO(0, 200, 180, 1);
final Color darkModeBackgroundColor = const Color.fromRGBO(18, 18, 18, 1);
final Color darkModeTextColor = const Color.fromRGBO(210, 210, 210, 1);
final Color darkModeInvertedTextColor = const Color.fromRGBO(33, 33, 33, 1);
final Color darkModeSuccessColor = const Color.fromRGBO(76, 175, 80, 1);
final Color darkModeWarningColor = const Color.fromRGBO(255, 160, 0, 1);
final Color darkModeErrorColor = const Color.fromRGBO(211, 47, 47, 1);
final Color darkModeDividerColor = const Color.fromRGBO(30, 30, 30, 1);
final Color darkModeSelectedItemColor = darkModePrimaryColor;
final Color darkModeUnselectedItemColor = darkModeTextColor.withAlpha(150);
final Color darkModeTransparentColor = Colors.transparent;
final Color darkModeAmberColor = const Color.fromRGBO(255, 179, 0, 1);

// TEXT STYLES
final TextStyle titleStyle = TextStyle(
  fontSize: Platform.isWindows ? 24 : 24.sp,
  fontWeight: FontWeight.bold,
);
final TextStyle sectionTitleStyle = TextStyle(
  fontSize: Platform.isWindows ? 20 : 20.sp,
  fontWeight: FontWeight.bold,
);
final TextStyle subtitleStyle = TextStyle(
  fontSize: Platform.isWindows ? 18 : 18.sp,
  fontWeight: FontWeight.w600,
);
final TextStyle bodyStyle = TextStyle(
  fontSize: Platform.isWindows ? 16 : 16.sp,
  fontWeight: FontWeight.normal,
);
final TextStyle captionStyle = TextStyle(
  fontSize: Platform.isWindows ? 14 : 14.sp,
  fontWeight: FontWeight.w400,
);
final TextStyle footnoteStyle = TextStyle(
  fontSize: Platform.isWindows ? 12 : 12.sp,
  fontWeight: FontWeight.w400,
);

// MISC. TEXT STYLES
final TextStyle buttonStyle = TextStyle(
  fontSize: Platform.isWindows ? 16 : 16.sp,
  fontWeight: FontWeight.w600,
);
final TextStyle successStyle = TextStyle(
  fontSize: Platform.isWindows ? 16 : 16.sp,
  fontWeight: FontWeight.w500,
  color: successColor,
);
final TextStyle warningStyle = TextStyle(
  fontSize: Platform.isWindows ? 16 : 16.sp,
  fontWeight: FontWeight.w500,
  color: warningColor,
);
final TextStyle errorStyle = TextStyle(
  fontSize: Platform.isWindows ? 16 : 16.sp,
  fontWeight: FontWeight.w500,
  color: errorColor,
);
