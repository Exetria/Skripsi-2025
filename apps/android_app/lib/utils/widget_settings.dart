import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Box decorations
BoxDecoration regularBoxDecoration(BuildContext context) {
  final bool lightMode = Theme.of(context).brightness == Brightness.light;

  return BoxDecoration(
    color: lightMode ? fillColor : darkModeFillColor,
    borderRadius: BorderRadius.circular(12.r),
    border: Border.all(color: lightMode ? dividerColor : darkModeDividerColor),
    boxShadow: [
      BoxShadow(
        color: lightMode ? dividerColor : Colors.black,
        blurRadius: 8,
        offset: Offset(0, 6.h),
      ),
    ],
  );
}

BoxDecoration iconBoxDecoration(BuildContext context) {
  final bool lightMode = Theme.of(context).brightness == Brightness.light;

  return BoxDecoration(
    color: Theme.of(context).colorScheme.secondary.withAlpha(50),
    borderRadius: BorderRadius.circular(10.r),
  );
}

BoxDecoration photoBoxDecoration(BuildContext context) {
  final bool lightMode = Theme.of(context).brightness == Brightness.light;

  return BoxDecoration(
    shape: BoxShape.rectangle,
    color: lightMode ? fillColor : darkModeFillColor,
    borderRadius: BorderRadius.circular(16.r),
    border: Border.all(color: lightMode ? dividerColor : darkModeDividerColor),
  );
}
