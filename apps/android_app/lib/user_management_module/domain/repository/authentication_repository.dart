import 'package:android_app/user_management_module/data/repository_impl/check_user_data_repository_impl.dart';
import 'package:android_app/user_management_module/data/repository_impl/refresh_token_repository_impl.dart';
import 'package:android_app/user_management_module/data/repository_impl/sign_in_repository_impl.dart';
import 'package:android_app/user_management_module/domain/entities/check_user_data_domain.dart';
import 'package:android_app/user_management_module/domain/entities/refresh_token_domain.dart';
import 'package:android_app/user_management_module/domain/entities/sign_in_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthenticationRepository {
  Future<Either<ApiException, SignInDomain?>> signIn({
    required String email,
    required String password,
  });

  Future<Either<ApiException, CheckUserDataDomain?>> checkUserData({
    required String idToken,
    required String uid,
  });

  Future<Either<ApiException, RefreshTokenDomain?>> refreshToken({
    required String refreshToken,
  });
}

final signInRepositoryProvider = Provider<AuthenticationRepository>(
  (ref) => SignInRepositoryImpl(),
);

final checkUserRepositoryProvider = Provider<AuthenticationRepository>(
  (ref) => CheckUserDataRepositoryImpl(),
);

final refreshTokenRepositoryProvider = Provider<AuthenticationRepository>(
  (ref) => RefreshTokenRepositoryImpl(),
);
