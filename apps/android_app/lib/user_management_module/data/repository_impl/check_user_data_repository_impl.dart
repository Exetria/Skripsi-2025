import 'package:android_app/user_management_module/data/remote_datasource/check_user_data_remote_datasource.dart';
import 'package:android_app/user_management_module/domain/entities/check_user_data_domain.dart';
import 'package:android_app/user_management_module/domain/entities/refresh_token_domain.dart';
import 'package:android_app/user_management_module/domain/entities/sign_in_domain.dart';
import 'package:android_app/user_management_module/domain/repository/authentication_repository.dart';
import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';

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

  @override
  Future<Either<ApiException, RefreshTokenDomain?>> refreshToken({
    required String refreshToken,
  }) {
    throw UnimplementedError();
  }
}
