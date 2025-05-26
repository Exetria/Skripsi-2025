import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/product_module/domain/entities/product_domain.dart';

abstract class UpdateProductRemoteDatasource {
  Future<ProductDomain> addProduct({
    required File? productImage,
    required String productName,
    required String brand,
    required String companyCode,
    required int productPrice,
    required int unitPerPackage,
    required String description,
    required bool available,
    required Map<String, String>? attributes,
  });
  Future<ProductDomain> updateProduct({
    required String productId,
    required File? productImage,
    required String previousProductImageLink,
    required String productName,
    required String brand,
    required String companyCode,
    required int productPrice,
    required int unitPerPackage,
    required String description,
    required bool available,
    required Map<String, String>? attributes,
  });
}

class UpdateProductRemoteDatasourceImpl
    implements UpdateProductRemoteDatasource {
  @override
  Future<ProductDomain> addProduct({
    required File? productImage,
    required String productName,
    required String brand,
    required String companyCode,
    required int productPrice,
    required int unitPerPackage,
    required String description,
    required bool available,
    required Map<String, String>? attributes,
  }) async {
    final attributeMap = _createAttributesMap(attributes);
    String productImageLink = '';

    // Upload product image
    if (productImage != null) {
      final productPhotoResponse = await uploadFileToStorage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['PROJECT_ID']}.appspot.com/o?uploadType=media&name=product/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
        headers: {
          'Authorization': 'Bearer ${userDataHelper?.idToken}',
          'Content-Type': 'application/json',
        },
        file: productImage,
      );
      final String productFileName = productPhotoResponse['name'].replaceAll(
        '/',
        '%2F',
      );
      productImageLink =
          'https://firebasestorage.googleapis.com/v0/b/${productPhotoResponse['bucket']}/o/$productFileName?alt=media&token=${productPhotoResponse['downloadTokens']}';
    }

    Map<String, dynamic> result = await apiCallPost(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/products',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          'added_by': {'stringValue': userDataHelper?.uid},
          'product_name': {'stringValue': productName},
          'available': {'booleanValue': available},
          'units_per_package': {'integerValue': unitPerPackage.toString()},
          'attributes': {
            'mapValue': {'fields': attributeMap},
          },
          'description': {'stringValue': description},
          'price': {'integerValue': productPrice.toString()},
          'company_code': {'stringValue': companyCode},
          'brand': {'stringValue': brand},
          'product_image': {'stringValue': productImageLink},
        },
      },
    );

    return ProductDomain.fromJson(result);
  }

  @override
  Future<ProductDomain> updateProduct({
    required String productId,
    required File? productImage,
    required String previousProductImageLink,
    required String productName,
    required String brand,
    required String companyCode,
    required int productPrice,
    required int unitPerPackage,
    required String description,
    required bool available,
    required Map<String, String>? attributes,
  }) async {
    final attributeMap = _createAttributesMap(attributes);
    String productImageLink = '';

    // Upload product image
    if (productImage != null) {
      final productPhotoResponse = await uploadFileToStorage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['PROJECT_ID']}.appspot.com/o?uploadType=media&name=product/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
        headers: {
          'Authorization': 'Bearer ${userDataHelper?.idToken}',
          'Content-Type': 'application/json',
        },
        file: productImage,
      );
      final String productFileName = productPhotoResponse['name'].replaceAll(
        '/',
        '%2F',
      );
      productImageLink =
          'https://firebasestorage.googleapis.com/v0/b/${productPhotoResponse['bucket']}/o/$productFileName?alt=media&token=${productPhotoResponse['downloadTokens']}';
    } else {
      productImageLink = previousProductImageLink;
    }

    Map<String, dynamic> result = await apiCallPatch(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/products/$productId',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          'added_by': {'stringValue': userDataHelper?.uid},
          'product_name': {'stringValue': productName},
          'available': {'booleanValue': available},
          'units_per_package': {'integerValue': unitPerPackage.toString()},
          'attributes': {
            'mapValue': {'fields': attributeMap},
          },
          'description': {'stringValue': description},
          'price': {'integerValue': productPrice.toString()},
          'company_code': {'stringValue': companyCode},
          'brand': {'stringValue': brand},
          'product_image': {'stringValue': productImageLink},
        },
      },
    );

    return ProductDomain.fromJson(result);
  }

  Map<String, dynamic> _createAttributesMap(Map<String, String>? attributes) {
    if (attributes == null || attributes.isEmpty) {
      return {};
    }

    return Map.fromEntries(
      attributes.entries.map(
        (entry) => MapEntry(entry.key, {'stringValue': entry.value}),
      ),
    );
  }
}
