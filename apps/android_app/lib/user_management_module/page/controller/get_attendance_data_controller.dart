import 'package:android_app/user_management_module/domain/entities/attendance_domain.dart';
import 'package:android_app/user_management_module/domain/repository/attendance_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_attendance_data_controller.g.dart';

@Riverpod(keepAlive: true)
class GetAttendanceDataController extends _$GetAttendanceDataController {
  @override
  Future<AttendanceDomain?> build() async {
    final repository = ref.watch(getAttendanceDataRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getAttendanceData();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state.value;
  }
}
