import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_domain.freezed.dart';
part 'order_domain.g.dart';

@freezed
class OrderDomain with _$OrderDomain {
  const factory OrderDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _OrderDomain;

  factory OrderDomain.fromJson(Map<String, dynamic> json) =>
      _$OrderDomainFromJson(json);
}

@freezed
class Fields with _$Fields {
  const factory Fields({
    @JsonKey(name: 'total_price') SubtotalPrice? totalPrice,
    @JsonKey(name: 'delivery_date') DeliveryDate? deliveryDate,
    @JsonKey(name: 'order_status') CustomerId? orderStatus,
    @JsonKey(name: 'customer_id') CustomerId? customerId,
    @JsonKey(name: 'subtotal_price') SubtotalPrice? subtotalPrice,
    @JsonKey(name: 'payment_status') CustomerId? paymentStatus,
    @JsonKey(name: 'sales_id') CustomerId? salesId,
    @JsonKey(name: 'notes') CustomerId? notes,
    @JsonKey(name: 'payment_method') CustomerId? paymentMethod,
    @JsonKey(name: 'products') Products? products,
    @JsonKey(name: 'total_discount') SubtotalPrice? totalDiscount,
    @JsonKey(name: 'delivery_status') CustomerId? deliveryStatus,
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class CustomerId with _$CustomerId {
  const factory CustomerId({
    @JsonKey(name: 'stringValue') String? stringValue,
  }) = _CustomerId;

  factory CustomerId.fromJson(Map<String, dynamic> json) =>
      _$CustomerIdFromJson(json);
}

@freezed
class DeliveryDate with _$DeliveryDate {
  const factory DeliveryDate({
    @JsonKey(name: 'timestampValue') String? timestampValue,
  }) = _DeliveryDate;

  factory DeliveryDate.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDateFromJson(json);
}

@freezed
class Products with _$Products {
  const factory Products({
    @JsonKey(name: 'arrayValue') ArrayValue? arrayValue,
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}

@freezed
class ArrayValue with _$ArrayValue {
  const factory ArrayValue({@JsonKey(name: 'values') List<Value>? values}) =
      _ArrayValue;

  factory ArrayValue.fromJson(Map<String, dynamic> json) =>
      _$ArrayValueFromJson(json);
}

@freezed
class Value with _$Value {
  const factory Value({@JsonKey(name: 'mapValue') MapValue? mapValue}) = _Value;

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}

@freezed
class MapValue with _$MapValue {
  const factory MapValue({@JsonKey(name: 'fields') MapValueFields? fields}) =
      _MapValue;

  factory MapValue.fromJson(Map<String, dynamic> json) =>
      _$MapValueFromJson(json);
}

@freezed
class MapValueFields with _$MapValueFields {
  const factory MapValueFields({
    @JsonKey(name: 'product_id') CustomerId? productId,
    @JsonKey(name: 'quantity') SubtotalPrice? quantity,
    @JsonKey(name: 'discount') Discount? discount,
    @JsonKey(name: 'unit_price') SubtotalPrice? unitPrice,
    @JsonKey(name: 'total_price') SubtotalPrice? totalPrice,
  }) = _MapValueFields;

  factory MapValueFields.fromJson(Map<String, dynamic> json) =>
      _$MapValueFieldsFromJson(json);
}

@freezed
class Discount with _$Discount {
  const factory Discount({@JsonKey(name: 'doubleValue') int? doubleValue}) =
      _Discount;

  factory Discount.fromJson(Map<String, dynamic> json) =>
      _$DiscountFromJson(json);
}

@freezed
class SubtotalPrice with _$SubtotalPrice {
  const factory SubtotalPrice({
    @JsonKey(name: 'integerValue') String? integerValue,
  }) = _SubtotalPrice;

  factory SubtotalPrice.fromJson(Map<String, dynamic> json) =>
      _$SubtotalPriceFromJson(json);
}
