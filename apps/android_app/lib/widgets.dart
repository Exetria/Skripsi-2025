import 'package:android_app/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// APP BAR
PreferredSizeWidget customAppBar({
  required String title,
  String? subtitle,
  bool showBackButton = false,
  Widget? backButtonWidget,
  VoidCallback? onBack,
  IconData? rightIcon,
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
          if (showBackButton)
            backButtonWidget ??
                Builder(
                  builder:
                      (context) => IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: textColor,
                          size: 24.sp,
                        ),
                        onPressed:
                            onBack ?? () => Navigator.of(context).maybePop(),
                      ),
                )
          else
            SizedBox(width: 48.w), // Keep space aligned
          // Title + subtitle
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
          if (rightIcon != null)
            IconButton(
              icon: Icon(rightIcon, color: textColor, size: 24.sp),
              onPressed: onRightPressed,
            )
          else
            SizedBox(width: 48.w), // Keep space aligned
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
void showAutoClosePopup({
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
              Text(
                message,
                style: bodyStyle.copyWith(color: textColor, fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    },
  );
}
