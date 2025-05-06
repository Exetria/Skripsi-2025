// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDomainImpl _$$ProductDomainImplFromJson(Map<String, dynamic> json) =>
    _$ProductDomainImpl(
      name: json['name'] as String?,
      fields:
          json['fields'] == null
              ? null
              : ProductDomainFields.fromJson(
                json['fields'] as Map<String, dynamic>,
              ),
      createTime: json['createTime'] as String?,
      updateTime: json['updateTime'] as String?,
    );

Map<String, dynamic> _$$ProductDomainImplToJson(_$ProductDomainImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fields': instance.fields,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
    };

_$ProductDomainFieldsImpl _$$ProductDomainFieldsImplFromJson(
  Map<String, dynamic> json,
) => _$ProductDomainFieldsImpl(
  brand:
      json['brand'] == null
          ? null
          : AddedBy.fromJson(json['brand'] as Map<String, dynamic>),
  productName:
      json['product_name'] == null
          ? null
          : AddedBy.fromJson(json['product_name'] as Map<String, dynamic>),
  companyCode:
      json['company_code'] == null
          ? null
          : AddedBy.fromJson(json['company_code'] as Map<String, dynamic>),
  description:
      json['description'] == null
          ? null
          : AddedBy.fromJson(json['description'] as Map<String, dynamic>),
  addedBy:
      json['added_by'] == null
          ? null
          : AddedBy.fromJson(json['added_by'] as Map<String, dynamic>),
  variants:
      json['variants'] == null
          ? null
          : Variants.fromJson(json['variants'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ProductDomainFieldsImplToJson(
  _$ProductDomainFieldsImpl instance,
) => <String, dynamic>{
  'brand': instance.brand,
  'product_name': instance.productName,
  'company_code': instance.companyCode,
  'description': instance.description,
  'added_by': instance.addedBy,
  'variants': instance.variants,
};

_$AddedByImpl _$$AddedByImplFromJson(Map<String, dynamic> json) =>
    _$AddedByImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$AddedByImplToJson(_$AddedByImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

_$VariantsImpl _$$VariantsImplFromJson(Map<String, dynamic> json) =>
    _$VariantsImpl(
      arrayValue:
          json['arrayValue'] == null
              ? null
              : ArrayValue.fromJson(json['arrayValue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VariantsImplToJson(_$VariantsImpl instance) =>
    <String, dynamic>{'arrayValue': instance.arrayValue};

_$ArrayValueImpl _$$ArrayValueImplFromJson(Map<String, dynamic> json) =>
    _$ArrayValueImpl(
      values:
          (json['values'] as List<dynamic>?)
              ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$ArrayValueImplToJson(_$ArrayValueImpl instance) =>
    <String, dynamic>{'values': instance.values};

_$ValueImpl _$$ValueImplFromJson(Map<String, dynamic> json) => _$ValueImpl(
  mapValue:
      json['mapValue'] == null
          ? null
          : ValueMapValue.fromJson(json['mapValue'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ValueImplToJson(_$ValueImpl instance) =>
    <String, dynamic>{'mapValue': instance.mapValue};

_$ValueMapValueImpl _$$ValueMapValueImplFromJson(Map<String, dynamic> json) =>
    _$ValueMapValueImpl(
      fields:
          json['fields'] == null
              ? null
              : PurpleFields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ValueMapValueImplToJson(_$ValueMapValueImpl instance) =>
    <String, dynamic>{'fields': instance.fields};

_$PurpleFieldsImpl _$$PurpleFieldsImplFromJson(Map<String, dynamic> json) =>
    _$PurpleFieldsImpl(
      price:
          json['price'] == null
              ? null
              : Price.fromJson(json['price'] as Map<String, dynamic>),
      attributes:
          json['attributes'] == null
              ? null
              : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      variantImage:
          json['variant_image'] == null
              ? null
              : Image.fromJson(json['variant_image'] as Map<String, dynamic>),
      variantName:
          json['variant_name'] == null
              ? null
              : AddedBy.fromJson(json['variant_name'] as Map<String, dynamic>),
      unitsPerPackage:
          json['units_per_package'] == null
              ? null
              : Price.fromJson(
                json['units_per_package'] as Map<String, dynamic>,
              ),
      available:
          json['available'] == null
              ? null
              : Available.fromJson(json['available'] as Map<String, dynamic>),
      image:
          json['image'] == null
              ? null
              : Image.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PurpleFieldsImplToJson(_$PurpleFieldsImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'attributes': instance.attributes,
      'variant_image': instance.variantImage,
      'variant_name': instance.variantName,
      'units_per_package': instance.unitsPerPackage,
      'available': instance.available,
      'image': instance.image,
    };

_$AttributesImpl _$$AttributesImplFromJson(Map<String, dynamic> json) =>
    _$AttributesImpl(mapValue: json['mapValue'] as Map<String, dynamic>?);

Map<String, dynamic> _$$AttributesImplToJson(_$AttributesImpl instance) =>
    <String, dynamic>{'mapValue': instance.mapValue};

_$AvailableImpl _$$AvailableImplFromJson(Map<String, dynamic> json) =>
    _$AvailableImpl(booleanValue: json['booleanValue'] as bool?);

Map<String, dynamic> _$$AvailableImplToJson(_$AvailableImpl instance) =>
    <String, dynamic>{'booleanValue': instance.booleanValue};

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) =>
    _$ImageImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

_$PriceImpl _$$PriceImplFromJson(Map<String, dynamic> json) =>
    _$PriceImpl(integerValue: json['integerValue'] as String?);

Map<String, dynamic> _$$PriceImplToJson(_$PriceImpl instance) =>
    <String, dynamic>{'integerValue': instance.integerValue};
