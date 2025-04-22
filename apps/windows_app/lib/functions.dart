import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showSalesDetailDialog({
  required BuildContext context,
  required String name,
  required String email,
  required String region,
  required VoidCallback onEditPressed,
}) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (ctx) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        backgroundColor: backgroundColor,
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 300.w, maxWidth: 500.w),
          child: Padding(
            padding: EdgeInsets.all(24.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sales Details', style: sectionTitleStyle),
                SizedBox(height: 16.h),

                // Name
                Row(
                  children: [
                    Icon(Icons.person, color: secondaryColor, size: 20.sp),
                    SizedBox(width: 8.w),
                    Text('Name: ', style: bodyStyle),
                    Expanded(child: Text(name, style: bodyStyle)),
                  ],
                ),
                SizedBox(height: 12.h),

                // Email
                Row(
                  children: [
                    Icon(Icons.email, color: secondaryColor, size: 20.sp),
                    SizedBox(width: 8.w),
                    Text('Email: ', style: bodyStyle),
                    Expanded(child: Text(email, style: bodyStyle)),
                  ],
                ),
                SizedBox(height: 12.h),

                // Region
                Row(
                  children: [
                    Icon(Icons.map, color: secondaryColor, size: 20.sp),
                    SizedBox(width: 8.w),
                    Text('Region: ', style: bodyStyle),
                    Expanded(child: Text(region, style: bodyStyle)),
                  ],
                ),
                SizedBox(height: 24.h),

                // Edit button
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 12.h,
                      ),
                    ),
                    icon: Icon(
                      Icons.edit,
                      color: invertedTextColor,
                      size: 20.sp,
                    ),
                    label: Text('Edit', style: buttonStyle),
                    onPressed: onEditPressed,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
