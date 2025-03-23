class ProductDomain {
  final String productName;
  final String description;
  final String category;
  final String brand;
  final String barcode;
  final int mic;
  final List<String> sizes;
  final int quantityPerBox;
  final String unit;
  final int price;
  final int discountPrice;
  final int stock;
  final int minimumStock;
  final String supplierId;
  final String lastRestocked;
  final List<String> productImages;
  final String specSheetUrl;
  final int totalSold;
  final double averageRating;
  final int reviewsCount;
  final String status;
  final String addedBy;
  final String createdAt;
  final String updatedAt;

  ProductDomain({
    required this.productName,
    required this.description,
    required this.category,
    required this.brand,
    required this.barcode,
    required this.mic,
    required this.sizes,
    required this.quantityPerBox,
    required this.unit,
    required this.price,
    required this.discountPrice,
    required this.stock,
    required this.minimumStock,
    required this.supplierId,
    required this.lastRestocked,
    required this.productImages,
    required this.specSheetUrl,
    required this.totalSold,
    required this.averageRating,
    required this.reviewsCount,
    required this.status,
    required this.addedBy,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductDomain.fromJson(Map<String, dynamic> json) {
    return ProductDomain(
      productName: json['product_name'] ?? '',
      description: json['description'] ?? '',
      category: json['category'] ?? '',
      brand: json['brand'] ?? '',
      barcode: json['barcode'] ?? '',
      mic: json['mic'] ?? 0,
      sizes: List<String>.from(json['sizes'] ?? []),
      quantityPerBox: json['quantity_per_box'] ?? 0,
      unit: json['unit'] ?? '',
      price: json['price'] ?? 0,
      discountPrice: json['discount_price'] ?? 0,
      stock: json['stock'] ?? 0,
      minimumStock: json['minimum_stock'] ?? 0,
      supplierId: json['supplier_id'] ?? '',
      lastRestocked: json['last_restocked'] ?? '',
      productImages: List<String>.from(json['product_images'] ?? []),
      specSheetUrl: json['spec_sheet_url'] ?? '',
      totalSold: json['total_sold'] ?? 0,
      averageRating: (json['average_rating'] ?? 0).toDouble(),
      reviewsCount: json['reviews_count'] ?? 0,
      status: json['status'] ?? 'Active',
      addedBy: json['added_by'] ?? '',
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product_name': productName,
      'description': description,
      'category': category,
      'brand': brand,
      'barcode': barcode,
      'mic': mic,
      'sizes': sizes,
      'quantity_per_box': quantityPerBox,
      'unit': unit,
      'price': price,
      'discount_price': discountPrice,
      'stock': stock,
      'minimum_stock': minimumStock,
      'supplier_id': supplierId,
      'last_restocked': lastRestocked,
      'product_images': productImages,
      'spec_sheet_url': specSheetUrl,
      'total_sold': totalSold,
      'average_rating': averageRating,
      'reviews_count': reviewsCount,
      'status': status,
      'added_by': addedBy,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
