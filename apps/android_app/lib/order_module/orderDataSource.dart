import 'package:android_app/order_module/orderDomain.dart';
import 'package:android_app/variables.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final collectionProvider = Provider(
  (ref) => ref.watch(firestoreProvider).collection('orders'),
);

// Create a new order document (Dummy Data)
Future<void> createOrder(WidgetRef ref) async {
  final OrderDomain order = OrderDomain(
    customerId: 'CUST456',
    customerName: 'John Doe Store',
    salesId: 'SALES123',
    salesName: 'Alice Johnson',
    orderDate: DateTime.now().toIso8601String(),
    products: [
      {
        'product_id': 'PROD123',
        'product_name': 'Example Product',
        'quantity': 2,
        'price': 50000,
        'discount': 5000,
        'total': 95000,
      },
      {
        'product_id': 'PROD456',
        'product_name': 'Another Product',
        'quantity': 1,
        'price': 75000,
        'discount': 0,
        'total': 75000,
      },
    ],
    subtotal: 170000,
    discount: 5000,
    totalPrice: 165000,
    paymentStatus: 'Pending',
    orderStatus: 'Processing',
    paymentMethod: 'Cash',
    deliveryStatus: 'Pending',
    deliveryDate: null,
    notes: 'Urgent delivery requested.',
    createdAt: DateTime.now().toIso8601String(),
    updatedAt: DateTime.now().toIso8601String(),
  );

  await ref.read(collectionProvider).add(order.toJson());
}

// Read (Stream of all orders)
final ordersProvider = StreamProvider((ref) {
  return ref.watch(collectionProvider).snapshots();
});

// Read (Stream of orders for a specific salesperson)
final ordersBySalesProvider = StreamProvider.family((ref, String salesId) {
  return ref
      .watch(collectionProvider)
      .where('sales_id', isEqualTo: salesId)
      .snapshots();
});

// Read (Stream of orders for a specific customer)
final ordersByCustomerProvider = StreamProvider.family((
  ref,
  String customerId,
) {
  return ref
      .watch(collectionProvider)
      .where('customer_id', isEqualTo: customerId)
      .snapshots();
});

// Update an existing order document
Future<void> updateOrder(
  String docId,
  Map<String, dynamic> newData,
  WidgetRef ref,
) async {
  await ref.read(collectionProvider).doc(docId).update(newData);
}

// Delete an order document
Future<void> deleteOrder(String docId, WidgetRef ref) async {
  await ref.read(collectionProvider).doc(docId).delete();
}
