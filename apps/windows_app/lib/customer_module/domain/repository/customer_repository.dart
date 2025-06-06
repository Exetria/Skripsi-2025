import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/customer_module/data/repository_impl/customer_list_repository_impl.dart';
import 'package:windows_app/customer_module/data/repository_impl/customer_request_list_repository_impl.dart';
import 'package:windows_app/customer_module/data/repository_impl/update_customer_repository_impl.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';
import 'package:windows_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';

abstract class CustomerRepository {
  Future<Either<ApiException, List<CustomerDomain>?>> getCustomerList();

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
  });

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
  });

  Future<Either<ApiException, CustomerDomain?>> deleteCustomer({
    required String customerId,
  });

  Future<Either<ApiException, List<CustomerRequestDomain>?>>
  getCustomerRequestList();

  Future<Either<ApiException, CustomerRequestDomain?>> rejectCustomerRequest({
    required CustomerRequestDomain? customerRequestData,
    required String? approvalReason,
  });
}

final CustomerListRepositoryProvider = Provider<CustomerRepository>(
  (ref) => CustomerListRepositoryImpl(),
);
final UpdateCustomerRepositoryProvider = Provider<CustomerRepository>(
  (ref) => UpdateCustomerRepositoryImpl(),
);
final CustomerRequestListRepositoryProvider = Provider<CustomerRepository>(
  (ref) => CustomerRequestListRepositoryImpl(),
);
