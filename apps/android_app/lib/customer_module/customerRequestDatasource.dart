import 'package:android_app/customer_module/customerRequestModel.dart';
import 'package:android_app/variables.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final collectionProvider = Provider(
  (ref) => ref.watch(firestoreProvider).collection('customer_requests'),
);

// Create a new customer request (Dummy Data)
Future<void> createCustomerRequest(WidgetRef ref) async {
  final CustomerRequestDomain request = CustomerRequestDomain(
    destination: 'PT Example Company',
    requestDate: DateTime.now(),
    carbonCopy: 'example@company.com',
    companyName: 'Example Store',
    storeAddress: 'Jl. Contoh No. 123, Jakarta',
    latitude: -6.2088,
    longitude: 106.8456,
    condition: 'Good',
    storePhoto: 'https://storage.example.com/store.jpg',
    phoneNumber: '08123456789',
    ownerName: 'John Doe',
    ownerAddress: 'Jl. Owner No. 45, Jakarta',
    taxId: '12.345.678.9-012.345',
    idCardNumber: '3210123456789001',
    idCardPhoto: 'https://storage.example.com/id_card.jpg',
    ownership: 'Owned',
    subscriptionType: 'Retail',
    customerCode: 12345,
    paymentTerm: 30,
    grade: 'A',
    creditLimit: 50000000,
    startDate: DateTime.now(),
    note: 'New customer with high potential',
    status: 'pending',
    salesId: 'sales_001',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  await ref.read(collectionProvider).add(request.toJson());
}

// Read (Stream of customer requests)
final customerRequestsProvider = StreamProvider((ref) {
  return ref.watch(collectionProvider).snapshots();
});

// Update an existing customer request
Future<void> updateCustomerRequest(
  String docId,
  Map<String, dynamic> newData,
  WidgetRef ref,
) async {
  await ref.read(collectionProvider).doc(docId).update(newData);
}

// Delete a customer request
Future<void> deleteCustomerRequest(String docId, WidgetRef ref) async {
  await ref.read(collectionProvider).doc(docId).delete();
}

// Read requests by a specific sales ID
final customerRequestsBySalesProvider = StreamProvider.family((
  ref,
  String salesId,
) {
  return ref
      .watch(collectionProvider)
      .where('sales_id', isEqualTo: salesId)
      .snapshots();
});
