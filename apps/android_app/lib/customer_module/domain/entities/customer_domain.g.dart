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
  picNationalIdPhoto:
      json['pic_national_id_photo'] == null
          ? null
          : ApprovedBy.fromJson(
            json['pic_national_id_photo'] as Map<String, dynamic>,
          ),
  companyStoreCondition:
      json['company_store_condition'] == null
          ? null
          : ApprovedBy.fromJson(
            json['company_store_condition'] as Map<String, dynamic>,
          ),
  picPhoneNumber:
      json['pic_phone_number'] == null
          ? null
          : ApprovedBy.fromJson(
            json['pic_phone_number'] as Map<String, dynamic>,
          ),
  blacklisted:
      json['blacklisted'] == null
          ? null
          : Blacklisted.fromJson(json['blacklisted'] as Map<String, dynamic>),
  companyAddress:
      json['company_address'] == null
          ? null
          : ApprovedBy.fromJson(
            json['company_address'] as Map<String, dynamic>,
          ),
  picAddress:
      json['pic_address'] == null
          ? null
          : ApprovedBy.fromJson(json['pic_address'] as Map<String, dynamic>),
  creditLimit:
      json['credit_limit'] == null
          ? null
          : Credit.fromJson(json['credit_limit'] as Map<String, dynamic>),
  companyStorePhoto:
      json['company_store_photo'] == null
          ? null
          : ApprovedBy.fromJson(
            json['company_store_photo'] as Map<String, dynamic>,
          ),
  note:
      json['note'] == null
          ? null
          : ApprovedBy.fromJson(json['note'] as Map<String, dynamic>),
  companyTaxId:
      json['company_tax_id'] == null
          ? null
          : ApprovedBy.fromJson(json['company_tax_id'] as Map<String, dynamic>),
  creditPeriod:
      json['credit_period'] == null
          ? null
          : Credit.fromJson(json['credit_period'] as Map<String, dynamic>),
  picPosition:
      json['pic_position'] == null
          ? null
          : ApprovedBy.fromJson(json['pic_position'] as Map<String, dynamic>),
  companyEmail:
      json['company_email'] == null
          ? null
          : ApprovedBy.fromJson(json['company_email'] as Map<String, dynamic>),
  companyName:
      json['company_name'] == null
          ? null
          : ApprovedBy.fromJson(json['company_name'] as Map<String, dynamic>),
  companyPhoneNumber:
      json['company_phone_number'] == null
          ? null
          : ApprovedBy.fromJson(
            json['company_phone_number'] as Map<String, dynamic>,
          ),
  companyLocation:
      json['company_location'] == null
          ? null
          : CompanyLocation.fromJson(
            json['company_location'] as Map<String, dynamic>,
          ),
  picTaxId:
      json['pic_tax_id'] == null
          ? null
          : ApprovedBy.fromJson(json['pic_tax_id'] as Map<String, dynamic>),
  customerType:
      json['customer_type'] == null
          ? null
          : ApprovedBy.fromJson(json['customer_type'] as Map<String, dynamic>),
  subscriptionType:
      json['subscription_type'] == null
          ? null
          : ApprovedBy.fromJson(
            json['subscription_type'] as Map<String, dynamic>,
          ),
  ownershipStatus:
      json['ownership_status'] == null
          ? null
          : ApprovedBy.fromJson(
            json['ownership_status'] as Map<String, dynamic>,
          ),
  requestedBy:
      json['requested_by'] == null
          ? null
          : ApprovedBy.fromJson(json['requested_by'] as Map<String, dynamic>),
  picName:
      json['pic_name'] == null
          ? null
          : ApprovedBy.fromJson(json['pic_name'] as Map<String, dynamic>),
  approvedBy:
      json['approved_by'] == null
          ? null
          : ApprovedBy.fromJson(json['approved_by'] as Map<String, dynamic>),
  picNationalId:
      json['pic_national_id'] == null
          ? null
          : ApprovedBy.fromJson(
            json['pic_national_id'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'pic_national_id_photo': instance.picNationalIdPhoto,
      'company_store_condition': instance.companyStoreCondition,
      'pic_phone_number': instance.picPhoneNumber,
      'blacklisted': instance.blacklisted,
      'company_address': instance.companyAddress,
      'pic_address': instance.picAddress,
      'credit_limit': instance.creditLimit,
      'company_store_photo': instance.companyStorePhoto,
      'note': instance.note,
      'company_tax_id': instance.companyTaxId,
      'credit_period': instance.creditPeriod,
      'pic_position': instance.picPosition,
      'company_email': instance.companyEmail,
      'company_name': instance.companyName,
      'company_phone_number': instance.companyPhoneNumber,
      'company_location': instance.companyLocation,
      'pic_tax_id': instance.picTaxId,
      'customer_type': instance.customerType,
      'subscription_type': instance.subscriptionType,
      'ownership_status': instance.ownershipStatus,
      'requested_by': instance.requestedBy,
      'pic_name': instance.picName,
      'approved_by': instance.approvedBy,
      'pic_national_id': instance.picNationalId,
    };

_$ApprovedByImpl _$$ApprovedByImplFromJson(Map<String, dynamic> json) =>
    _$ApprovedByImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$ApprovedByImplToJson(_$ApprovedByImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

_$BlacklistedImpl _$$BlacklistedImplFromJson(Map<String, dynamic> json) =>
    _$BlacklistedImpl(booleanValue: json['booleanValue'] as bool?);

Map<String, dynamic> _$$BlacklistedImplToJson(_$BlacklistedImpl instance) =>
    <String, dynamic>{'booleanValue': instance.booleanValue};

_$CompanyLocationImpl _$$CompanyLocationImplFromJson(
  Map<String, dynamic> json,
) => _$CompanyLocationImpl(
  mapValue:
      json['mapValue'] == null
          ? null
          : MapValue.fromJson(json['mapValue'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CompanyLocationImplToJson(
  _$CompanyLocationImpl instance,
) => <String, dynamic>{'mapValue': instance.mapValue};

_$MapValueImpl _$$MapValueImplFromJson(Map<String, dynamic> json) =>
    _$MapValueImpl(
      fields:
          json['fields'] == null
              ? null
              : MapValueFields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MapValueImplToJson(_$MapValueImpl instance) =>
    <String, dynamic>{'fields': instance.fields};

_$MapValueFieldsImpl _$$MapValueFieldsImplFromJson(Map<String, dynamic> json) =>
    _$MapValueFieldsImpl(
      accuracy:
          json['accuracy'] == null
              ? null
              : Accuracy.fromJson(json['accuracy'] as Map<String, dynamic>),
      longitude:
          json['longitude'] == null
              ? null
              : Accuracy.fromJson(json['longitude'] as Map<String, dynamic>),
      latitude:
          json['latitude'] == null
              ? null
              : Accuracy.fromJson(json['latitude'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MapValueFieldsImplToJson(
  _$MapValueFieldsImpl instance,
) => <String, dynamic>{
  'accuracy': instance.accuracy,
  'longitude': instance.longitude,
  'latitude': instance.latitude,
};

_$AccuracyImpl _$$AccuracyImplFromJson(Map<String, dynamic> json) =>
    _$AccuracyImpl(doubleValue: (json['doubleValue'] as num?)?.toDouble());

Map<String, dynamic> _$$AccuracyImplToJson(_$AccuracyImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$CreditImpl _$$CreditImplFromJson(Map<String, dynamic> json) =>
    _$CreditImpl(integerValue: json['integerValue'] as String?);

Map<String, dynamic> _$$CreditImplToJson(_$CreditImpl instance) =>
    <String, dynamic>{'integerValue': instance.integerValue};
