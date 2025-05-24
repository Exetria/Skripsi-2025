import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customSearchBar({
  required BuildContext context,
  TextEditingController? controller,
  String? hint,
  void Function(String)? onChanged,
}) {
  return SizedBox(
    height: Platform.isWindows ? 50 : 50.h,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: hint ?? '',
        contentPadding: EdgeInsets.symmetric(
          vertical: Platform.isWindows ? 14 : 14.h,
          horizontal: Platform.isWindows ? 16 : 16.w,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
      ),
      onChanged: onChanged,
    ),
  );
}
