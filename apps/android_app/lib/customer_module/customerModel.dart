class CustomerModel {
  final String companyName;
  final String storeName;
  final String storeAddress;
  final String phoneNumber;
  final String email;
  final String ownerName;
  final String ownerAddress;
  final String taxId;
  final String idNumber;
  final String idPhoto;
  final String storePhoto;
  final String ownership; // "Owned" / "Rented"
  final String businessType; // "Retail" / "Wholesale" / etc.
  final String subscriptionType; // "Regular" / "VIP" / etc.
  final String customerCode;
  final double creditLimit;
  final double outstandingBalance;
  final String lastTransactionDate;
  final String preferredPaymentMethod; // "Cash" / "Credit" / etc.
  final bool discountEligibility;
  final String salesRepId;
  final String visitFrequency;
  final List<String> purchaseHistory;
  final String customerNotes;
  final String status; // "Active" / "Inactive" / "Blacklisted"
  final double latitude;
  final double longitude;
  final String deliveryZone;
  final String preferredDeliveryTime;

  CustomerModel({
    required this.companyName,
    required this.storeName,
    required this.storeAddress,
    required this.phoneNumber,
    required this.email,
    required this.ownerName,
    required this.ownerAddress,
    required this.taxId,
    required this.idNumber,
    required this.idPhoto,
    required this.storePhoto,
    required this.ownership,
    required this.businessType,
    required this.subscriptionType,
    required this.customerCode,
    required this.creditLimit,
    required this.outstandingBalance,
    required this.lastTransactionDate,
    required this.preferredPaymentMethod,
    required this.discountEligibility,
    required this.salesRepId,
    required this.visitFrequency,
    required this.purchaseHistory,
    required this.customerNotes,
    required this.status,
    required this.latitude,
    required this.longitude,
    required this.deliveryZone,
    required this.preferredDeliveryTime,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      companyName: json['company_name'] ?? '',
      storeName: json['store_name'] ?? '',
      storeAddress: json['store_address'] ?? '',
      phoneNumber: json['phone_number'] ?? '',
      email: json['email'] ?? '',
      ownerName: json['owner_name'] ?? '',
      ownerAddress: json['owner_address'] ?? '',
      taxId: json['tax_id'] ?? '',
      idNumber: json['id_number'] ?? '',
      idPhoto: json['id_photo'] ?? '',
      storePhoto: json['store_photo'] ?? '',
      ownership: json['ownership'] ?? '',
      businessType: json['business_type'] ?? '',
      subscriptionType: json['subscription_type'] ?? '',
      customerCode: json['customer_code'] ?? '',
      creditLimit: (json['credit_limit'] ?? 0).toDouble(),
      outstandingBalance: (json['outstanding_balance'] ?? 0).toDouble(),
      lastTransactionDate: json['last_transaction_date'] ?? '',
      preferredPaymentMethod: json['preferred_payment_method'] ?? '',
      discountEligibility: json['discount_eligibility'] ?? false,
      salesRepId: json['sales_rep_id'] ?? '',
      visitFrequency: json['visit_frequency'] ?? '',
      purchaseHistory: List<String>.from(json['purchase_history'] ?? []),
      customerNotes: json['customer_notes'] ?? '',
      status: json['status'] ?? 'Active',
      latitude: (json['latitude'] ?? 0).toDouble(),
      longitude: (json['longitude'] ?? 0).toDouble(),
      deliveryZone: json['delivery_zone'] ?? '',
      preferredDeliveryTime: json['preferred_delivery_time'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'company_name': companyName,
      'store_name': storeName,
      'store_address': storeAddress,
      'phone_number': phoneNumber,
      'email': email,
      'owner_name': ownerName,
      'owner_address': ownerAddress,
      'tax_id': taxId,
      'id_number': idNumber,
      'id_photo': idPhoto,
      'store_photo': storePhoto,
      'ownership': ownership,
      'business_type': businessType,
      'subscription_type': subscriptionType,
      'customer_code': customerCode,
      'credit_limit': creditLimit,
      'outstanding_balance': outstandingBalance,
      'last_transaction_date': lastTransactionDate,
      'preferred_payment_method': preferredPaymentMethod,
      'discount_eligibility': discountEligibility,
      'sales_rep_id': salesRepId,
      'visit_frequency': visitFrequency,
      'purchase_history': purchaseHistory,
      'customer_notes': customerNotes,
      'status': status,
      'latitude': latitude,
      'longitude': longitude,
      'delivery_zone': deliveryZone,
      'preferred_delivery_time': preferredDeliveryTime,
    };
  }
}
