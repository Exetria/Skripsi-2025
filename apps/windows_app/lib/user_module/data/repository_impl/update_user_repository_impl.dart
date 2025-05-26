import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/user_module/data/remote_datasource/update_user_remote_datasource.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';
import 'package:windows_app/user_module/domain/repository/user_repository.dart';

class UpdateUserRepositoryImpl implements UserRepository {
  final remoteDataSource = UpdateUserRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<UserDomain>?>> getUserList() {
    throw UnimplementedError();
  }

  @override
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
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.addUser(
        userPhoto: userPhoto,
        userName: userName,
        fullName: fullName,
        phoneNumber: phoneNumber,
        email: email,
        password: password,
        isAdmin: isAdmin,
        isActive: isActive,
        assignedCustomers: assignedCustomers,
        assignedProducts: assignedProducts,
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<ApiException, UserDomain?>> updateUser({
    required File? userPhoto,
    required String previousUserPhotoLink,
    required String userId,
    required String userName,
    required String fullName,
    required String phoneNumber,
    required String email,
    String? newPassword,
    required bool isAdmin,
    required bool isActive,
    required List<String> assignedCustomers,
    required List<String> assignedProducts,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.updateUser(
        userPhoto: userPhoto,
        previousUserPhotoLink: previousUserPhotoLink,
        userId: userId,
        userName: userName,
        fullName: fullName,
        phoneNumber: phoneNumber,
        email: email,
        newPassword: newPassword,
        isAdmin: isAdmin,
        isActive: isActive,
        assignedCustomers: assignedCustomers,
        assignedProducts: assignedProducts,
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
