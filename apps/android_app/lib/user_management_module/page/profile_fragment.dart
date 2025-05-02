import 'package:android_app/user_management_module/page/login_page.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileFragment extends StatefulHookConsumerWidget {
  const ProfileFragment({super.key});

  @override
  ConsumerState<ProfileFragment> createState() => _ProfileFragment();
}

class _ProfileFragment extends ConsumerState<ProfileFragment> {
  // User? user = FirebaseAuth.instance.currentUser;
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Profile Card
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: dividerColor),
            boxShadow: [
              BoxShadow(
                color: dividerColor,
                blurRadius: 8,
                offset: Offset(0, 6.h),
              ),
            ],
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40.r,
                backgroundColor: secondaryColor.withAlpha(30),
                child: Icon(Icons.person, size: 40.sp, color: primaryColor),
              ),
              SizedBox(height: 12.h),
              Text(
                'Not Available',
                style: subtitleStyle,
                textAlign: TextAlign.center,
              ),
              Text(
                'Not Available',
                style: captionStyle,
                textAlign: TextAlign.center,
              ),
              Text(
                'Sales Representative',
                style: captionStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),

        const Spacer(),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Check In/Out Button
              SizedBox(
                width: 150.w,
                child: ElevatedButton.icon(
                  onPressed: () {
                    if (checked) {
                      // TODO: Check-Out logic
                    } else {
                      // TODO: Check-In logic
                    }

                    showFeedbackDialog(
                      context: context,
                      type: 1,
                      // check_circle
                      // error_outline
                      // highlight_off
                      message: 'Check In Success',
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: checked ? warningColor : successColor,
                    foregroundColor: backgroundColor,
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  icon: Icon(checked ? Icons.logout : Icons.login, size: 20.sp),
                  label: Text(
                    checked ? 'Check Out' : 'Check In',
                    style: buttonStyle,
                  ),
                ),
              ),

              // Logout Button (Red)
              SizedBox(
                width: 150.w,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Implement sign-out confirmation before navigating
                    clearUserDataInSp();

                    showFeedbackDialog(
                      context: context,
                      type: 2,
                      message: 'Log Out Success',
                      onClose: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: errorColor,
                    foregroundColor: backgroundColor,
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  icon: Icon(Icons.exit_to_app, size: 20.sp),
                  label: Text('Logout', style: buttonStyle),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 20.h),
      ],
    );
  }
}
