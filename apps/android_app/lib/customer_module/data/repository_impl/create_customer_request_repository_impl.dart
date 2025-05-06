import 'dart:io';

import 'package:android_app/customer_module/data/remote_datasource/create_customer_request_remote_datasource.dart';
import 'package:android_app/customer_module/domain/entities/customer_domain.dart';
import 'package:android_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:android_app/customer_module/domain/repository/customer_repository.dart';
import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';

class CreateCustomerRequestRepositoryImpl implements CustomerRepository {
  final remoteDataSource = CreateCustomerRequestDatasourceImpl();

  @override
  Future<Either<ApiException, List<CustomerDomain>?>> getCustomerList() {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, List<CustomerRequestDomain>?>>
  getCustomerRequestList() {
    throw UnimplementedError();
  }

  @override
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
    required String company_tax_id,
    required String company_email,
    required String company_store_condition,

    required String owner_name,
    required String owner_address,
    required String owner_phone_number,
    required String owner_tax_id,
    required String owner_national_id,
    required String ownership_status,

    required String note,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.createCustomerRequest(
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

        owner_name: owner_name,
        owner_address: owner_address,
        owner_phone_number: owner_phone_number,
        owner_tax_id: owner_tax_id,
        owner_national_id: owner_national_id,
        ownership_status: ownership_status,

        note: note,
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
