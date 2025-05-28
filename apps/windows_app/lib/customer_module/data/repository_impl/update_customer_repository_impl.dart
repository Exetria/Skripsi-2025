import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/customer_module/data/remote_datasource/update_customer_remote_datasource.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';
import 'package:windows_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:windows_app/customer_module/domain/repository/customer_repository.dart';

class UpdateCustomerRepositoryImpl implements CustomerRepository {
  final remoteDataSource = UpdateCustomerRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<CustomerDomain>?>> getCustomerList() {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, CustomerDomain?>> addCustomer({
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
    final resp = await remoteProcess(
      remoteDataSource.addCustomer(
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
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<ApiException, CustomerDomain?>> updateCustomer({
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
    final resp = await remoteProcess(
      remoteDataSource.updateCustomer(
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
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<ApiException, List<CustomerRequestDomain>?>>
  getCustomerRequestList() {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, CustomerRequestDomain?>> rejectCustomerRequest({
    required CustomerRequestDomain? customerRequestData,
    required String? approvalReason,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.updateCustomerRequest(
        customerRequestData: customerRequestData,
        approvalReason: approvalReason,
        approved: false,
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
