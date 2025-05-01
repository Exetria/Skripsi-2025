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
  productImages:
      json['product_images'] == null
          ? null
          : ProductImages.fromJson(
            json['product_images'] as Map<String, dynamic>,
          ),
  productName:
      json['product_name'] == null
          ? null
          : AddedBy.fromJson(json['product_name'] as Map<String, dynamic>),
  category:
      json['category'] == null
          ? null
          : AddedBy.fromJson(json['category'] as Map<String, dynamic>),
  available:
      json['available'] == null
          ? null
          : Available.fromJson(json['available'] as Map<String, dynamic>),
  description:
      json['description'] == null
          ? null
          : AddedBy.fromJson(json['description'] as Map<String, dynamic>),
  sizes:
      json['sizes'] == null
          ? null
          : Sizes.fromJson(json['sizes'] as Map<String, dynamic>),
  price:
      json['price'] == null
          ? null
          : MinimumOrder.fromJson(json['price'] as Map<String, dynamic>),
  minimumOrder:
      json['minimum_order'] == null
          ? null
          : MinimumOrder.fromJson(
            json['minimum_order'] as Map<String, dynamic>,
          ),
  unit:
      json['unit'] == null
          ? null
          : AddedBy.fromJson(json['unit'] as Map<String, dynamic>),
  quantityPerBox:
      json['quantity_per_box'] == null
          ? null
          : MinimumOrder.fromJson(
            json['quantity_per_box'] as Map<String, dynamic>,
          ),
  addedBy:
      json['added_by'] == null
          ? null
          : AddedBy.fromJson(json['added_by'] as Map<String, dynamic>),
  brand:
      json['brand'] == null
          ? null
          : AddedBy.fromJson(json['brand'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'product_images': instance.productImages,
      'product_name': instance.productName,
      'category': instance.category,
      'available': instance.available,
      'description': instance.description,
      'sizes': instance.sizes,
      'price': instance.price,
      'minimum_order': instance.minimumOrder,
      'unit': instance.unit,
      'quantity_per_box': instance.quantityPerBox,
      'added_by': instance.addedBy,
      'brand': instance.brand,
    };

_$AddedByImpl _$$AddedByImplFromJson(Map<String, dynamic> json) =>
    _$AddedByImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$AddedByImplToJson(_$AddedByImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

_$AvailableImpl _$$AvailableImplFromJson(Map<String, dynamic> json) =>
    _$AvailableImpl(booleanValue: json['booleanValue'] as bool?);

Map<String, dynamic> _$$AvailableImplToJson(_$AvailableImpl instance) =>
    <String, dynamic>{'booleanValue': instance.booleanValue};

_$MinimumOrderImpl _$$MinimumOrderImplFromJson(Map<String, dynamic> json) =>
    _$MinimumOrderImpl(integerValue: json['integerValue'] as String?);

Map<String, dynamic> _$$MinimumOrderImplToJson(_$MinimumOrderImpl instance) =>
    <String, dynamic>{'integerValue': instance.integerValue};

_$ProductImagesImpl _$$ProductImagesImplFromJson(Map<String, dynamic> json) =>
    _$ProductImagesImpl(
      arrayValue:
          json['arrayValue'] == null
              ? null
              : ProductImagesArrayValue.fromJson(
                json['arrayValue'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$$ProductImagesImplToJson(_$ProductImagesImpl instance) =>
    <String, dynamic>{'arrayValue': instance.arrayValue};

_$ProductImagesArrayValueImpl _$$ProductImagesArrayValueImplFromJson(
  Map<String, dynamic> json,
) => _$ProductImagesArrayValueImpl(
  values:
      (json['values'] as List<dynamic>?)
          ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$ProductImagesArrayValueImplToJson(
  _$ProductImagesArrayValueImpl instance,
) => <String, dynamic>{'values': instance.values};

_$ValueImpl _$$ValueImplFromJson(Map<String, dynamic> json) =>
    _$ValueImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$ValueImplToJson(_$ValueImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

_$SizesImpl _$$SizesImplFromJson(Map<String, dynamic> json) => _$SizesImpl(
  arrayValue:
      json['arrayValue'] == null
          ? null
          : SizesArrayValue.fromJson(
            json['arrayValue'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$SizesImplToJson(_$SizesImpl instance) =>
    <String, dynamic>{'arrayValue': instance.arrayValue};

_$SizesArrayValueImpl _$$SizesArrayValueImplFromJson(
  Map<String, dynamic> json,
) => _$SizesArrayValueImpl(
  values:
      (json['values'] as List<dynamic>?)
          ?.map((e) => AddedBy.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$SizesArrayValueImplToJson(
  _$SizesArrayValueImpl instance,
) => <String, dynamic>{'values': instance.values};
