import 'package:android_app/variables.dart';
import 'package:android_app/visit_module/pages/visitDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class VisitListFragment extends StatefulHookConsumerWidget {
  const VisitListFragment({super.key});

  @override
  ConsumerState<VisitListFragment> createState() => _VisitListFragment();
}

class _VisitListFragment extends ConsumerState<VisitListFragment> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final visits = [
      'Visit A',
      'Visit B',
      'Visit C',
    ]; // Replace this with real data

    return Column(
      children: [
        // Date Selector
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          margin: EdgeInsets.symmetric(vertical: 12.h),
          decoration: BoxDecoration(
            color: fillColor,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: dividerColor),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => changeDate(-1),
                icon: Icon(Icons.chevron_left, size: 28.sp, color: textColor),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    DateFormat.yMMMMd().format(selectedDate),
                    style: subtitleStyle,
                  ),
                ),
              ),
              IconButton(
                onPressed: () => changeDate(1),
                icon: Icon(Icons.chevron_right, size: 28.sp, color: textColor),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.h),

        // Visit List
        Expanded(
          child: ListView.separated(
            itemCount: visits.length,
            separatorBuilder: (_, __) => SizedBox(height: 12.h),
            itemBuilder: (context, index) {
              return Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 12.h,
                  ),
                  title: Text(visits[index], style: bodyStyle),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 16.sp,
                    color: unselectedItemColor,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VisitDetailPage(),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void changeDate(int offset) {
    setState(() {
      selectedDate = selectedDate.add(Duration(days: offset));
    });
  }
}
