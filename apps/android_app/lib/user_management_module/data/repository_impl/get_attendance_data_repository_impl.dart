import 'package:android_app/user_management_module/data/remote_datasource/get_attendance_data_remote_datasource.dart';
import 'package:android_app/user_management_module/domain/entities/attendance_domain.dart';
import 'package:android_app/user_management_module/domain/repository/attendance_repository.dart';
import 'package:common_components/common_components.dart';
import 'package:fpdart/src/either.dart';

class GetAttendanceDataRepositoryImpl implements AttendanceRepository {
  final remoteDataSource = GetAttendanceDataRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, AttendanceDomain?>> getAttendanceData() async {
    final resp = await remoteProcess(remoteDataSource.getAttendanceData());

    return resp.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<ApiException, AttendanceDomain?>> checkIn() {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, AttendanceDomain?>> checkOut({
    required String checkInTime,
    required double checkInLatitude,
    required double checkInLongitude,
    required double checkInAccuracy,
  }) {
    throw UnimplementedError();
  }
}
