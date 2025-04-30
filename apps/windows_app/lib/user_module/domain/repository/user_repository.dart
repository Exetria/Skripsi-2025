import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/user_module/data/repository_impl/user_repository_impl.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';

abstract class UserRepository {
  Future<Either<ApiException, List<UserDomain>?>> getUserList();
}

final UserRepositoryProvider = Provider<UserRepository>(
  (ref) => UserRepositoryImpl(),
);
