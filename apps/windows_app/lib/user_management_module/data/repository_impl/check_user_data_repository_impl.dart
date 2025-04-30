import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/user_management_module/data/remote_datasource/check_user_data_remote_datasource.dart';
import 'package:windows_app/user_management_module/domain/entities/check_user_data_domain.dart';
import 'package:windows_app/user_management_module/domain/entities/sign_in_domain.dart';
import 'package:windows_app/user_management_module/domain/repository/authentication_repository.dart';

class CheckUserDataRepositoryImpl implements AuthenticationRepository {
  final remoteDataSource = CheckUserDataRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, SignInDomain?>> signIn({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, CheckUserDataDomain?>> checkUserData({
    required String idToken,
    required String uid,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.checkUserData(idToken: idToken, uid: uid),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
