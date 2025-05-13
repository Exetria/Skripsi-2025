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
    @JsonKey(name: 'customer_id') CreatedBy? customerId,
    @JsonKey(name: 'notes') CreatedBy? notes,
    @JsonKey(name: 'products') Products? products,
    @JsonKey(name: 'payment_method') CreatedBy? paymentMethod,
    @JsonKey(name: 'order_status') CreatedBy? orderStatus,
    @JsonKey(name: 'total_discount') SubtotalPrice? totalDiscount,
    @JsonKey(name: 'created_by') CreatedBy? createdBy,
    @JsonKey(name: 'subtotal_price') SubtotalPrice? subtotalPrice,
    @JsonKey(name: 'total_price') SubtotalPrice? totalPrice,
    @JsonKey(name: 'delivery_date') Date? deliveryDate,
    @JsonKey(name: 'payment_date') Date? paymentDate,
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class CreatedBy with _$CreatedBy {
  const factory CreatedBy({@JsonKey(name: 'stringValue') String? stringValue}) =
      _CreatedBy;

  factory CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$CreatedByFromJson(json);
}

@freezed
class Date with _$Date {
  const factory Date({
    @JsonKey(name: 'timestampValue') String? timestampValue,
  }) = _Date;

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);
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
    @JsonKey(name: 'unit_price') SubtotalPrice? unitPrice,
    @JsonKey(name: 'total_price') SubtotalPrice? totalPrice,
    @JsonKey(name: 'discount_amount') SubtotalPrice? discountAmount,
    @JsonKey(name: 'product_id') CreatedBy? productId,
    @JsonKey(name: 'quantity') SubtotalPrice? quantity,
    @JsonKey(name: 'discount_percentage')
    DiscountPercentage? discountPercentage,
  }) = _MapValueFields;

  factory MapValueFields.fromJson(Map<String, dynamic> json) =>
      _$MapValueFieldsFromJson(json);
}

@freezed
class SubtotalPrice with _$SubtotalPrice {
  const factory SubtotalPrice({
    @JsonKey(name: 'integerValue') String? integerValue,
  }) = _SubtotalPrice;

  factory SubtotalPrice.fromJson(Map<String, dynamic> json) =>
      _$SubtotalPriceFromJson(json);
}

@freezed
class DiscountPercentage with _$DiscountPercentage {
  const factory DiscountPercentage({
    @JsonKey(name: 'doubleValue') double? doubleValue,
  }) = _DiscountPercentage;

  factory DiscountPercentage.fromJson(Map<String, dynamic> json) =>
      _$DiscountPercentageFromJson(json);
}
