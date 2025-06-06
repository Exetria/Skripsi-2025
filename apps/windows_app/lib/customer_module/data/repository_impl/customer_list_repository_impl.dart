import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/customer_module/data/remote_datasource/customer_list_remote_datasource.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';
import 'package:windows_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:windows_app/customer_module/domain/repository/customer_repository.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';

class CustomerListRepositoryImpl implements CustomerRepository {
  final remoteDataSource = CustomerListRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<CustomerDomain>?>> getCustomerList() async {
    final resp = await remoteProcess(remoteDataSource.getCustomerList());

    return resp.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<ApiException, CustomerDomain?>> addCustomer({
    CustomerRequestDomain? customerRequestData,
    UserDomain? userData,
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
  }) {
    throw UnimplementedError();
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
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, CustomerDomain?>> deleteCustomer({
    required String customerId,
  }) {
    throw UnimplementedError();
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
  }) {
    throw UnimplementedError();
  }
}
