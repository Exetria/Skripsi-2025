import 'package:android_app/customer_module/customerModel.dart';
import 'package:android_app/firebase/firebase_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final collectionProvider = Provider(
  (ref) => ref.watch(firestoreProvider).collection('customers'),
);

// Create a new customer document (Dummy Data)
Future<void> createCustomer(WidgetRef ref) async {
  final CustomerModel customerModel = CustomerModel(
    companyName: 'ABC Retail',
    storeName: 'ABC Store',
    storeAddress: '123 Market Street',
    phoneNumber: '08123456789',
    email: 'owner@abcstore.com',
    ownerName: 'John Doe',
    ownerAddress: '456 Residential Area',
    taxId: '123-456-789',
    idNumber: '987654321',
    idPhoto: 'https://storage.example.com/ktp.jpg',
    storePhoto: 'https://storage.example.com/store.jpg',
    ownership: 'Owned',
    businessType: 'Retail',
    subscriptionType: 'Regular',
    customerCode: 'CUST001',
    creditLimit: 5000000,
    outstandingBalance: 2500000,
    lastTransactionDate: '2025-03-23',
    preferredPaymentMethod: 'Bank Transfer',
    discountEligibility: true,
    salesRepId: 'REP123',
    visitFrequency: 'Monthly',
    purchaseHistory: ['Order001', 'Order002'],
    customerNotes: 'Prefers bulk orders',
    status: 'Active',
    latitude: -6.200000,
    longitude: 106.816666,
    deliveryZone: 'Jakarta',
    preferredDeliveryTime: 'Morning',
  );

  await ref.read(collectionProvider).add(customerModel.toJson());
}

// Read (Stream of customer documents)
final customersProvider = StreamProvider((ref) {
  return ref.watch(collectionProvider).snapshots();
});

// Update an existing customer document
Future<void> updateCustomer(
  String docId,
  Map<String, dynamic> newData,
  WidgetRef ref,
) async {
  await ref.read(collectionProvider).doc(docId).update(newData);
}

// Delete a customer document
Future<void> deleteCustomer(String docId, WidgetRef ref) async {
  await ref.read(collectionProvider).doc(docId).delete();
}
