import 'package:android_app/user_management_module/domain/entities/attendance_domain.dart';
import 'package:android_app/user_management_module/domain/repository/attendance_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_attendance_controller.g.dart';

@riverpod
class UpdateAttendanceController extends _$UpdateAttendanceController {
  @override
  AsyncValue<AttendanceDomain?> build() {
    return const AsyncLoading();
  }

  Future<AsyncValue<AttendanceDomain?>> checkIn() async {
    final repository = ref.watch(updateAttendanceDataRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.checkIn();

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }

  Future<AsyncValue<AttendanceDomain?>> checkOut({
    required String checkInTime,
    required double checkInLatitude,
    required double checkInLongitude,
    required double checkInAccuracy,
  }) async {
    final repository = ref.watch(updateAttendanceDataRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.checkOut(
      checkInTime: checkInTime,
      checkInLatitude: checkInLatitude,
      checkInLongitude: checkInLongitude,
      checkInAccuracy: checkInAccuracy,
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }
}
