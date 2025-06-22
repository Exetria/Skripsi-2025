import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/attendance_module/data/repository_impl/attendance_list_repository_impl.dart';
import 'package:windows_app/attendance_module/domain/entities/attendance_domain.dart';

abstract class AttendanceRepository {
  Future<Either<ApiException, List<AttendanceDomain>?>> getAttendanceList();
}

final AttendanceListRepositoryProvider = Provider<AttendanceRepository>(
  (ref) => AttendanceListRepositoryImpl(),
);
