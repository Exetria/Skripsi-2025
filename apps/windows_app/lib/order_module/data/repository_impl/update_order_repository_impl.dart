import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/order_module/data/remote_datasource/update_order_remote_datasource.dart';
import 'package:windows_app/order_module/domain/entities/order_domain.dart';
import 'package:windows_app/order_module/domain/repository/order_repository.dart';

class UpdateOrderRepositoryImpl implements OrderRepository {
  final remoteDataSource = UpdateOrderRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<OrderDomain>?>> getOrderList() {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, OrderDomain>> createOrder({
    required String customerId,
    required String paymentMethod,
    required String notes,
    required List<Map<String, dynamic>> productDataList,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.createOrder(
        customerId: customerId,
        paymentMethod: paymentMethod,
        notes: notes,
        productDataList: productDataList,
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<ApiException, OrderDomain>> updateOrder({
    required OrderDomain oldData,
    required String notes,
    required String paymentMethod,
    required String orderStatus,
    required String? deliveryDate,
    required String? paymentDate,
    required List<Map<String, dynamic>> productDataList,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.updateOrder(
        oldData: oldData,
        notes: notes,
        paymentMethod: paymentMethod,
        orderStatus: orderStatus,
        deliveryDate: deliveryDate,
        paymentDate: paymentDate,
        productDataList: productDataList,
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
