import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/customer_module/data/repository_impl/customer_list_repository_impl.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';

abstract class CustomerRepository {
  Future<Either<ApiException, List<CustomerDomain>?>> getCustomerList();
}

final CustomerListRepositoryProvider = Provider<CustomerRepository>(
  (ref) => CustomerListRepositoryImpl(),
);
