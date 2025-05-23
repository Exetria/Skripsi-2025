import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/order_module/data/repository_impl/order_list_repository_impl.dart';
// import 'package:windows_app/order_module/data/repository_impl/update_order_repository_impl.dart';
import 'package:windows_app/order_module/domain/entities/order_domain.dart';

abstract class OrderRepository {
  Future<Either<ApiException, List<OrderDomain>?>> getOrderList();
  Future<Either<ApiException, OrderDomain>> createOrder({
    required String customerId,
    required String paymentMethod,
    required String notes,
    required List<Map<String, dynamic>> productDataList,
  });
  // Future<Either<ApiException, OrderDomain>> updateOrder({
  //   required OrderDomain oldData,
  //   required String notes,
  //   required String paymentMethod,
  //   required List<Map<String, dynamic>> productDataList,
  // });
}

final OrderListRepositoryProvider = Provider<OrderRepository>(
  (ref) => OrderListRepositoryImpl(),
);

// final UpdateOrderRepositoryProvider = Provider<OrderRepository>(
//   (ref) => UpdateOrderRepositoryImpl(),
// );
