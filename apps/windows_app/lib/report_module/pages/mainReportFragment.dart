import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:windows_app/variables.dart';

class MainReportFragment extends StatelessWidget {
  const MainReportFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Charts Row
          Row(
            children: [
              // Circle Chart
              Expanded(
                child: buildCard(
                  height: ScreenUtil().screenHeight / 2,
                  width: ScreenUtil().screenWidth / 3,
                  title: 'Sales Distribution',
                  child: Center(
                    child: Placeholder(
                      fallbackHeight: 200.h,
                      fallbackWidth: 200.w,
                      color: Colors.blueAccent,
                      strokeWidth: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              // Regular Chart
              Expanded(
                child: buildCard(
                  height: ScreenUtil().screenHeight / 2,
                  width: ScreenUtil().screenWidth / 3,
                  title: 'Monthly Sales',
                  child: Center(
                    child: Placeholder(
                      fallbackHeight: 200.h,
                      color: Colors.green,
                      strokeWidth: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          // Map Section
          Expanded(
            child: buildCard(
              height: ScreenUtil().screenHeight / 2,
              width: ScreenUtil().screenWidth / 3,
              title: 'Salesperson Map Activity',
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: Colors.grey.shade200,
                ),
                child: const Center(
                  child: Text(
                    'Map Placeholder',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard({
    double height = 500,
    double width = 500,
    required String title,
    required Widget child,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(12.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text(title, style: titleStyle)),
            SizedBox(height: 8.h),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
