import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/product_module/domain/entities/product_domain.dart';

abstract class ProductListRemoteDatasource {
  Future<List<ProductDomain>> getProductList();
}

class ProductListRemoteDatasourceImpl implements ProductListRemoteDatasource {
  @override
  Future<List<ProductDomain>> getProductList() async {
    Map<String, dynamic> result = await apiCallGet(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/products',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
    );

    final documents = (result['documents'] as List<dynamic>? ?? []);

    return documents
        .map((e) => ProductDomain.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
