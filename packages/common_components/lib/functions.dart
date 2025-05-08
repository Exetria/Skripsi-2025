import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// Feedback Dialog
void showFeedbackDialog({
  required BuildContext context,
  required int type,
  required String message,
  Duration duration = const Duration(seconds: 2),
  VoidCallback? onClose,
}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      // Start a delayed pop when the dialog builds
      Future.delayed(duration, () {
        SchedulerBinding.instance.addPostFrameCallback((_) {});
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();

          if (onClose != null) {
            onClose();
          }
        }
      });

      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
                color: Theme.of(context).colorScheme.primary,
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

// Confirmation Dialog
void showConfirmationDialog({
  required BuildContext context,
  required String message,
  String leftButtonText = 'Yes',
  String rightButtonText = 'No',
  Color? leftButtonBackgroundColor,
  Color? leftButtonForegroundColor,
  Color? rightButtonBackgroundColor,
  Color? rightButtonForegroundColor,
  required VoidCallback onLeftButtonTap,
  required VoidCallback onRightButtonTap,
}) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.help_outline,
                size: 48,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 16),
              Text(message, style: bodyStyle, textAlign: TextAlign.center),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Left button
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        if (Navigator.of(context).canPop()) {
                          Navigator.of(context).pop();
                        }
                        onLeftButtonTap();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            leftButtonBackgroundColor ??
                            Theme.of(context).colorScheme.primary,
                        foregroundColor:
                            leftButtonForegroundColor ??
                            Theme.of(context).colorScheme.onPrimary,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('Yes'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Right button
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        if (Navigator.of(context).canPop()) {
                          Navigator.of(context).pop();
                        }
                        onRightButtonTap();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            rightButtonBackgroundColor ??
                            Theme.of(context).colorScheme.primary,
                        foregroundColor:
                            rightButtonForegroundColor ??
                            Theme.of(context).colorScheme.onPrimary,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('No'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
