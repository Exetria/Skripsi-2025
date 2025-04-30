import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/customer_module/data/repository_impl/customer_list_repository_impl.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';
import 'package:windows_app/customer_module/domain/entities/customer_request_domain.dart';

abstract class CustomerRepository {
  Future<Either<ApiException, List<CustomerDomain>?>> getCustomerList();
  Future<Either<ApiException, List<CustomerRequestDomain>?>>
  getCustomerRequestList();
}

final CustomerListRepositoryProvider = Provider<CustomerRepository>(
  (ref) => CustomerListRepositoryImpl(),
);
