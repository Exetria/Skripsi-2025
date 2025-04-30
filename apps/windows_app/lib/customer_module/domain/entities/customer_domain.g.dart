// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerDomainImpl _$$CustomerDomainImplFromJson(Map<String, dynamic> json) =>
    _$CustomerDomainImpl(
      name: json['name'] as String?,
      fields:
          json['fields'] == null
              ? null
              : Fields.fromJson(json['fields'] as Map<String, dynamic>),
      createTime: json['createTime'] as String?,
      updateTime: json['updateTime'] as String?,
    );

Map<String, dynamic> _$$CustomerDomainImplToJson(
  _$CustomerDomainImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'fields': instance.fields,
  'createTime': instance.createTime,
  'updateTime': instance.updateTime,
};

_$FieldsImpl _$$FieldsImplFromJson(Map<String, dynamic> json) => _$FieldsImpl(
  purchaseHistory:
      json['purchase_history'] == null
          ? null
          : PurchaseHistory.fromJson(
            json['purchase_history'] as Map<String, dynamic>,
          ),
  phoneNumber:
      json['phone_number'] == null
          ? null
          : BusinessType.fromJson(json['phone_number'] as Map<String, dynamic>),
  latitude:
      json['latitude'] == null
          ? null
          : Itude.fromJson(json['latitude'] as Map<String, dynamic>),
  ownerAddress:
      json['owner_address'] == null
          ? null
          : BusinessType.fromJson(
            json['owner_address'] as Map<String, dynamic>,
          ),
  subscriptionType:
      json['subscription_type'] == null
          ? null
          : BusinessType.fromJson(
            json['subscription_type'] as Map<String, dynamic>,
          ),
  idNumber:
      json['id_number'] == null
          ? null
          : BusinessType.fromJson(json['id_number'] as Map<String, dynamic>),
  preferredPaymentMethod:
      json['preferred_payment_method'] == null
          ? null
          : BusinessType.fromJson(
            json['preferred_payment_method'] as Map<String, dynamic>,
          ),
  email:
      json['email'] == null
          ? null
          : BusinessType.fromJson(json['email'] as Map<String, dynamic>),
  longitude:
      json['longitude'] == null
          ? null
          : Itude.fromJson(json['longitude'] as Map<String, dynamic>),
  deliveryZone:
      json['delivery_zone'] == null
          ? null
          : BusinessType.fromJson(
            json['delivery_zone'] as Map<String, dynamic>,
          ),
  preferredDeliveryTime:
      json['preferred_delivery_time'] == null
          ? null
          : BusinessType.fromJson(
            json['preferred_delivery_time'] as Map<String, dynamic>,
          ),
  taxId:
      json['tax_id'] == null
          ? null
          : BusinessType.fromJson(json['tax_id'] as Map<String, dynamic>),
  storePhoto:
      json['store_photo'] == null
          ? null
          : Photo.fromJson(json['store_photo'] as Map<String, dynamic>),
  businessType:
      json['business_type'] == null
          ? null
          : BusinessType.fromJson(
            json['business_type'] as Map<String, dynamic>,
          ),
  customerCode:
      json['customer_code'] == null
          ? null
          : BusinessType.fromJson(
            json['customer_code'] as Map<String, dynamic>,
          ),
  ownership:
      json['ownership'] == null
          ? null
          : BusinessType.fromJson(json['ownership'] as Map<String, dynamic>),
  creditLimit:
      json['credit_limit'] == null
          ? null
          : CreditLimit.fromJson(json['credit_limit'] as Map<String, dynamic>),
  ownerName:
      json['owner_name'] == null
          ? null
          : BusinessType.fromJson(json['owner_name'] as Map<String, dynamic>),
  outstandingBalance:
      json['outstanding_balance'] == null
          ? null
          : CreditLimit.fromJson(
            json['outstanding_balance'] as Map<String, dynamic>,
          ),
  blacklisted:
      json['blacklisted'] == null
          ? null
          : Blacklisted.fromJson(json['blacklisted'] as Map<String, dynamic>),
  discountEligibility:
      json['discount_eligibility'] == null
          ? null
          : Blacklisted.fromJson(
            json['discount_eligibility'] as Map<String, dynamic>,
          ),
  visitFrequency:
      json['visit_frequency'] == null
          ? null
          : BusinessType.fromJson(
            json['visit_frequency'] as Map<String, dynamic>,
          ),
  companyName:
      json['company_name'] == null
          ? null
          : BusinessType.fromJson(json['company_name'] as Map<String, dynamic>),
  storeAddress:
      json['store_address'] == null
          ? null
          : BusinessType.fromJson(
            json['store_address'] as Map<String, dynamic>,
          ),
  idPhoto:
      json['id_photo'] == null
          ? null
          : Photo.fromJson(json['id_photo'] as Map<String, dynamic>),
  status:
      json['status'] == null
          ? null
          : BusinessType.fromJson(json['status'] as Map<String, dynamic>),
  salesRepId:
      json['sales_rep_id'] == null
          ? null
          : BusinessType.fromJson(json['sales_rep_id'] as Map<String, dynamic>),
  customerNotes:
      json['customer_notes'] == null
          ? null
          : BusinessType.fromJson(
            json['customer_notes'] as Map<String, dynamic>,
          ),
  storeName:
      json['store_name'] == null
          ? null
          : BusinessType.fromJson(json['store_name'] as Map<String, dynamic>),
  lastTransactionDate:
      json['last_transaction_date'] == null
          ? null
          : LastTransactionDate.fromJson(
            json['last_transaction_date'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'purchase_history': instance.purchaseHistory,
      'phone_number': instance.phoneNumber,
      'latitude': instance.latitude,
      'owner_address': instance.ownerAddress,
      'subscription_type': instance.subscriptionType,
      'id_number': instance.idNumber,
      'preferred_payment_method': instance.preferredPaymentMethod,
      'email': instance.email,
      'longitude': instance.longitude,
      'delivery_zone': instance.deliveryZone,
      'preferred_delivery_time': instance.preferredDeliveryTime,
      'tax_id': instance.taxId,
      'store_photo': instance.storePhoto,
      'business_type': instance.businessType,
      'customer_code': instance.customerCode,
      'ownership': instance.ownership,
      'credit_limit': instance.creditLimit,
      'owner_name': instance.ownerName,
      'outstanding_balance': instance.outstandingBalance,
      'blacklisted': instance.blacklisted,
      'discount_eligibility': instance.discountEligibility,
      'visit_frequency': instance.visitFrequency,
      'company_name': instance.companyName,
      'store_address': instance.storeAddress,
      'id_photo': instance.idPhoto,
      'status': instance.status,
      'sales_rep_id': instance.salesRepId,
      'customer_notes': instance.customerNotes,
      'store_name': instance.storeName,
      'last_transaction_date': instance.lastTransactionDate,
    };

_$BlacklistedImpl _$$BlacklistedImplFromJson(Map<String, dynamic> json) =>
    _$BlacklistedImpl(booleanValue: json['booleanValue'] as bool?);

Map<String, dynamic> _$$BlacklistedImplToJson(_$BlacklistedImpl instance) =>
    <String, dynamic>{'booleanValue': instance.booleanValue};

_$BusinessTypeImpl _$$BusinessTypeImplFromJson(Map<String, dynamic> json) =>
    _$BusinessTypeImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$BusinessTypeImplToJson(_$BusinessTypeImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

_$CreditLimitImpl _$$CreditLimitImplFromJson(Map<String, dynamic> json) =>
    _$CreditLimitImpl(doubleValue: (json['doubleValue'] as num?)?.toInt());

Map<String, dynamic> _$$CreditLimitImplToJson(_$CreditLimitImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) =>
    _$PhotoImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

_$LastTransactionDateImpl _$$LastTransactionDateImplFromJson(
  Map<String, dynamic> json,
) => _$LastTransactionDateImpl(
  stringValue:
      json['stringValue'] == null
          ? null
          : DateTime.parse(json['stringValue'] as String),
);

Map<String, dynamic> _$$LastTransactionDateImplToJson(
  _$LastTransactionDateImpl instance,
) => <String, dynamic>{'stringValue': instance.stringValue?.toIso8601String()};

_$ItudeImpl _$$ItudeImplFromJson(Map<String, dynamic> json) =>
    _$ItudeImpl(doubleValue: (json['doubleValue'] as num?)?.toDouble());

Map<String, dynamic> _$$ItudeImplToJson(_$ItudeImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$PurchaseHistoryImpl _$$PurchaseHistoryImplFromJson(
  Map<String, dynamic> json,
) => _$PurchaseHistoryImpl(
  arrayValue:
      json['arrayValue'] == null
          ? null
          : ArrayValue.fromJson(json['arrayValue'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PurchaseHistoryImplToJson(
  _$PurchaseHistoryImpl instance,
) => <String, dynamic>{'arrayValue': instance.arrayValue};

_$ArrayValueImpl _$$ArrayValueImplFromJson(Map<String, dynamic> json) =>
    _$ArrayValueImpl(
      values:
          (json['values'] as List<dynamic>?)
              ?.map((e) => BusinessType.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$ArrayValueImplToJson(_$ArrayValueImpl instance) =>
    <String, dynamic>{'values': instance.values};
