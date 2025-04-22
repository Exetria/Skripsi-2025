import 'package:android_app/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// APP BAR
PreferredSizeWidget customAppBar({
  required String title,
  String? subtitle,
  bool showLeftButton = false,
  Widget? leftButtonWidget,
  VoidCallback? onLeftPressed,
  IconData? rightButtonIcon,
  VoidCallback? onRightPressed,
}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(subtitle != null ? 80.h : 56.h),
    child: Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 32.h, bottom: 8.h),
      decoration: BoxDecoration(
        color: tertiaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.r),
          bottomRight: Radius.circular(12.r),
        ),
        boxShadow: [
          BoxShadow(
            color: dividerColor,
            blurRadius: 8,
            offset: Offset(0, 6.h),
            spreadRadius: 1.r,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Back button
          SizedBox(
            width: 56.w,
            child: Align(
              alignment: Alignment.centerLeft,
              child:
                  showLeftButton
                      ? (leftButtonWidget ??
                          Builder(
                            builder:
                                (context) => IconButton(
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: textColor,
                                    size: 24.sp,
                                  ),
                                  onPressed:
                                      onLeftPressed ??
                                      () => Navigator.of(context).maybePop(),
                                ),
                          ))
                      : const SizedBox.shrink(),
            ),
          ), // Keep space aligned
          // Title + subtitle

          // Middle text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title, style: subtitleStyle),
                if (subtitle != null) Text(subtitle, style: captionStyle),
              ],
            ),
          ),

          // Right icon
          SizedBox(
            width: 56.w,
            child: Align(
              alignment: Alignment.centerRight,
              child:
                  rightButtonIcon != null
                      ? IconButton(
                        icon: Icon(
                          rightButtonIcon,
                          color: textColor,
                          size: 24.sp,
                        ),
                        onPressed: onRightPressed,
                      )
                      : const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    ),
  );
}

// SEARCH BAR
Padding customSearchBar({String? hint}) {
  return Padding(
    padding: EdgeInsets.all(16.w),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
        hintText: hint ?? '',
        hintStyle: hintStyle,
        prefixIcon: Icon(Icons.search, color: unselectedItemColor),
        filled: true,
        fillColor: backgroundColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: dividerColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: dividerColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
      ),
    ),
  );
}

// CUSTOM LIST ITEM
InkWell customListItem({
  required VoidCallback? onTap,
  required IconData leadIcon,
  required String title,
  required String subtitle,
  required IconData trailIcon,
}) {
  return InkWell(
    borderRadius: BorderRadius.circular(12.r),
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: dividerColor, width: 0.3),
        boxShadow: [
          BoxShadow(color: dividerColor, blurRadius: 8, offset: Offset(0, 6.h)),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: secondaryColor.withAlpha(51),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(leadIcon, color: secondaryColor, size: 24.sp),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: bodyStyle),
                SizedBox(height: 4.h),
                Text(subtitle, style: captionStyle),
              ],
            ),
          ),
          Icon(trailIcon, size: 16.sp, color: unselectedItemColor),
        ],
      ),
    ),
  );
}

// DIALOG
void showFeedbackPopup({
  required BuildContext context,
  required IconData icon,
  required String message,
  Duration duration = const Duration(seconds: 2),
}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (ctx) {
      // Start a delayed pop when the dialog builds
      Future.delayed(duration, () {
        if (Navigator.of(ctx).canPop()) {
          Navigator.of(ctx).pop();
        }
      });

      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        backgroundColor: backgroundColor,
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 48.sp, color: primaryColor),
              SizedBox(height: 16.h),
              Text(message, style: bodyStyle, textAlign: TextAlign.center),
            ],
          ),
        ),
      );
    },
  );
}

// FORM DIALOG
void showFormDialog({
  required BuildContext context,
  required String title,
  required Future<void> Function(String input) onSubmit,
}) {
  final TextEditingController controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isSubmitting = false;

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (ctx) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            backgroundColor: backgroundColor,
            child: Padding(
              padding: EdgeInsets.all(24.w),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(title, style: titleStyle, textAlign: TextAlign.center),
                    SizedBox(height: 16.h),
                    TextFormField(
                      controller: controller,
                      style: bodyStyle,
                      decoration: InputDecoration(
                        hintText: 'Enter value',
                        hintStyle: hintStyle,
                        filled: true,
                        fillColor: backgroundColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      validator:
                          (value) =>
                              value == null || value.isEmpty
                                  ? 'Required'
                                  : null,
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 14.h),
                        ),
                        onPressed:
                            isSubmitting
                                ? null
                                : () async {
                                  if (!formKey.currentState!.validate()) return;

                                  setState(() => isSubmitting = true);
                                  await onSubmit(controller.text);
                                  if (Navigator.of(context).canPop()) {
                                    Navigator.of(context).pop();
                                  }
                                },
                        child:
                            isSubmitting
                                ? SizedBox(
                                  height: 16.sp,
                                  width: 16.sp,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      invertedTextColor,
                                    ),
                                  ),
                                )
                                : Text('Submit', style: buttonStyle),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}
