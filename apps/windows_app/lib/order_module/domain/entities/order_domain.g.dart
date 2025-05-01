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
  totalPrice:
      json['total_price'] == null
          ? null
          : SubtotalPrice.fromJson(json['total_price'] as Map<String, dynamic>),
  deliveryDate:
      json['delivery_date'] == null
          ? null
          : DeliveryDate.fromJson(
            json['delivery_date'] as Map<String, dynamic>,
          ),
  orderStatus:
      json['order_status'] == null
          ? null
          : CustomerId.fromJson(json['order_status'] as Map<String, dynamic>),
  customerId:
      json['customer_id'] == null
          ? null
          : CustomerId.fromJson(json['customer_id'] as Map<String, dynamic>),
  subtotalPrice:
      json['subtotal_price'] == null
          ? null
          : SubtotalPrice.fromJson(
            json['subtotal_price'] as Map<String, dynamic>,
          ),
  paymentStatus:
      json['payment_status'] == null
          ? null
          : CustomerId.fromJson(json['payment_status'] as Map<String, dynamic>),
  salesId:
      json['sales_id'] == null
          ? null
          : CustomerId.fromJson(json['sales_id'] as Map<String, dynamic>),
  notes:
      json['notes'] == null
          ? null
          : CustomerId.fromJson(json['notes'] as Map<String, dynamic>),
  paymentMethod:
      json['payment_method'] == null
          ? null
          : CustomerId.fromJson(json['payment_method'] as Map<String, dynamic>),
  products:
      json['products'] == null
          ? null
          : Products.fromJson(json['products'] as Map<String, dynamic>),
  totalDiscount:
      json['total_discount'] == null
          ? null
          : SubtotalPrice.fromJson(
            json['total_discount'] as Map<String, dynamic>,
          ),
  deliveryStatus:
      json['delivery_status'] == null
          ? null
          : CustomerId.fromJson(
            json['delivery_status'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'total_price': instance.totalPrice,
      'delivery_date': instance.deliveryDate,
      'order_status': instance.orderStatus,
      'customer_id': instance.customerId,
      'subtotal_price': instance.subtotalPrice,
      'payment_status': instance.paymentStatus,
      'sales_id': instance.salesId,
      'notes': instance.notes,
      'payment_method': instance.paymentMethod,
      'products': instance.products,
      'total_discount': instance.totalDiscount,
      'delivery_status': instance.deliveryStatus,
    };

_$CustomerIdImpl _$$CustomerIdImplFromJson(Map<String, dynamic> json) =>
    _$CustomerIdImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$CustomerIdImplToJson(_$CustomerIdImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

_$DeliveryDateImpl _$$DeliveryDateImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryDateImpl(timestampValue: json['timestampValue'] as String?);

Map<String, dynamic> _$$DeliveryDateImplToJson(_$DeliveryDateImpl instance) =>
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
  productId:
      json['product_id'] == null
          ? null
          : CustomerId.fromJson(json['product_id'] as Map<String, dynamic>),
  quantity:
      json['quantity'] == null
          ? null
          : SubtotalPrice.fromJson(json['quantity'] as Map<String, dynamic>),
  discount:
      json['discount'] == null
          ? null
          : Discount.fromJson(json['discount'] as Map<String, dynamic>),
  unitPrice:
      json['unit_price'] == null
          ? null
          : SubtotalPrice.fromJson(json['unit_price'] as Map<String, dynamic>),
  totalPrice:
      json['total_price'] == null
          ? null
          : SubtotalPrice.fromJson(json['total_price'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$MapValueFieldsImplToJson(
  _$MapValueFieldsImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'quantity': instance.quantity,
  'discount': instance.discount,
  'unit_price': instance.unitPrice,
  'total_price': instance.totalPrice,
};

_$DiscountImpl _$$DiscountImplFromJson(Map<String, dynamic> json) =>
    _$DiscountImpl(doubleValue: (json['doubleValue'] as num?)?.toInt());

Map<String, dynamic> _$$DiscountImplToJson(_$DiscountImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$SubtotalPriceImpl _$$SubtotalPriceImplFromJson(Map<String, dynamic> json) =>
    _$SubtotalPriceImpl(integerValue: json['integerValue'] as String?);

Map<String, dynamic> _$$SubtotalPriceImplToJson(_$SubtotalPriceImpl instance) =>
    <String, dynamic>{'integerValue': instance.integerValue};
