import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/customer_module/data/remote_datasource/customer_request_list_remote_datasource.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';
import 'package:windows_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:windows_app/customer_module/domain/repository/customer_repository.dart';

class CustomerRequestListRepositoryImpl implements CustomerRepository {
  final remoteDataSource = CustomerRequestListRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<CustomerDomain>?>> getCustomerList() {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, List<CustomerRequestDomain>?>>
  getCustomerRequestList() async {
    final resp = await remoteProcess(remoteDataSource.getCustomerRequestList());

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
