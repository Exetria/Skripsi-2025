import 'package:fpdart/fpdart.dart';
import 'package:windows_app/helper/apiHelper.dart';
import 'package:windows_app/user_management_module/data/remote_datasource/sign_in_remote_datasource.dart';
import 'package:windows_app/user_management_module/domain/entities/user_sign_in_domain.dart';
import 'package:windows_app/user_management_module/domain/repository/sign_in_repository.dart';

class SignInRepositoryImpl implements SignInRepository {
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
}
