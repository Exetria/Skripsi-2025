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

  Future<AsyncValue<UserDomain?>> updateUser(
    //   {
    //   required File? productImage,
    //   required String productName,
    //   required String brand,
    //   required String companyCode,
    //   required int productPrice,
    //   required int unitPerPackage,
    //   required String description,
    //   required bool available,
    //   required Map<String, String>? attributes,
    // }
  ) async {
    final repository = ref.watch(UpdateUserRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.updateUser(
      // productImage: productImage,
      // productName: productName,
      // brand: brand,
      // companyCode: companyCode,
      // productPrice: productPrice,
      // unitPerPackage: unitPerPackage,
      // description: description,
      // available: available,
      // attributes: attributes,
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }
}
