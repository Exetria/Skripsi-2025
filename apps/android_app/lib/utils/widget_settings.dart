import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Box decorations
BoxDecoration regularBoxDecoration(BuildContext context) {
  return BoxDecoration(
    color: Theme.of(context).colorScheme.surface,
    borderRadius: BorderRadius.circular(12.r),
    border: Border.all(color: Theme.of(context).colorScheme.outline),
    boxShadow: [
      BoxShadow(
        color:
            Theme.of(context).brightness == Brightness.light
                ? dividerColor
                : Colors.black,
        blurRadius: 8,
        offset: Offset(0, 6.h),
      ),
    ],
  );
}

// Photo box decorations
BoxDecoration photoBoxDecoration(BuildContext context) {
  return BoxDecoration(
    shape: BoxShape.rectangle,
    color: Theme.of(context).colorScheme.surface,
    borderRadius: BorderRadius.circular(16.r),
    border: Border.all(color: Theme.of(context).colorScheme.outline),
  );
}
