// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_request_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerRequestDomainImpl _$$CustomerRequestDomainImplFromJson(
  Map<String, dynamic> json,
) => _$CustomerRequestDomainImpl(
  name: json['name'] as String?,
  fields:
      json['fields'] == null
          ? null
          : CustomerRequestDomainFields.fromJson(
            json['fields'] as Map<String, dynamic>,
          ),
  createTime: json['createTime'] as String?,
  updateTime: json['updateTime'] as String?,
);

Map<String, dynamic> _$$CustomerRequestDomainImplToJson(
  _$CustomerRequestDomainImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'fields': instance.fields,
  'createTime': instance.createTime,
  'updateTime': instance.updateTime,
};

_$CustomerRequestDomainFieldsImpl _$$CustomerRequestDomainFieldsImplFromJson(
  Map<String, dynamic> json,
) => _$CustomerRequestDomainFieldsImpl(
  approvedBy:
      json['approved_by'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['approved_by'] as Map<String, dynamic>,
          ),
  companyStoreCondition:
      json['company_store_condition'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['company_store_condition'] as Map<String, dynamic>,
          ),
  approvalStatus:
      json['approval_status'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['approval_status'] as Map<String, dynamic>,
          ),
  companyTaxId:
      json['company_tax_id'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['company_tax_id'] as Map<String, dynamic>,
          ),
  requestDestination:
      json['request_destination'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['request_destination'] as Map<String, dynamic>,
          ),
  picNationalIdPhoto:
      json['pic_national_id_photo'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['pic_national_id_photo'] as Map<String, dynamic>,
          ),
  picPosition:
      json['pic_position'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['pic_position'] as Map<String, dynamic>,
          ),
  companyLocation:
      json['company_location'] == null
          ? null
          : CompanyLocation.fromJson(
            json['company_location'] as Map<String, dynamic>,
          ),
  subscriptionType:
      json['subscription_type'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['subscription_type'] as Map<String, dynamic>,
          ),
  picNationalId:
      json['pic_national_id'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['pic_national_id'] as Map<String, dynamic>,
          ),
  picAddress:
      json['pic_address'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['pic_address'] as Map<String, dynamic>,
          ),
  picTaxId:
      json['pic_tax_id'] == null
          ? null
          : ApprovalStatus.fromJson(json['pic_tax_id'] as Map<String, dynamic>),
  customerType:
      json['customer_type'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['customer_type'] as Map<String, dynamic>,
          ),
  requestedBy:
      json['requested_by'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['requested_by'] as Map<String, dynamic>,
          ),
  companyName:
      json['company_name'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['company_name'] as Map<String, dynamic>,
          ),
  carbonCopy:
      json['carbon_copy'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['carbon_copy'] as Map<String, dynamic>,
          ),
  companyEmail:
      json['company_email'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['company_email'] as Map<String, dynamic>,
          ),
  creditPeriod:
      json['credit_period'] == null
          ? null
          : Credit.fromJson(json['credit_period'] as Map<String, dynamic>),
  companyPhoneNumber:
      json['company_phone_number'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['company_phone_number'] as Map<String, dynamic>,
          ),
  ownershipStatus:
      json['ownership_status'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['ownership_status'] as Map<String, dynamic>,
          ),
  note:
      json['note'] == null
          ? null
          : ApprovalStatus.fromJson(json['note'] as Map<String, dynamic>),
  companyStorePhoto:
      json['company_store_photo'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['company_store_photo'] as Map<String, dynamic>,
          ),
  creditLimit:
      json['credit_limit'] == null
          ? null
          : Credit.fromJson(json['credit_limit'] as Map<String, dynamic>),
  picName:
      json['pic_name'] == null
          ? null
          : ApprovalStatus.fromJson(json['pic_name'] as Map<String, dynamic>),
  picPhoneNumber:
      json['pic_phone_number'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['pic_phone_number'] as Map<String, dynamic>,
          ),
  approvalReason:
      json['approval_reason'] == null
          ? null
          : Approval.fromJson(json['approval_reason'] as Map<String, dynamic>),
  companyAddress:
      json['company_address'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['company_address'] as Map<String, dynamic>,
          ),
  approvalDate:
      json['approval_date'] == null
          ? null
          : Approval.fromJson(json['approval_date'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CustomerRequestDomainFieldsImplToJson(
  _$CustomerRequestDomainFieldsImpl instance,
) => <String, dynamic>{
  'approved_by': instance.approvedBy,
  'company_store_condition': instance.companyStoreCondition,
  'approval_status': instance.approvalStatus,
  'company_tax_id': instance.companyTaxId,
  'request_destination': instance.requestDestination,
  'pic_national_id_photo': instance.picNationalIdPhoto,
  'pic_position': instance.picPosition,
  'company_location': instance.companyLocation,
  'subscription_type': instance.subscriptionType,
  'pic_national_id': instance.picNationalId,
  'pic_address': instance.picAddress,
  'pic_tax_id': instance.picTaxId,
  'customer_type': instance.customerType,
  'requested_by': instance.requestedBy,
  'company_name': instance.companyName,
  'carbon_copy': instance.carbonCopy,
  'company_email': instance.companyEmail,
  'credit_period': instance.creditPeriod,
  'company_phone_number': instance.companyPhoneNumber,
  'ownership_status': instance.ownershipStatus,
  'note': instance.note,
  'company_store_photo': instance.companyStorePhoto,
  'credit_limit': instance.creditLimit,
  'pic_name': instance.picName,
  'pic_phone_number': instance.picPhoneNumber,
  'approval_reason': instance.approvalReason,
  'company_address': instance.companyAddress,
  'approval_date': instance.approvalDate,
};

_$ApprovalImpl _$$ApprovalImplFromJson(Map<String, dynamic> json) =>
    _$ApprovalImpl(timestampValue: json['timestampValue'] as String?);

Map<String, dynamic> _$$ApprovalImplToJson(_$ApprovalImpl instance) =>
    <String, dynamic>{'timestampValue': instance.timestampValue};

_$ApprovalStatusImpl _$$ApprovalStatusImplFromJson(Map<String, dynamic> json) =>
    _$ApprovalStatusImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$ApprovalStatusImplToJson(
  _$ApprovalStatusImpl instance,
) => <String, dynamic>{'stringValue': instance.stringValue};

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
      latitude:
          json['latitude'] == null
              ? null
              : Accuracy.fromJson(json['latitude'] as Map<String, dynamic>),
      accuracy:
          json['accuracy'] == null
              ? null
              : Accuracy.fromJson(json['accuracy'] as Map<String, dynamic>),
      longitude:
          json['longitude'] == null
              ? null
              : Accuracy.fromJson(json['longitude'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MapValueFieldsImplToJson(
  _$MapValueFieldsImpl instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'accuracy': instance.accuracy,
  'longitude': instance.longitude,
};

_$AccuracyImpl _$$AccuracyImplFromJson(Map<String, dynamic> json) =>
    _$AccuracyImpl(doubleValue: (json['doubleValue'] as num?)?.toDouble());

Map<String, dynamic> _$$AccuracyImplToJson(_$AccuracyImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$CreditImpl _$$CreditImplFromJson(Map<String, dynamic> json) =>
    _$CreditImpl(integerValue: json['integerValue'] as String?);

Map<String, dynamic> _$$CreditImplToJson(_$CreditImpl instance) =>
    <String, dynamic>{'integerValue': instance.integerValue};
