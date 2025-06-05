import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/report_module/domain/entities/attendance_domain.dart';
import 'package:windows_app/report_module/domain/repository/attendance_list_repository.dart';

part 'attendance_list_controller.g.dart';

@Riverpod(keepAlive: true)
class AttendanceListController extends _$AttendanceListController {
  List<AttendanceDomain>? _attendanceList;

  @override
  FutureOr<List<AttendanceDomain>?> build() async {
    final repository = ref.watch(AttendanceListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getAttendanceList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );
    _attendanceList = state.value;
    return state.value;
  }

  void sortOrderByDate() {
    if (_attendanceList == null) return;

    _attendanceList?.sort((a, b) {
      final dateA = DateTime.tryParse(a.createTime ?? '');
      final dateB = DateTime.tryParse(b.createTime ?? '');

      if (dateA == null && dateB == null) return 0;
      if (dateA == null) return 1;
      if (dateB == null) return -1;

      return dateB.compareTo(dateA);
    });
  }

  void filterOrderByDate(DateTime targetDate) {
    if (_attendanceList == null) return;

    final normalizedTargetDate = DateTime(
      targetDate.year,
      targetDate.month,
      targetDate.day,
    );

    final filteredList =
        _attendanceList?.where((order) {
          final parsed = DateTime.tryParse(order.createTime ?? '');
          if (parsed == null) return false;

          final orderDate = DateTime(parsed.year, parsed.month, parsed.day);
          return orderDate == normalizedTargetDate;
        }).toList() ??
        [];

    state = AsyncData(filteredList);
  }

  void resetSearch() {
    if (_attendanceList == null) {
      return;
    }

    state = AsyncData(_attendanceList);
  }
}
