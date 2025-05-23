import 'dart:io';

import 'package:android_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:android_app/customer_module/domain/repository/customer_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_customer_request_controller.g.dart';

@riverpod
class CreateCustomerRequestController
    extends _$CreateCustomerRequestController {
  @override
  AsyncValue<CustomerRequestDomain?> build() {
    return const AsyncLoading();
  }

  Future<AsyncValue<CustomerRequestDomain?>> createCustomerRequest({
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
    required String pic_national_id,
    required String pic_tax_id,
    required String pic_position,
    required String ownership_status,

    required String credit_period,
    required String credit_limit,

    required String note,
  }) async {
    final repository = ref.watch(CreateCustomerRequestRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.createCustomerRequest(
      storePhoto: storePhoto,
      ktpPhoto: ktpPhoto,
      customer_type: customer_type,
      subscription_type: subscription_type,

      request_destination: request_destination,
      carbon_copy: carbon_copy,

      company_name: company_name,
      company_address: company_address,
      company_phone_number: company_phone_number,
      company_tax_id: company_tax_id,
      company_email: company_email,
      company_store_condition: company_store_condition,

      pic_name: pic_name,
      pic_address: pic_address,
      pic_phone_number: pic_phone_number,
      pic_tax_id: pic_tax_id,
      pic_national_id: pic_national_id,
      pic_position: pic_position,
      ownership_status: ownership_status,

      credit_period: credit_period,
      credit_limit: credit_limit,

      note: note,
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }
}
