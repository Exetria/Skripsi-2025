import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// PROVIDERS
final firestoreProvider = Provider((ref) => FirebaseFirestore.instance);

// COLORS
final Color primaryColor = const Color.fromRGBO(0, 128, 128, 1);
final Color secondaryColor = const Color.fromRGBO(0, 150, 136, 1);
final Color accentColor = const Color.fromRGBO(0, 105, 92, 1);
final Color backgroundColor = const Color.fromRGBO(245, 245, 245, 1);
final Color textColor = const Color.fromRGBO(33, 33, 33, 1);
final Color successColor = const Color.fromRGBO(76, 175, 80, 1);
final Color warningColor = const Color.fromRGBO(255, 152, 0, 1);
final Color errorColor = const Color.fromRGBO(244, 67, 54, 1);
final Color dividerColor = const Color.fromRGBO(204, 204, 204, 1);
final Color selectedItemColor = primaryColor;
final Color unselectedItemColor = textColor.withAlpha(150); // Slightly faded

// TEXT STYLES
final TextStyle titleStyle = TextStyle(
  fontSize: 24.sp,
  fontWeight: FontWeight.w500,
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
  color: textColor.withAlpha(178), // Slightly faded for captions
);

final TextStyle buttonStyle = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w600,
  color: dividerColor, // Assuming buttons have a background color
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
