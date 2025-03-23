class VisitDomain {
  final String salesId;
  final String customerId;
  final String customerName;
  final String visitDate;
  final String? checkInTime;
  final String? checkOutTime;
  final Map<String, double>? location;
  final String visitStatus;
  final String? notes;
  final String? orderId;
  final String createdAt;
  final String updatedAt;

  VisitDomain({
    required this.salesId,
    required this.customerId,
    required this.customerName,
    required this.visitDate,
    this.checkInTime,
    this.checkOutTime,
    this.location,
    required this.visitStatus,
    this.notes,
    this.orderId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory VisitDomain.fromJson(Map<String, dynamic> json) {
    return VisitDomain(
      salesId: json['sales_id'] ?? '',
      customerId: json['customer_id'] ?? '',
      customerName: json['customer_name'] ?? '',
      visitDate: json['visit_date'] ?? '',
      checkInTime: json['check_in_time'],
      checkOutTime: json['check_out_time'],
      location:
          json['location'] != null
              ? Map<String, double>.from(json['location'])
              : null,
      visitStatus: json['visit_status'] ?? 'Planned',
      notes: json['notes'],
      orderId: json['order_id'],
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sales_id': salesId,
      'customer_id': customerId,
      'customer_name': customerName,
      'visit_date': visitDate,
      'check_in_time': checkInTime,
      'check_out_time': checkOutTime,
      'location': location,
      'visit_status': visitStatus,
      'notes': notes,
      'order_id': orderId,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
