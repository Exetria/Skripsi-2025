import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/helper/apiHelper.dart';
import 'package:windows_app/user_management_module/data/repository_impl/sign_in_repository_impl.dart';
import 'package:windows_app/user_management_module/domain/entities/user_sign_in_domain.dart';

abstract class SignInRepository {
  Future<Either<ApiException, SignInDomain?>> signIn({
    required String email,
    required String password,
  });
}

final signInRepositoryProvider = Provider<SignInRepository>(
  (ref) => SignInRepositoryImpl(),
);
