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
    required File? storePhoto,
    required File? ktpPhoto,
    required String customer_type,
    required String subscription_type,

    required String request_destination,
    required String carbon_copy,

    required String company_name,
    required String company_address,
    required String company_phone_number,
    required String company_tax_id,
    required String company_email,
    required String company_store_condition,

    required String pic_name,
    required String pic_address,
    required String pic_phone_number,
    required String pic_tax_id,
    required String pic_national_id,
    required String pic_position,
    required String ownership_status,

    required String credit_period,
    required String credit_limit,

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
