import 'package:android_app/user_management_module/data/firebase_auth.dart';
import 'package:android_app/user_management_module/pages/login_page.dart';
import 'package:android_app/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileFragment extends StatefulHookConsumerWidget {
  const ProfileFragment({super.key});

  @override
  ConsumerState<ProfileFragment> createState() => _ProfileFragment();
}

class _ProfileFragment extends ConsumerState<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Avatar
            CircleAvatar(
              radius: 50.r,
              backgroundColor: secondaryColor.withAlpha(51),
              child: Icon(Icons.person, size: 50.sp, color: primaryColor),
            ),
            SizedBox(height: 16.h),
            // User Information
            Text(
              // TODO: Replace with actual user name
              'John Doe',
              style: titleStyle.copyWith(fontSize: 20.sp),
            ),
            Text(
              // TODO: Replace with actual email
              'johndoe@example.com',
              style: bodyStyle.copyWith(
                fontSize: 16.sp,
                color: textColor.withAlpha(178),
              ), // Faded text color
            ),
            Text(
              // TODO: Replace with actual role
              'Sales Representative',
              style: captionStyle.copyWith(fontSize: 14.sp),
            ),
            SizedBox(height: 24.h),

            // Check-in and Check-out Buttons
            ElevatedButton(
              onPressed: () {
                // TODO: Implement check-in functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: successColor,
                foregroundColor: backgroundColor,
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 12.h),
              ),
              child: Text(
                'Check In',
                style: buttonStyle.copyWith(fontSize: 16.sp),
              ),
            ),
            SizedBox(height: 12.h),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement check-out functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: errorColor,
                foregroundColor: backgroundColor,
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 12.h),
              ),
              child: Text(
                'Check Out',
                style: buttonStyle.copyWith(fontSize: 16.sp),
              ),
            ),
            SizedBox(height: 24.h),
            // Logout Button
            ElevatedButton(
              onPressed: () {
                signOut(ref);

                // TODO: Implement sign-out confirmation before navigating

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: warningColor,
                foregroundColor: backgroundColor,
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 12.h),
              ),
              child: Text(
                'Logout',
                style: buttonStyle.copyWith(fontSize: 16.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
