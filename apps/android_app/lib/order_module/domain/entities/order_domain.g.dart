// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDomainImpl _$$OrderDomainImplFromJson(Map<String, dynamic> json) =>
    _$OrderDomainImpl(
      name: json['name'] as String?,
      fields:
          json['fields'] == null
              ? null
              : Fields.fromJson(json['fields'] as Map<String, dynamic>),
      createTime: json['createTime'] as String?,
      updateTime: json['updateTime'] as String?,
    );

Map<String, dynamic> _$$OrderDomainImplToJson(_$OrderDomainImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fields': instance.fields,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
    };

_$FieldsImpl _$$FieldsImplFromJson(Map<String, dynamic> json) => _$FieldsImpl(
  customerId:
      json['customer_id'] == null
          ? null
          : CreatedBy.fromJson(json['customer_id'] as Map<String, dynamic>),
  notes:
      json['notes'] == null
          ? null
          : CreatedBy.fromJson(json['notes'] as Map<String, dynamic>),
  products:
      json['products'] == null
          ? null
          : Products.fromJson(json['products'] as Map<String, dynamic>),
  paymentMethod:
      json['payment_method'] == null
          ? null
          : CreatedBy.fromJson(json['payment_method'] as Map<String, dynamic>),
  orderStatus:
      json['order_status'] == null
          ? null
          : CreatedBy.fromJson(json['order_status'] as Map<String, dynamic>),
  totalDiscount:
      json['total_discount'] == null
          ? null
          : SubtotalPrice.fromJson(
            json['total_discount'] as Map<String, dynamic>,
          ),
  createdBy:
      json['created_by'] == null
          ? null
          : CreatedBy.fromJson(json['created_by'] as Map<String, dynamic>),
  subtotalPrice:
      json['subtotal_price'] == null
          ? null
          : SubtotalPrice.fromJson(
            json['subtotal_price'] as Map<String, dynamic>,
          ),
  totalPrice:
      json['total_price'] == null
          ? null
          : SubtotalPrice.fromJson(json['total_price'] as Map<String, dynamic>),
  deliveryDate:
      json['delivery_date'] == null
          ? null
          : Date.fromJson(json['delivery_date'] as Map<String, dynamic>),
  paymentDate:
      json['payment_date'] == null
          ? null
          : Date.fromJson(json['payment_date'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'notes': instance.notes,
      'products': instance.products,
      'payment_method': instance.paymentMethod,
      'order_status': instance.orderStatus,
      'total_discount': instance.totalDiscount,
      'created_by': instance.createdBy,
      'subtotal_price': instance.subtotalPrice,
      'total_price': instance.totalPrice,
      'delivery_date': instance.deliveryDate,
      'payment_date': instance.paymentDate,
    };

_$CreatedByImpl _$$CreatedByImplFromJson(Map<String, dynamic> json) =>
    _$CreatedByImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$CreatedByImplToJson(_$CreatedByImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

_$DateImpl _$$DateImplFromJson(Map<String, dynamic> json) =>
    _$DateImpl(timestampValue: json['timestampValue'] as String?);

Map<String, dynamic> _$$DateImplToJson(_$DateImpl instance) =>
    <String, dynamic>{'timestampValue': instance.timestampValue};

_$ProductsImpl _$$ProductsImplFromJson(Map<String, dynamic> json) =>
    _$ProductsImpl(
      arrayValue:
          json['arrayValue'] == null
              ? null
              : ArrayValue.fromJson(json['arrayValue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductsImplToJson(_$ProductsImpl instance) =>
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
          : MapValue.fromJson(json['mapValue'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ValueImplToJson(_$ValueImpl instance) =>
    <String, dynamic>{'mapValue': instance.mapValue};

_$MapValueImpl _$$MapValueImplFromJson(Map<String, dynamic> json) =>
    _$MapValueImpl(
      fields:
          json['fields'] == null
              ? null
              : MapValueFields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MapValueImplToJson(_$MapValueImpl instance) =>
    <String, dynamic>{'fields': instance.fields};

_$MapValueFieldsImpl _$$MapValueFieldsImplFromJson(
  Map<String, dynamic> json,
) => _$MapValueFieldsImpl(
  unitPrice:
      json['unit_price'] == null
          ? null
          : SubtotalPrice.fromJson(json['unit_price'] as Map<String, dynamic>),
  totalPrice:
      json['total_price'] == null
          ? null
          : SubtotalPrice.fromJson(json['total_price'] as Map<String, dynamic>),
  discountAmount:
      json['discount_amount'] == null
          ? null
          : SubtotalPrice.fromJson(
            json['discount_amount'] as Map<String, dynamic>,
          ),
  productId:
      json['product_id'] == null
          ? null
          : CreatedBy.fromJson(json['product_id'] as Map<String, dynamic>),
  quantity:
      json['quantity'] == null
          ? null
          : SubtotalPrice.fromJson(json['quantity'] as Map<String, dynamic>),
  discountPercentage:
      json['discount_percentage'] == null
          ? null
          : DiscountPercentage.fromJson(
            json['discount_percentage'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$MapValueFieldsImplToJson(
  _$MapValueFieldsImpl instance,
) => <String, dynamic>{
  'unit_price': instance.unitPrice,
  'total_price': instance.totalPrice,
  'discount_amount': instance.discountAmount,
  'product_id': instance.productId,
  'quantity': instance.quantity,
  'discount_percentage': instance.discountPercentage,
};

_$SubtotalPriceImpl _$$SubtotalPriceImplFromJson(Map<String, dynamic> json) =>
    _$SubtotalPriceImpl(integerValue: json['integerValue'] as String?);

Map<String, dynamic> _$$SubtotalPriceImplToJson(_$SubtotalPriceImpl instance) =>
    <String, dynamic>{'integerValue': instance.integerValue};

_$DiscountPercentageImpl _$$DiscountPercentageImplFromJson(
  Map<String, dynamic> json,
) => _$DiscountPercentageImpl(
  doubleValue: (json['doubleValue'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$DiscountPercentageImplToJson(
  _$DiscountPercentageImpl instance,
) => <String, dynamic>{'doubleValue': instance.doubleValue};
