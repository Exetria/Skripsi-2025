import 'dart:io';

import 'package:android_app/customer_module/data/repository_impl/create_customer_request_repository_impl.dart';
import 'package:android_app/customer_module/data/repository_impl/customer_list_repository_impl.dart';
import 'package:android_app/customer_module/data/repository_impl/customer_request_list_repository_impl.dart';
import 'package:android_app/customer_module/domain/entities/customer_domain.dart';
import 'package:android_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

abstract class CustomerRepository {
  Future<Either<ApiException, List<CustomerDomain>?>> getCustomerList();
  Future<Either<ApiException, List<CustomerRequestDomain>?>>
  getCustomerRequestList();
  Future<Either<ApiException, CustomerRequestDomain?>> createCustomerRequest({
    required File storePhoto,
    required File ktpPhoto,
    required String customer_type,
    required String subscription_type,

    required String request_destination,
    required String carbon_copy,

    required String company_name,
    required String company_address,
    required String company_phone_number,
    required String company_email,
    required String company_store_condition,

    required String owner_name,
    required String owner_address,
    required String owner_phone_number,
    required String owner_tax_id,
    required String owner_national_id,
    required String ownership_status,

    required String note,
  });
}

final CustomerListRepositoryProvider = Provider<CustomerRepository>(
  (ref) => CustomerListRepositoryImpl(),
);
final CustomerRequestListRepositoryProvider = Provider<CustomerRepository>(
  (ref) => CustomerRequestListRepositoryImpl(),
);
final CreateCustomerRequestRepositoryProvider = Provider<CustomerRepository>(
  (ref) => CreateCustomerRequestRepositoryImpl(),
);
