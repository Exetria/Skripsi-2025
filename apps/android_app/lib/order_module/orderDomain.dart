class OrderDomain {
  final String customerId;
  final String customerName;
  final String salesId;
  final String salesName;
  final String orderDate;
  final List<Map<String, dynamic>> products;
  final int subtotal;
  final int discount;
  final int totalPrice;
  final String paymentStatus;
  final String orderStatus;
  final String paymentMethod;
  final String deliveryStatus;
  final String? deliveryDate;
  final String? notes;
  final String createdAt;
  final String updatedAt;

  OrderDomain({
    required this.customerId,
    required this.customerName,
    required this.salesId,
    required this.salesName,
    required this.orderDate,
    required this.products,
    required this.subtotal,
    required this.discount,
    required this.totalPrice,
    required this.paymentStatus,
    required this.orderStatus,
    required this.paymentMethod,
    required this.deliveryStatus,
    this.deliveryDate,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Convert Firestore document to OrderDomain
  factory OrderDomain.fromJson(Map<String, dynamic> json) {
    return OrderDomain(
      customerId: json['customer_id'] ?? '',
      customerName: json['customer_name'] ?? '',
      salesId: json['sales_id'] ?? '',
      salesName: json['sales_name'] ?? '',
      orderDate: json['order_date'] ?? '',
      products: List<Map<String, dynamic>>.from(json['products'] ?? []),
      subtotal: json['subtotal'] ?? 0,
      discount: json['discount'] ?? 0,
      totalPrice: json['total_price'] ?? 0,
      paymentStatus: json['payment_status'] ?? 'Pending',
      orderStatus: json['order_status'] ?? 'Pending',
      paymentMethod: json['payment_method'] ?? 'Cash',
      deliveryStatus: json['delivery_status'] ?? 'Pending',
      deliveryDate: json['delivery_date'],
      notes: json['notes'],
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
    );
  }

  /// Convert OrderDomain to JSON (for Firestore)
  Map<String, dynamic> toJson() {
    return {
      'customer_id': customerId,
      'customer_name': customerName,
      'sales_id': salesId,
      'sales_name': salesName,
      'order_date': orderDate,
      'products': products,
      'subtotal': subtotal,
      'discount': discount,
      'total_price': totalPrice,
      'payment_status': paymentStatus,
      'order_status': orderStatus,
      'payment_method': paymentMethod,
      'delivery_status': deliveryStatus,
      'delivery_date': deliveryDate,
      'notes': notes,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
