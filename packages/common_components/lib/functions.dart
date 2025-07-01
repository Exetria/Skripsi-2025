import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Feedback Dialog
void showFeedbackDialog({
  required BuildContext context,
  required int type,
  required String message,
  Duration duration = const Duration(seconds: 2),
  VoidCallback? onClose,
}) {
  final rootNav = Navigator.of(context, rootNavigator: true);

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      // Start a delayed pop when the dialog builds
      Future.delayed(duration, () {
        SchedulerBinding.instance.addPostFrameCallback((_) {});
        if (rootNav.canPop()) {
          rootNav.pop();

          if (onClose != null) {
            onClose();
          }
        }
      });

      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Platform.isWindows ? 16 : 16.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(Platform.isWindows ? 24 : 24.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                type == 1
                    ? Icons.check_circle_outline
                    : type == 2
                    ? Icons.error_outline
                    : Icons.highlight_off,
                size: Platform.isWindows ? 48 : 48.r,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(height: Platform.isWindows ? 16 : 16.h),
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
  String leftButtonText = 'Tidak',
  String rightButtonText = 'Ya',
  Color? leftButtonBackgroundColor,
  Color? leftButtonForegroundColor,
  Color? rightButtonBackgroundColor,
  Color? rightButtonForegroundColor,
  required VoidCallback onLeftButtonTap,
  required VoidCallback onRightButtonTap,
}) {
  final rootNav = Navigator.of(context, rootNavigator: true);

  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: EdgeInsets.all(Platform.isWindows ? 24 : 24.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.help_outline,
                size: Platform.isWindows ? 48 : 48.r,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(height: Platform.isWindows ? 16 : 16.h),
              Text(message, style: bodyStyle, textAlign: TextAlign.center),
              SizedBox(height: Platform.isWindows ? 24 : 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Left button
                  SizedBox(
                    width: Platform.isWindows ? 100 : 100.w,
                    child: ElevatedButton(
                      onPressed: () {
                        if (rootNav.canPop()) {
                          rootNav.pop();
                        }
                        onLeftButtonTap();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            leftButtonBackgroundColor ??
                            Theme.of(context).colorScheme.error,
                        foregroundColor:
                            leftButtonForegroundColor ??
                            Theme.of(context).colorScheme.onError,
                        padding: EdgeInsets.symmetric(
                          vertical: Platform.isWindows ? 12 : 12.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            Platform.isWindows ? 12 : 12.r,
                          ),
                        ),
                      ),
                      child: Text(leftButtonText),
                    ),
                  ),
                  SizedBox(width: Platform.isWindows ? 12 : 12.w),
                  // Right button
                  SizedBox(
                    width: Platform.isWindows ? 100 : 100.w,
                    child: ElevatedButton(
                      onPressed: () {
                        if (rootNav.canPop()) {
                          rootNav.pop();
                        }
                        onRightButtonTap();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            rightButtonBackgroundColor ??
                            Theme.of(context).colorScheme.tertiary,
                        foregroundColor:
                            rightButtonForegroundColor ??
                            Theme.of(context).colorScheme.onTertiary,
                        padding: EdgeInsets.symmetric(
                          vertical: Platform.isWindows ? 12 : 12.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            Platform.isWindows ? 12 : 12.r,
                          ),
                        ),
                      ),
                      child: Text(rightButtonText),
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

// GET DOCUMENT ID FROM NAME
String getIdFromName({required String? name}) {
  if (name == null) return '';

  final parts = name.split('/');
  return parts.isNotEmpty ? parts.last : '';
}

// ADD CALLBACK AFTER BUILD
void addCallBackAfterBuild({required VoidCallback callback}) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    callback();
  });
}

// ANDROID BOX DECORATION
BoxDecoration androidBoxDecoration(BuildContext context) {
  return BoxDecoration(
    color: Theme.of(context).colorScheme.surface,
    borderRadius: BorderRadius.circular(Platform.isWindows ? 12 : 12.r),
    border: Border.all(color: Theme.of(context).colorScheme.outline),
    boxShadow: [
      BoxShadow(
        color: Theme.of(context).colorScheme.shadow,
        blurRadius: 8,
        offset: Offset(0, Platform.isWindows ? 6 : 6.h),
      ),
    ],
  );
}

// DECORATION FOR RECTANGULAR PHOTOS
BoxDecoration photoBoxDecoration(BuildContext context) {
  return BoxDecoration(
    shape: BoxShape.rectangle,
    color: Theme.of(context).colorScheme.surface,
    borderRadius: BorderRadius.circular(Platform.isWindows ? 16 : 16.r),
    border: Border.all(color: Theme.of(context).colorScheme.outline),
  );
}

// DECORATION FOR CIRCLE PHOTOS
BoxDecoration photoCircleDecoration(BuildContext context) {
  return BoxDecoration(
    shape: BoxShape.circle,
    color: Theme.of(context).colorScheme.surface,
    border: Border.all(color: Theme.of(context).colorScheme.outline),
  );
}

// GENERATE LINK MAPS
String generateGoogleMapsUri({
  required double latitude,
  required double longitude,
}) {
  return 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
}

// USER ROLE FUNCTIONS
// GET USER ROLE COlOR
Color? getUserRoleColor({
  required BuildContext context,
  required String? userRole,
}) {
  return userRole == 'admin'
      ? Theme.of(context).colorScheme.primary
      : userRole == 'sales'
      ? Theme.of(context).colorScheme.tertiary
      : Theme.of(context).colorScheme.outline;
}

// VISIT STATUS FUNCTIONS
// GET VISIT STATUS TEXT
String getVisitStatusText({required String? visitStatus}) {
  return visitStatus == '1'
      ? 'Direncanakan'
      : visitStatus == '2'
      ? 'Selesai'
      : visitStatus == '3'
      ? 'Dibatalkan'
      : 'Tidak Tersedia';
}

// GET ORDER STATUS COLOR (still hardcoded)
Color? getVisitStatusColor({
  required BuildContext context,
  required String? visitStatus,
}) {
  return visitStatus == '1'
      ? Theme.of(context).colorScheme.tertiaryContainer
      : visitStatus == '2'
      ? Theme.of(context).colorScheme.tertiary
      : visitStatus == '3'
      ? Theme.of(context).colorScheme.error
      : Theme.of(context).colorScheme.outline;
}

// ORDER STATUS FUNCTIONS
// GET ORDER STATUS TEXT
String getOrderStatusText({required String? orderStatus}) {
  return orderStatus == 'pending'
      ? 'Menunggu Konfirmasi'
      : orderStatus == 'processed'
      ? 'Dikonfirmasi Admin'
      : orderStatus == 'in_transit'
      ? 'Sedang Dikirim'
      : orderStatus == 'delivered'
      ? 'Sudah Diterima'
      : orderStatus == 'finished'
      ? 'Selesai'
      : orderStatus == 'cancelled'
      ? 'Dibatalkan'
      : 'Tidak Tersedia';
}

// GET ORDER STATUS COLOR (still hardcoded)
Color? getOrderStatusColor({
  required BuildContext context,
  required String? orderStatus,
}) {
  if (orderStatus == 'pending') {
    return Theme.of(context).colorScheme.brightness == Brightness.light
        ? amberColor
        : darkModeAmberColor;
  } else if (orderStatus == 'processed') {
    return Theme.of(context).colorScheme.tertiaryContainer;
  } else if (orderStatus == 'in_transit') {
    return Theme.of(context).colorScheme.tertiaryContainer;
  } else if (orderStatus == 'delivered') {
    return Theme.of(context).colorScheme.secondary;
  } else if (orderStatus == 'finished') {
    return Theme.of(context).colorScheme.tertiary;
  } else if (orderStatus == 'cancelled') {
    return Theme.of(context).colorScheme.error;
  }
  return Theme.of(context).colorScheme.outline;
}
