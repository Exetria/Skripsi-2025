import 'package:android_app/variables.dart';
import 'package:flutter/material.dart';

void showCustomDialog(
  BuildContext context,
  String title, {
  bool dismissable = false,
  String? subtitle,
  String? body,
  Duration? duration,
  Function()? onClosed,
}) {
  bool dialogOpen = true;
  showDialog(
    context: context,
    barrierDismissible: dismissable,
    builder: (context) {
      Future.delayed(duration ?? const Duration(seconds: 2), () {
        if (dialogOpen) {
          Navigator.pop(context);
          dialogOpen = false;
          if (onClosed != null) {
            onClosed();
          }
        }
      });
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Prevent it from expanding fully
            children: [
              Text(title, style: titleStyle),
              subtitle != null ? const SizedBox(height: 10) : const SizedBox(),
              subtitle != null
                  ? Text(subtitle, style: subtitleStyle)
                  : const SizedBox(),
              body != null ? const SizedBox(height: 20) : const SizedBox(),
              body != null ? Text(body, style: bodyStyle) : const SizedBox(),
            ],
          ),
        ),
      );
    },
  ).then((_) {
    // in case kalo di close manual
    dialogOpen = false;
  });
}
