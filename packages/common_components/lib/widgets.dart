import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customSearchBar({
  required BuildContext context,
  TextEditingController? controller,
  String? hint,
  bool enabled = true,
  void Function(String)? onChanged,
}) {
  return SizedBox(
    height: Platform.isWindows ? 50 : 50.h,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        enabled: enabled,
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

// INPUT ROW
TextFormField buildInputBox({
  required TextEditingController controller,
  required String label,
  List<TextInputFormatter>? inputFormatters,
  Widget? suffixIcon,
  TextInputType? keyboardType,
  String? Function(String?)? validator,
  String? prefix,
  String? suffix,
  int? maxLines = 1,
  bool enabled = true,
  bool obscureText = false,
}) {
  return TextFormField(
    enabled: enabled,
    controller: controller,
    inputFormatters: inputFormatters,
    maxLines: maxLines,
    keyboardType: keyboardType,
    obscureText: obscureText,
    validator: validator,
    decoration: InputDecoration(
      labelText: label,
      prefixText: prefix,
      suffixText: suffix,
      suffixIcon: suffixIcon,
      alignLabelWithHint: true,
    ),
  );
}

// IMAGE ERROR
Widget imageErrorWidget({required BuildContext context, String? message}) {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.broken_image_outlined,
          size: Platform.isWindows ? 64 : 32.sp,
          color: Theme.of(context).colorScheme.error,
        ),
        message != null
            ? SizedBox(height: Platform.isWindows ? 8 : 8.h)
            : const SizedBox.shrink(),
        message != null
            ? Text(message, style: errorStyle)
            : const SizedBox.shrink(),
      ],
    ),
  );
}
