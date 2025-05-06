import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_domain.freezed.dart';
part 'product_domain.g.dart';

@freezed
class ProductDomain with _$ProductDomain {
  const factory ProductDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') ProductDomainFields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _ProductDomain;

  factory ProductDomain.fromJson(Map<String, dynamic> json) =>
      _$ProductDomainFromJson(json);
}

@freezed
class ProductDomainFields with _$ProductDomainFields {
  const factory ProductDomainFields({
    @JsonKey(name: 'brand') AddedBy? brand,
    @JsonKey(name: 'product_name') AddedBy? productName,
    @JsonKey(name: 'company_code') AddedBy? companyCode,
    @JsonKey(name: 'description') AddedBy? description,
    @JsonKey(name: 'added_by') AddedBy? addedBy,
    @JsonKey(name: 'variants') Variants? variants,
  }) = _ProductDomainFields;

  factory ProductDomainFields.fromJson(Map<String, dynamic> json) =>
      _$ProductDomainFieldsFromJson(json);
}

@freezed
class AddedBy with _$AddedBy {
  const factory AddedBy({@JsonKey(name: 'stringValue') String? stringValue}) =
      _AddedBy;

  factory AddedBy.fromJson(Map<String, dynamic> json) =>
      _$AddedByFromJson(json);
}

@freezed
class Variants with _$Variants {
  const factory Variants({
    @JsonKey(name: 'arrayValue') ArrayValue? arrayValue,
  }) = _Variants;

  factory Variants.fromJson(Map<String, dynamic> json) =>
      _$VariantsFromJson(json);
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
  const factory Value({@JsonKey(name: 'mapValue') ValueMapValue? mapValue}) =
      _Value;

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}

@freezed
class ValueMapValue with _$ValueMapValue {
  const factory ValueMapValue({@JsonKey(name: 'fields') PurpleFields? fields}) =
      _ValueMapValue;

  factory ValueMapValue.fromJson(Map<String, dynamic> json) =>
      _$ValueMapValueFromJson(json);
}

@freezed
class PurpleFields with _$PurpleFields {
  const factory PurpleFields({
    @JsonKey(name: 'price') Price? price,
    @JsonKey(name: 'attributes') Attributes? attributes,
    @JsonKey(name: 'variant_image') Image? variantImage,
    @JsonKey(name: 'variant_name') AddedBy? variantName,
    @JsonKey(name: 'units_per_package') Price? unitsPerPackage,
    @JsonKey(name: 'available') Available? available,
    @JsonKey(name: 'image') Image? image,
  }) = _PurpleFields;

  factory PurpleFields.fromJson(Map<String, dynamic> json) =>
      _$PurpleFieldsFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  const factory Attributes({
    @JsonKey(name: 'mapValue') Map<String, dynamic>? mapValue,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}

@freezed
class Available with _$Available {
  const factory Available({@JsonKey(name: 'booleanValue') bool? booleanValue}) =
      _Available;

  factory Available.fromJson(Map<String, dynamic> json) =>
      _$AvailableFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({@JsonKey(name: 'stringValue') String? stringValue}) =
      _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Price with _$Price {
  const factory Price({@JsonKey(name: 'integerValue') String? integerValue}) =
      _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}
