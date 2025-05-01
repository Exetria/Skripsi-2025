import 'package:android_app/order_module/data/remote_datasource/order_list_remote_datasource.dart';
import 'package:android_app/order_module/domain/entities/order_domain.dart';
import 'package:android_app/order_module/domain/repository/order_repository.dart';
import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';

class OrderListRepositoryImpl implements OrderListRepository {
  final remoteDataSource = OrderListRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<OrderDomain>?>> getOrderList() async {
    final resp = await remoteProcess(remoteDataSource.getOrderList());

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
