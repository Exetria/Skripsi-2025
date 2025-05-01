import 'package:android_app/order_module/data/repository_impl/order_list_repository_impl.dart';
import 'package:android_app/order_module/domain/entities/order_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

abstract class OrderListRepository {
  Future<Either<ApiException, List<OrderDomain>?>> getOrderList();
}

final OrderListRepositoryProvider = Provider<OrderListRepository>(
  (ref) => OrderListRepositoryImpl(),
);
