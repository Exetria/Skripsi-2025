import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/user_module/data/repository_impl/update_user_repository_impl.dart';
import 'package:windows_app/user_module/data/repository_impl/user_list_repository_impl.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';

abstract class UserRepository {
  Future<Either<ApiException, List<UserDomain>?>> getUserList();
  Future<Either<ApiException, UserDomain?>> addUser({
    required File? userPhoto,
    required String userName,
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required bool isAdmin,
    required bool isActive,
    required List<String> assignedCustomers,
    required List<String> assignedProducts,
  });
  Future<Either<ApiException, UserDomain?>> updateUser();
}

final UserListRepositoryProvider = Provider<UserRepository>(
  (ref) => UserListRepositoryImpl(),
);

final UpdateUserRepositoryProvider = Provider<UserRepository>(
  (ref) => UpdateUserRepositoryImpl(),
);
