import 'package:android_app/user_management_module/data/repository_impl/attendance_repository_impl.dart';
import 'package:android_app/user_management_module/data/repository_impl/get_attendance_data_repository_impl.dart';
import 'package:android_app/user_management_module/domain/entities/attendance_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

abstract class AttendanceRepository {
  Future<Either<ApiException, AttendanceDomain?>> getAttendanceData();

  Future<Either<ApiException, AttendanceDomain?>> checkIn();

  Future<Either<ApiException, AttendanceDomain?>> checkOut({
    required String checkInTime,
    required double checkInLatitude,
    required double checkInLongitude,
    required double checkInAccuracy,
  });
}

final getAttendanceDataRepositoryProvider = Provider<AttendanceRepository>(
  (ref) => GetAttendanceDataRepositoryImpl(),
);

final updateAttendanceDataRepositoryProvider = Provider<AttendanceRepository>(
  (ref) => UpdateAttendanceDataRepositoryImpl(),
);
