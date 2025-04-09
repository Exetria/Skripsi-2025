import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

// PROVIDERS
final firestoreProvider = Provider((ref) => FirebaseFirestore.instance);

// LIGHT MODE COLORS
final Color primaryColor = const Color.fromRGBO(0, 128, 128, 1);
final Color secondaryColor = const Color.fromRGBO(0, 150, 136, 1);
final Color tertiaryColor = const Color.fromRGBO(178, 223, 219, 1);
final Color fillColor = const Color.fromRGBO(238, 238, 238, 1);
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

// DARK MODE COLORS
final Color darkModePrimaryColor = const Color.fromRGBO(0, 150, 136, 1);
final Color darkModeSecondaryColor = const Color.fromRGBO(178, 223, 219, 1);
final Color darkModeTertiaryColor = const Color.fromRGBO(0, 105, 92, 1);
final Color darkModeFillColor = const Color.fromRGBO(48, 48, 48, 1);
final Color darkModeAccentColor = const Color.fromRGBO(0, 200, 180, 1);
final Color darkModeBackgroundColor = const Color.fromRGBO(18, 18, 18, 1);
final Color darkModeTextColor = const Color.fromRGBO(245, 245, 245, 1);
final Color darkModeInvertedTextColor = const Color.fromRGBO(33, 33, 33, 1);
final Color darkModeSuccessColor = const Color.fromRGBO(129, 199, 132, 1);
final Color darkModeWarningColor = const Color.fromRGBO(255, 183, 77, 1);
final Color darkModeErrorColor = const Color.fromRGBO(239, 83, 80, 1);
final Color darkModeDividerColor = const Color.fromRGBO(97, 97, 97, 1);
final Color darkModeSelectedItemColor = darkModePrimaryColor;
final Color darkModeUnselectedItemColor = darkModeTextColor.withAlpha(150);
final Color darkModeTransparentColor = Colors.transparent;

// TEXT STYLES
final TextStyle titleStyle = TextStyle(
  fontSize: 24.sp,
  fontWeight: FontWeight.bold,
  color: textColor,
);
final TextStyle sectionTitleStyle = TextStyle(
  fontSize: 20.sp,
  fontWeight: FontWeight.bold,
  color: textColor,
);
final TextStyle subtitleStyle = TextStyle(
  fontSize: 18.sp,
  fontWeight: FontWeight.w600,
  color: textColor,
);
final TextStyle bodyStyle = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.normal,
  color: textColor,
);
final TextStyle captionStyle = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w400,
  color: textColor.withAlpha(178),
);
final TextStyle footnoteStyle = TextStyle(
  fontSize: 12.sp,
  fontWeight: FontWeight.w400,
  color: textColor.withAlpha(160),
);
final TextStyle helperStyle = TextStyle(
  fontSize: 10.sp,
  fontWeight: FontWeight.w400,
  color: textColor.withAlpha(140),
);

// MISC. TEXT STYLES
final TextStyle hintStyle = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w600,
  color: unselectedItemColor,
);
final TextStyle buttonStyle = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w600,
  color: dividerColor,
);
final TextStyle successStyle = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: successColor,
);
final TextStyle warningStyle = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: warningColor,
);
final TextStyle errorStyle = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: errorColor,
);

// CURRENCY FORMATTER
final rupiahFormatter = NumberFormat.currency(
  locale: 'id_ID',
  symbol: 'Rp. ',
  decimalDigits: 2,
);
