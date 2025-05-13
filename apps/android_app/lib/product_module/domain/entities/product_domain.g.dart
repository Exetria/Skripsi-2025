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
              : Fields.fromJson(json['fields'] as Map<String, dynamic>),
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

_$FieldsImpl _$$FieldsImplFromJson(Map<String, dynamic> json) => _$FieldsImpl(
  unitsPerPackage:
      json['units_per_package'] == null
          ? null
          : Price.fromJson(json['units_per_package'] as Map<String, dynamic>),
  addedBy:
      json['added_by'] == null
          ? null
          : AddedBy.fromJson(json['added_by'] as Map<String, dynamic>),
  companyCode:
      json['company_code'] == null
          ? null
          : AddedBy.fromJson(json['company_code'] as Map<String, dynamic>),
  productImage:
      json['product_image'] == null
          ? null
          : ProductImage.fromJson(
            json['product_image'] as Map<String, dynamic>,
          ),
  price:
      json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
  available:
      json['available'] == null
          ? null
          : Available.fromJson(json['available'] as Map<String, dynamic>),
  description:
      json['description'] == null
          ? null
          : AddedBy.fromJson(json['description'] as Map<String, dynamic>),
  attributes:
      json['attributes'] == null
          ? null
          : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
  productName:
      json['product_name'] == null
          ? null
          : AddedBy.fromJson(json['product_name'] as Map<String, dynamic>),
  brand:
      json['brand'] == null
          ? null
          : AddedBy.fromJson(json['brand'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'units_per_package': instance.unitsPerPackage,
      'added_by': instance.addedBy,
      'company_code': instance.companyCode,
      'product_image': instance.productImage,
      'price': instance.price,
      'available': instance.available,
      'description': instance.description,
      'attributes': instance.attributes,
      'product_name': instance.productName,
      'brand': instance.brand,
    };

_$AddedByImpl _$$AddedByImplFromJson(Map<String, dynamic> json) =>
    _$AddedByImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$AddedByImplToJson(_$AddedByImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

_$AttributesImpl _$$AttributesImplFromJson(Map<String, dynamic> json) =>
    _$AttributesImpl(
      mapValue:
          json['mapValue'] == null
              ? null
              : MapValue.fromJson(json['mapValue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttributesImplToJson(_$AttributesImpl instance) =>
    <String, dynamic>{'mapValue': instance.mapValue};

_$MapValueImpl _$$MapValueImplFromJson(Map<String, dynamic> json) =>
    _$MapValueImpl(fields: json['fields'] as Map<String, dynamic>?);

Map<String, dynamic> _$$MapValueImplToJson(_$MapValueImpl instance) =>
    <String, dynamic>{'fields': instance.fields};

_$MapValueFieldsImpl _$$MapValueFieldsImplFromJson(Map<String, dynamic> json) =>
    _$MapValueFieldsImpl(
      color:
          json['Color'] == null
              ? null
              : AddedBy.fromJson(json['Color'] as Map<String, dynamic>),
      material:
          json['Material'] == null
              ? null
              : AddedBy.fromJson(json['Material'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MapValueFieldsImplToJson(
  _$MapValueFieldsImpl instance,
) => <String, dynamic>{'Color': instance.color, 'Material': instance.material};

_$AvailableImpl _$$AvailableImplFromJson(Map<String, dynamic> json) =>
    _$AvailableImpl(booleanValue: json['booleanValue'] as bool?);

Map<String, dynamic> _$$AvailableImplToJson(_$AvailableImpl instance) =>
    <String, dynamic>{'booleanValue': instance.booleanValue};

_$PriceImpl _$$PriceImplFromJson(Map<String, dynamic> json) =>
    _$PriceImpl(integerValue: json['integerValue'] as String?);

Map<String, dynamic> _$$PriceImplToJson(_$PriceImpl instance) =>
    <String, dynamic>{'integerValue': instance.integerValue};

_$ProductImageImpl _$$ProductImageImplFromJson(Map<String, dynamic> json) =>
    _$ProductImageImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$ProductImageImplToJson(_$ProductImageImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};
