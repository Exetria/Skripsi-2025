import 'package:common_components/common_components.dart';
import 'package:windows_app/sales_module/domain/entities/sales_domain.dart';

abstract class SalesRemoteDatasource {
  Future<List<SalesDomain>> getSalesList();
}

class SalesRemoteDatasourceImpl implements SalesRemoteDatasource {
  @override
  Future<List<SalesDomain>> getSalesList() async {
    Map<String, dynamic> result = await apiCallGet(
      'https://firestore.googleapis.com/v1/projects/kost-noting/databases/(default)/documents/users',
    );

    final documents = (result['documents'] as List<dynamic>? ?? []);
    return documents
        .map((e) => SalesDomain.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
