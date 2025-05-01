import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_domain.freezed.dart';
part 'product_domain.g.dart';

@freezed
class ProductDomain with _$ProductDomain {
  const factory ProductDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _ProductDomain;

  factory ProductDomain.fromJson(Map<String, dynamic> json) =>
      _$ProductDomainFromJson(json);
}

@freezed
class Fields with _$Fields {
  const factory Fields({
    @JsonKey(name: 'product_images') ProductImages? productImages,
    @JsonKey(name: 'product_name') AddedBy? productName,
    @JsonKey(name: 'category') AddedBy? category,
    @JsonKey(name: 'available') Available? available,
    @JsonKey(name: 'description') AddedBy? description,
    @JsonKey(name: 'sizes') Sizes? sizes,
    @JsonKey(name: 'price') MinimumOrder? price,
    @JsonKey(name: 'minimum_order') MinimumOrder? minimumOrder,
    @JsonKey(name: 'unit') AddedBy? unit,
    @JsonKey(name: 'quantity_per_box') MinimumOrder? quantityPerBox,
    @JsonKey(name: 'added_by') AddedBy? addedBy,
    @JsonKey(name: 'brand') AddedBy? brand,
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class AddedBy with _$AddedBy {
  const factory AddedBy({@JsonKey(name: 'stringValue') String? stringValue}) =
      _AddedBy;

  factory AddedBy.fromJson(Map<String, dynamic> json) =>
      _$AddedByFromJson(json);
}

@freezed
class Available with _$Available {
  const factory Available({@JsonKey(name: 'booleanValue') bool? booleanValue}) =
      _Available;

  factory Available.fromJson(Map<String, dynamic> json) =>
      _$AvailableFromJson(json);
}

@freezed
class MinimumOrder with _$MinimumOrder {
  const factory MinimumOrder({
    @JsonKey(name: 'integerValue') String? integerValue,
  }) = _MinimumOrder;

  factory MinimumOrder.fromJson(Map<String, dynamic> json) =>
      _$MinimumOrderFromJson(json);
}

@freezed
class ProductImages with _$ProductImages {
  const factory ProductImages({
    @JsonKey(name: 'arrayValue') ProductImagesArrayValue? arrayValue,
  }) = _ProductImages;

  factory ProductImages.fromJson(Map<String, dynamic> json) =>
      _$ProductImagesFromJson(json);
}

@freezed
class ProductImagesArrayValue with _$ProductImagesArrayValue {
  const factory ProductImagesArrayValue({
    @JsonKey(name: 'values') List<Value>? values,
  }) = _ProductImagesArrayValue;

  factory ProductImagesArrayValue.fromJson(Map<String, dynamic> json) =>
      _$ProductImagesArrayValueFromJson(json);
}

@freezed
class Value with _$Value {
  const factory Value({@JsonKey(name: 'stringValue') String? stringValue}) =
      _Value;

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}

@freezed
class Sizes with _$Sizes {
  const factory Sizes({
    @JsonKey(name: 'arrayValue') SizesArrayValue? arrayValue,
  }) = _Sizes;

  factory Sizes.fromJson(Map<String, dynamic> json) => _$SizesFromJson(json);
}

@freezed
class SizesArrayValue with _$SizesArrayValue {
  const factory SizesArrayValue({
    @JsonKey(name: 'values') List<AddedBy>? values,
  }) = _SizesArrayValue;

  factory SizesArrayValue.fromJson(Map<String, dynamic> json) =>
      _$SizesArrayValueFromJson(json);
}
