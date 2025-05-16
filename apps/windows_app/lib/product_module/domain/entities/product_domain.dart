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
    @JsonKey(name: 'units_per_package') Price? unitsPerPackage,
    @JsonKey(name: 'added_by') AddedBy? addedBy,
    @JsonKey(name: 'company_code') AddedBy? companyCode,
    @JsonKey(name: 'product_image') ProductImage? productImage,
    @JsonKey(name: 'price') Price? price,
    @JsonKey(name: 'available') Available? available,
    @JsonKey(name: 'description') AddedBy? description,
    @JsonKey(name: 'attributes') Attributes? attributes,
    @JsonKey(name: 'product_name') AddedBy? productName,
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
class Attributes with _$Attributes {
  const factory Attributes({@JsonKey(name: 'mapValue') MapValue? mapValue}) =
      _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}

@freezed
class MapValue with _$MapValue {
  const factory MapValue({
    @JsonKey(name: 'fields') Map<String, dynamic>? fields,
  }) = _MapValue;

  factory MapValue.fromJson(Map<String, dynamic> json) =>
      _$MapValueFromJson(json);
}

@freezed
class MapValueFields with _$MapValueFields {
  const factory MapValueFields({
    @JsonKey(name: 'Color') AddedBy? color,
    @JsonKey(name: 'Material') AddedBy? material,
  }) = _MapValueFields;

  factory MapValueFields.fromJson(Map<String, dynamic> json) =>
      _$MapValueFieldsFromJson(json);
}

@freezed
class Available with _$Available {
  const factory Available({@JsonKey(name: 'booleanValue') bool? booleanValue}) =
      _Available;

  factory Available.fromJson(Map<String, dynamic> json) =>
      _$AvailableFromJson(json);
}

@freezed
class Price with _$Price {
  const factory Price({@JsonKey(name: 'integerValue') String? integerValue}) =
      _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}

@freezed
class ProductImage with _$ProductImage {
  const factory ProductImage({
    @JsonKey(name: 'stringValue') String? stringValue,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);
}
