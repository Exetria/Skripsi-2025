import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/sales_module/data/repository_impl/sales_repository_impl.dart';
import 'package:windows_app/sales_module/domain/entities/sales_domain.dart';

abstract class SalesRepository {
  Future<Either<ApiException, List<SalesDomain>?>> getSalesList();
}

final SalesRepositoryProvider = Provider<SalesRepository>(
  (ref) => SalesRepositoryImpl(),
);
