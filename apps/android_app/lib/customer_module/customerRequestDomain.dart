import 'package:cloud_firestore/cloud_firestore.dart';

class CustomerRequestDomain {
  final String destination;
  final DateTime requestDate;
  final String carbonCopy;

  final String companyName;
  final String storeAddress;
  final double latitude;
  final double longitude;
  final String condition;
  final String storePhoto;

  final String phoneNumber;
  final String ownerName;
  final String ownerAddress;
  final String taxId;
  final String idCardNumber;
  final String idCardPhoto;

  final String ownership;
  final String subscriptionType;
  final int customerCode;

  final int paymentTerm;
  final String grade;
  final int creditLimit;
  final DateTime startDate;

  final String note;
  final String status; // 'pending', 'approved', 'rejected'
  final String salesId;
  final DateTime createdAt;
  final DateTime updatedAt;

  CustomerRequestDomain({
    required this.destination,
    required this.requestDate,
    required this.carbonCopy,
    required this.companyName,
    required this.storeAddress,
    required this.latitude,
    required this.longitude,
    required this.condition,
    required this.storePhoto,
    required this.phoneNumber,
    required this.ownerName,
    required this.ownerAddress,
    required this.taxId,
    required this.idCardNumber,
    required this.idCardPhoto,
    required this.ownership,
    required this.subscriptionType,
    required this.customerCode,
    required this.paymentTerm,
    required this.grade,
    required this.creditLimit,
    required this.startDate,
    required this.note,
    required this.status,
    required this.salesId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CustomerRequestDomain.fromJson(Map<String, dynamic> json) {
    return CustomerRequestDomain(
      destination: json['destination'] ?? '',
      requestDate: (json['request_date'] as Timestamp).toDate(),
      carbonCopy: json['carbon_copy'] ?? '',
      companyName: json['company_name'] ?? '',
      storeAddress: json['store_address'] ?? '',
      latitude: json['latitude'] ?? 0.0,
      longitude: json['longitude'] ?? 0.0,
      condition: json['condition'] ?? '',
      storePhoto: json['store_photo'] ?? '',
      phoneNumber: json['phone_number'] ?? '',
      ownerName: json['owner_name'] ?? '',
      ownerAddress: json['owner_address'] ?? '',
      taxId: json['tax_id'] ?? '',
      idCardNumber: json['id_card_number'] ?? '',
      idCardPhoto: json['id_card_photo'] ?? '',
      ownership: json['ownership'] ?? '',
      subscriptionType: json['subscription_type'] ?? '',
      customerCode: json['customer_code'] ?? 0,
      paymentTerm: json['payment_term'] ?? 0,
      grade: json['grade'] ?? '',
      creditLimit: json['credit_limit'] ?? 0,
      startDate: (json['start_date'] as Timestamp).toDate(),
      note: json['note'] ?? '',
      status: json['status'] ?? 'pending',
      salesId: json['sales_id'] ?? '',
      createdAt: (json['created_at'] as Timestamp).toDate(),
      updatedAt: (json['updated_at'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'destination': destination,
      'request_date': Timestamp.fromDate(requestDate),
      'carbon_copy': carbonCopy,
      'company_name': companyName,
      'store_address': storeAddress,
      'latitude': latitude,
      'longitude': longitude,
      'condition': condition,
      'store_photo': storePhoto,
      'phone_number': phoneNumber,
      'owner_name': ownerName,
      'owner_address': ownerAddress,
      'tax_id': taxId,
      'id_card_number': idCardNumber,
      'id_card_photo': idCardPhoto,
      'ownership': ownership,
      'subscription_type': subscriptionType,
      'customer_code': customerCode,
      'payment_term': paymentTerm,
      'grade': grade,
      'credit_limit': creditLimit,
      'start_date': Timestamp.fromDate(startDate),
      'note': note,
      'status': status,
      'sales_id': salesId,
      'created_at': Timestamp.fromDate(createdAt),
      'updated_at': Timestamp.fromDate(updatedAt),
    };
  }
}
