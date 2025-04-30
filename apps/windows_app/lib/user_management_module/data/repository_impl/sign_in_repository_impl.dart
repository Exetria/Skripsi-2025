import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/user_management_module/data/remote_datasource/sign_in_remote_datasource.dart';
import 'package:windows_app/user_management_module/domain/entities/check_user_data_domain.dart';
import 'package:windows_app/user_management_module/domain/entities/refresh_token_domain.dart';
import 'package:windows_app/user_management_module/domain/entities/sign_in_domain.dart';
import 'package:windows_app/user_management_module/domain/repository/authentication_repository.dart';

class SignInRepositoryImpl implements AuthenticationRepository {
  final remoteDataSource = SignInRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, SignInDomain?>> signIn({
    required String email,
    required String password,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.signIn(email: email, password: password),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<ApiException, CheckUserDataDomain?>> checkUserData({
    required String idToken,
    required String uid,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, RefreshTokenDomain?>> refreshToken({
    required String refreshToken,
  }) {
    throw UnimplementedError();
  }
}
