import 'package:android_app/product_module/productDomain.dart';
import 'package:android_app/variables.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final collectionProvider = Provider(
  (ref) => ref.watch(firestoreProvider).collection('products'),
);

// Create a new product document (Dummy Data)
Future<void> createProduct(WidgetRef ref) async {
  final ProductDomain productModel = ProductDomain(
    productName: 'Example Product',
    description: 'This is an example product description.',
    category: 'Electronics',
    brand: 'BrandX',
    barcode: '1234567890',
    mic: 1,
    sizes: ['Small', 'Medium', 'Large'],
    quantityPerBox: 10,
    unit: 'pcs',
    price: 50000,
    discountPrice: 45000,
    stock: 100,
    minimumStock: 10,
    supplierId: 'SUP123',
    lastRestocked: '2025-03-23',
    productImages: ['https://storage.example.com/product1.jpg'],
    specSheetUrl: 'https://storage.example.com/specs.pdf',
    totalSold: 500,
    averageRating: 4.5,
    reviewsCount: 120,
    status: 'Active',
    addedBy: 'admin_user',
    createdAt: DateTime.now().toIso8601String(),
    updatedAt: DateTime.now().toIso8601String(),
  );

  await ref.read(collectionProvider).add(productModel.toJson());
}

// Read (Stream of product documents)
final productsProvider = StreamProvider((ref) {
  return ref.watch(collectionProvider).snapshots();
});

// Update an existing product document
Future<void> updateProduct(
  String docId,
  Map<String, dynamic> newData,
  WidgetRef ref,
) async {
  await ref.read(collectionProvider).doc(docId).update(newData);
}

// Delete a product document
Future<void> deleteProduct(String docId, WidgetRef ref) async {
  await ref.read(collectionProvider).doc(docId).delete();
}
