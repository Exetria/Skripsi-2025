import 'package:android_app/customer_module/page/customer_request_list_page.dart';
import 'package:android_app/user_management_module/domain/entities/attendance_domain.dart';
import 'package:android_app/user_management_module/page/controller/get_attendance_data_controller.dart';
import 'package:android_app/user_management_module/page/controller/update_attendance_controller.dart';
import 'package:android_app/user_management_module/page/login_page.dart';
import 'package:android_app/utils/functions.dart';
import 'package:android_app/utils/theme_controller.dart';
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
  bool logOutButtonEnable = true;

  @override
  Widget build(BuildContext context) {
    String userName = userDataHelper?.userName ?? '-';
    String profilePictureLink = userDataHelper?.photoUrl ?? '';
    String role = userDataHelper?.role ?? '-';
    role = role[0].toUpperCase() + role.substring(1);

    final attendanceDataState = ref.watch(getAttendanceDataControllerProvider);

    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile Card
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(8.r),
            decoration: androidBoxDecoration(context),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40.r,
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.secondary.withAlpha(30),
                  backgroundImage:
                      profilePictureLink.isNotEmpty
                          ? NetworkImage(profilePictureLink)
                          : null,
                  child:
                      profilePictureLink.isEmpty
                          ? Icon(
                            Icons.person,
                            size: 40.sp,
                            color: Theme.of(context).colorScheme.primary,
                          )
                          : null,
                ),
                SizedBox(width: 24.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: subtitleStyle,
                      textAlign: TextAlign.start,
                    ),
                    Text(role, style: bodyStyle, textAlign: TextAlign.start),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 16.h),

          Material(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: customListItem(
              context: context,
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomerRequestListPage(),
                    ),
                  ),
              title: 'Lihat Daftar Status Pendaftaran Pelanggan Anda',
              trailIcon: Icons.arrow_forward_ios,
            ),
          ),

          const Spacer(),

          SwitchListTile(
            title: const Text('Mode Gelap'),
            value: ref.watch(themeModeProvider) == ThemeMode.dark,
            onChanged: (val) async {
              await saveDataToSp(key: 'themeMode', data: val ? '1' : '0');
              ref.read(themeModeProvider.notifier).state =
                  val ? ThemeMode.dark : ThemeMode.light;
            },
          ),
          SizedBox(height: 24.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Check In/Out Button
              SizedBox(
                width: 140.w,
                child: attendanceDataState.when(
                  loading: () {
                    return buildLoadingCheckInOutButton();
                  },
                  data: (data) {
                    if (isCheckedIn(data) && isCheckedOut(data)) {
                      return buildCheckedCheckInOutButton();
                    } else if (isCheckedIn(data)) {
                      return buildCheckOutButton(data);
                    } else {
                      return buildCheckInButton();
                    }
                  },
                  error: (error, stackTrace) {
                    final exception = error as ApiException;
                    if (exception.statusCode == 404) {
                      return buildCheckInButton();
                    } else {
                      return buildErrorCheckInOutButton();
                    }
                  },
                ),
              ),

              // Logout Button (Red)
              SizedBox(
                width: 140.w,
                child:
                    logOutButtonEnable
                        ? ElevatedButton.icon(
                          onPressed: () {
                            doSignOut();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.error,
                            foregroundColor:
                                Theme.of(context).colorScheme.onError,

                            padding: EdgeInsets.symmetric(vertical: 12.h),
                          ),
                          icon: Icon(Icons.exit_to_app, size: 20.sp),
                          label: Text('Log Out', style: buttonStyle),
                        )
                        : SizedBox(
                          height: 40.h,
                          width: 40.w,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
              ),
            ],
          ),

          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget buildLoadingCheckInOutButton() {
    return SizedBox(
      height: 40.h,
      width: 40.w,
      child: const Center(child: CircularProgressIndicator()),
    );
  }

  Widget buildErrorCheckInOutButton() {
    return ElevatedButton.icon(
      onPressed: () {
        ref.invalidate(getAttendanceDataControllerProvider);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.error,
        foregroundColor: Theme.of(context).colorScheme.onError,
        padding: EdgeInsets.symmetric(vertical: 14.h),
      ),
      icon: Icon(Icons.error_outline, size: 20.sp),
      label: Text('Error', style: buttonStyle),
    );
  }

  Widget buildCheckInButton() {
    return ElevatedButton.icon(
      onPressed: () {
        doCheckIn();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        foregroundColor: Theme.of(context).colorScheme.onTertiary,

        padding: EdgeInsets.symmetric(vertical: 14.h),
      ),
      icon: Icon(Icons.login, size: 20.sp),
      label: Text('Check In', style: buttonStyle),
    );
  }

  Widget buildCheckOutButton(AttendanceDomain? data) {
    return ElevatedButton.icon(
      onPressed: () {
        doCheckOut(
          checkInTime: data?.fields?.checkinTime?.timestampValue ?? '',
          checkInLatitude:
              data
                  ?.fields
                  ?.checkinLocation
                  ?.mapValue
                  ?.fields
                  ?.latitude
                  ?.doubleValue ??
              0,
          checkInLongitude:
              data
                  ?.fields
                  ?.checkinLocation
                  ?.mapValue
                  ?.fields
                  ?.longitude
                  ?.doubleValue ??
              0,
          checkInAccuracy:
              data
                  ?.fields
                  ?.checkinLocation
                  ?.mapValue
                  ?.fields
                  ?.accuracy
                  ?.doubleValue ??
              0,
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
        foregroundColor: Theme.of(context).colorScheme.onTertiaryContainer,
        padding: EdgeInsets.symmetric(vertical: 14.h),
      ),
      icon: Icon(Icons.login, size: 20.sp),
      label: Text('Check Out', style: buttonStyle),
    );
  }

  Widget buildCheckedCheckInOutButton() {
    return ElevatedButton.icon(
      onPressed: null,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14.h),
      ),
      icon: Icon(Icons.check_circle_outline, size: 20.sp),
      label: Text('Selesai', style: buttonStyle),
    );
  }

  bool isCheckedIn(AttendanceDomain? data) {
    return (data?.fields?.checkinTime?.timestampValue != null &&
        data?.fields?.checkinTime?.timestampValue?.isNotEmpty == true &&
        data
                ?.fields
                ?.checkinLocation
                ?.mapValue
                ?.fields
                ?.latitude
                ?.doubleValue !=
            null &&
        data
                ?.fields
                ?.checkinLocation
                ?.mapValue
                ?.fields
                ?.longitude
                ?.doubleValue !=
            null &&
        data
                ?.fields
                ?.checkinLocation
                ?.mapValue
                ?.fields
                ?.accuracy
                ?.doubleValue !=
            null);
  }

  bool isCheckedOut(AttendanceDomain? data) {
    return (data?.fields?.checkoutTime?.timestampValue != null &&
        data?.fields?.checkoutTime?.timestampValue?.isNotEmpty == true &&
        data
                ?.fields
                ?.checkoutLocation
                ?.mapValue
                ?.fields
                ?.latitude
                ?.doubleValue !=
            null &&
        data
                ?.fields
                ?.checkoutLocation
                ?.mapValue
                ?.fields
                ?.longitude
                ?.doubleValue !=
            null &&
        data
                ?.fields
                ?.checkoutLocation
                ?.mapValue
                ?.fields
                ?.accuracy
                ?.doubleValue !=
            null);
  }

  void doCheckIn() async {
    showConfirmationDialog(
      context: context,
      message: 'Apakah Anda yakin ingin check in?',
      rightButtonBackgroundColor: Theme.of(context).colorScheme.tertiary,
      leftButtonBackgroundColor: Theme.of(context).colorScheme.error,
      onRightButtonTap: () async {
        // Post doc
        final result =
            await ref
                .read(updateAttendanceControllerProvider.notifier)
                .checkIn();

        // Check valid
        if (result is AsyncData) {
          showFeedbackDialog(
            context: context,
            type: 1,
            message: 'Check In Sukses',
          );
          // Invalidate provider
          ref.invalidate(getAttendanceDataControllerProvider);
        } else if (result is AsyncError) {
          final apiException = result.error as ApiException;
          showFeedbackDialog(
            context: context,
            type: 3,
            message: 'Terjadi Kesalahan ${apiException.message}',
          );
        } else {
          showFeedbackDialog(
            context: context,
            type: 3,
            message: 'Terjadi Kesalahan\nCheck In Gagal',
          );
        }
      },
      onLeftButtonTap: () {},
    );
  }

  void doCheckOut({
    required String checkInTime,
    required double checkInLatitude,
    required double checkInLongitude,
    required double checkInAccuracy,
  }) async {
    showConfirmationDialog(
      context: context,
      message: 'Apakah Anda yakin ingin check out?',
      rightButtonBackgroundColor: Theme.of(context).colorScheme.tertiary,
      leftButtonBackgroundColor: Theme.of(context).colorScheme.error,
      onRightButtonTap: () async {
        // Post doc
        final result = await ref
            .read(updateAttendanceControllerProvider.notifier)
            .checkOut(
              checkInTime: checkInTime,
              checkInLatitude: checkInLatitude,
              checkInLongitude: checkInLongitude,
              checkInAccuracy: checkInAccuracy,
            );

        // Check valid
        if (result is AsyncData) {
          showFeedbackDialog(
            context: context,
            type: 1,
            message: 'Check Out Success',
          );
          // Invalidate provider
          ref.invalidate(getAttendanceDataControllerProvider);
        } else if (result is AsyncError) {
          final apiException = result.error as ApiException;
          showFeedbackDialog(
            context: context,
            type: 3,
            message: 'Terjadi Kesalahan ${apiException.message}',
          );
        } else {
          showFeedbackDialog(
            context: context,
            type: 3,
            message: 'Terjadi Kesalahan\nCheck Out Gagal',
          );
        }
      },
      onLeftButtonTap: () {},
    );
  }

  void doSignOut() async {
    showConfirmationDialog(
      context: context,
      message: 'Apakah Anda yakin ingin log out?',
      rightButtonBackgroundColor: Theme.of(context).colorScheme.tertiary,
      leftButtonBackgroundColor: Theme.of(context).colorScheme.error,
      onRightButtonTap: () async {
        // Deactivate button
        setState(() {
          logOutButtonEnable = false;
        });

        // Clear user data
        clearUserDataInSp();

        // Show feedback
        showFeedbackDialog(
          context: context,
          type: 2,
          message: 'Log Out Sukses',
          onClose: () {
            setState(() {
              logOutButtonEnable = true;
            });
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        );
      },
      onLeftButtonTap: () {},
    );
  }
}
