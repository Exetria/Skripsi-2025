import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';
import 'package:windows_app/user_module/domain/repository/user_repository.dart';

part 'update_user_controller.g.dart';

@Riverpod(keepAlive: true)
class UpdateUserController extends _$UpdateUserController {
  @override
  AsyncValue<UserDomain?> build() {
    return const AsyncLoading();
  }

  Future<AsyncValue<UserDomain?>> addUser({
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
    final repository = ref.watch(UpdateUserRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.addUser(
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
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }

  Future<AsyncValue<UserDomain?>> updateUser({
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
    final repository = ref.watch(UpdateUserRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.updateUser(
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
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }
}
