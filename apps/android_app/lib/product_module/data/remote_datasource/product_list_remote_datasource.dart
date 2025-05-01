import 'package:android_app/product_module/domain/entities/product_domain.dart';
import 'package:common_components/common_components.dart';

abstract class ProductListRemoteDatasource {
  Future<List<ProductDomain>> getProductList();
}

class ProductListRemoteDatasourceImpl implements ProductListRemoteDatasource {
  @override
  Future<List<ProductDomain>> getProductList() async {
    List<ProductDomain> productsList = [];

    for (String documentId in userDataHelper?.assignedProducts ?? []) {
      // Call API for each document
      Map<String, dynamic> result = await apiCallGet(
        url:
            'https://firestore.googleapis.com/v1/projects/kost-noting/databases/(default)/documents/products/$documentId',
        headers: {
          'Authorization': 'Bearer ${userDataHelper?.idToken ?? ""}',
          'Content-Type': 'application/json',
        },
      );

      // Add ProductDomain to result
      ProductDomain instance = ProductDomain.fromJson(result);

      // Filter if product is inactive
      bool available = instance.fields?.available?.booleanValue ?? true;
      if (available) {
        productsList.add(instance);
      }
    }

    return productsList;
  }
}
