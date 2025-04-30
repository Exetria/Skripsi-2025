import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/user_module/data/remote_datasource/user_remote_datasource.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';
import 'package:windows_app/user_module/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final remoteDataSource = UserRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<UserDomain>?>> getUserList() async {
    final resp = await remoteProcess(remoteDataSource.getUserList());

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
