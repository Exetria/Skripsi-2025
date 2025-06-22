import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/attendance_module/data/remote_datasource/attendance_list_remote_datasource.dart';
import 'package:windows_app/attendance_module/domain/entities/attendance_domain.dart';
import 'package:windows_app/attendance_module/domain/repository/attendance_list_repository.dart';

class AttendanceListRepositoryImpl implements AttendanceRepository {
  final remoteDataSource = AttendanceListRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<AttendanceDomain>?>>
  getAttendanceList() async {
    final resp = await remoteProcess(remoteDataSource.getAttendanceList());

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
