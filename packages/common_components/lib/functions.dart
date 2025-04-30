import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// Feedback Dialog
void showFeedbackDialog({
  required BuildContext context,
  required int type,
  required String message,
  Duration duration = const Duration(seconds: 1),
  VoidCallback? onClose,
}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      // Start a delayed pop when the dialog builds
      Future.delayed(duration, () {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();

            if (onClose != null) {
              onClose();
            }
          }
        });
      });

      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                type == 1
                    ? Icons.check_circle_outline
                    : type == 2
                    ? Icons.error_outline
                    : Icons.highlight_off,
                size: 48,
                color: primaryColor,
              ),
              const SizedBox(height: 16),
              Text(message, style: bodyStyle, textAlign: TextAlign.center),
            ],
          ),
        ),
      );
    },
  );
}
