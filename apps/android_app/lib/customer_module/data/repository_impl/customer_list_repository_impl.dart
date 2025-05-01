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
}
