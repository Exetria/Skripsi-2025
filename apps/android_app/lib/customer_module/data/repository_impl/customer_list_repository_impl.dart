import 'dart:io';

import 'package:android_app/customer_module/data/remote_datasource/customer_list_remote_datasource.dart';
import 'package:android_app/customer_module/domain/entities/customer_domain.dart';
import 'package:android_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:android_app/customer_module/domain/repository/customer_repository.dart';
import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';

class CustomerListRepositoryImpl implements CustomerRepository {
  final remoteDataSource = CustomerListRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<CustomerDomain>?>> getCustomerList() async {
    final resp = await remoteProcess(remoteDataSource.getCustomerList());

    return resp.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<ApiException, List<CustomerRequestDomain>?>>
  getCustomerRequestList() {
    throw UnimplementedError();
  }

  @override
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
  }) {
    throw UnimplementedError();
  }
}
