import 'package:android_app/user_management_module/data/remote_datasource/update_attendance_remote_datasource.dart';
import 'package:android_app/user_management_module/domain/entities/attendance_domain.dart';
import 'package:android_app/user_management_module/domain/repository/attendance_repository.dart';
import 'package:common_components/common_components.dart';
import 'package:fpdart/src/either.dart';

class UpdateAttendanceDataRepositoryImpl implements AttendanceRepository {
  final remoteDataSource = UpdateAttendanceDataRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, AttendanceDomain?>> getAttendanceData() {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, AttendanceDomain?>> checkIn() async {
    final resp = await remoteProcess(remoteDataSource.checkIn());

    return resp.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<ApiException, AttendanceDomain?>> checkOut({
    required String checkInTime,
    required double checkInLatitude,
    required double checkInLongitude,
    required double checkInAccuracy,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.checkOut(
        checkinTime: checkInTime,
        checkinLatitude: checkInLatitude,
        checkinLongitude: checkInLongitude,
        checkinAccuracy: checkInAccuracy,
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
