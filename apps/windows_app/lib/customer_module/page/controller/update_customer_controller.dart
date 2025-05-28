import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';
import 'package:windows_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:windows_app/customer_module/domain/repository/customer_repository.dart';

part 'update_customer_controller.g.dart';

@Riverpod(keepAlive: true)
class UpdateCustomerController extends _$UpdateCustomerController {
  @override
  AsyncValue<CustomerDomain?> build() {
    return const AsyncLoading();
  }

  Future<AsyncValue<CustomerDomain?>> addCustomer({
    CustomerRequestDomain? customerRequestData,
    String approvalReason = '',

    // Company data
    required String companyName,
    required String companyAddress,
    required String companyPhoneNumber,
    required String companyEmail,
    required String companyTaxId,
    required double latitude,
    required double longitude,
    required double accuracy,
    required String companyStoreCondition,
    required File? companyStorePhoto,
    required String? companyStorePhotoUrl,
    required String subscriptionType,
    required String customerType,

    // PIC data
    required String picName,
    required String picAddress,
    required String picPhoneNumber,
    required String picNationalId,
    required File? picNationalIdPhoto,
    required String? picNationalIdPhotoUrl,
    required String picTaxId,
    required String picPosition,

    // Credit data
    required int creditLimit,
    required int creditPeriod,

    // Business metadata
    required String ownershipStatus,
    required String requestedBy,
    required String approvedBy,
    required String note,
    required bool isBlacklisted,
  }) async {
    final repository = ref.watch(UpdateCustomerRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.addCustomer(
      customerRequestData: customerRequestData,
      companyName: companyName,
      companyAddress: companyAddress,
      companyPhoneNumber: companyPhoneNumber,
      companyEmail: companyEmail,
      companyTaxId: companyTaxId,
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
      companyStoreCondition: companyStoreCondition,
      companyStorePhoto: companyStorePhoto,
      companyStorePhotoUrl: companyStorePhotoUrl,
      subscriptionType: subscriptionType,
      customerType: customerType,
      picName: picName,
      picAddress: picAddress,
      picPhoneNumber: picPhoneNumber,
      picNationalId: picNationalId,
      picNationalIdPhoto: picNationalIdPhoto,
      picNationalIdPhotoUrl: picNationalIdPhotoUrl,
      picTaxId: picTaxId,
      picPosition: picPosition,
      creditLimit: creditLimit,
      creditPeriod: creditPeriod,
      ownershipStatus: ownershipStatus,
      requestedBy: requestedBy,
      approvedBy: approvedBy,
      note: note,
      isBlacklisted: isBlacklisted,
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }

  Future<AsyncValue<CustomerDomain?>> updateCustomer({
    required String customerId,
    // Company data
    required String companyName,
    required String companyAddress,
    required String companyPhoneNumber,
    required String companyEmail,
    required String companyTaxId,
    required double latitude,
    required double longitude,
    required double accuracy,
    required String companyStoreCondition,
    required File? companyStorePhoto,
    required String? companyStorePhotoUrl,
    required String subscriptionType,
    required String customerType,

    // PIC data
    required String picName,
    required String picAddress,
    required String picPhoneNumber,
    required String picNationalId,
    required File? picNationalIdPhoto,
    required String? picNationalIdPhotoUrl,
    required String picTaxId,
    required String picPosition,

    // Credit data
    required int creditLimit,
    required int creditPeriod,

    // Business metadata
    required String ownershipStatus,
    required String requestedBy,
    required String approvedBy,
    required String note,
    required bool isBlacklisted,
  }) async {
    final repository = ref.watch(UpdateCustomerRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.updateCustomer(
      customerId: customerId,
      companyName: companyName,
      companyAddress: companyAddress,
      companyPhoneNumber: companyPhoneNumber,
      companyEmail: companyEmail,
      companyTaxId: companyTaxId,
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
      companyStoreCondition: companyStoreCondition,
      companyStorePhoto: companyStorePhoto,
      companyStorePhotoUrl: companyStorePhotoUrl,
      subscriptionType: subscriptionType,
      customerType: customerType,
      picName: picName,
      picAddress: picAddress,
      picPhoneNumber: picPhoneNumber,
      picNationalId: picNationalId,
      picNationalIdPhoto: picNationalIdPhoto,
      picNationalIdPhotoUrl: picNationalIdPhotoUrl,
      picTaxId: picTaxId,
      picPosition: picPosition,
      creditLimit: creditLimit,
      creditPeriod: creditPeriod,
      ownershipStatus: ownershipStatus,
      requestedBy: requestedBy,
      approvedBy: approvedBy,
      note: note,
      isBlacklisted: isBlacklisted,
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }

  Future<AsyncValue<CustomerRequestDomain?>> rejectCustomerRequest({
    required CustomerRequestDomain? customerRequestData,
    required String? approvalReason,
  }) async {
    final repository = ref.watch(UpdateCustomerRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.rejectCustomerRequest(
      customerRequestData: customerRequestData,
      approvalReason: approvalReason,
    );

    final AsyncValue<CustomerRequestDomain?> responseResult = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    state = const AsyncData(null);

    return responseResult;
  }
}
