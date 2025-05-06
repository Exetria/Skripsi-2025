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
          : Fields.fromJson(json['fields'] as Map<String, dynamic>),
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

_$FieldsImpl _$$FieldsImplFromJson(Map<String, dynamic> json) => _$FieldsImpl(
  requestedBy:
      json['requested_by'] == null
          ? null
          : ApprovalReason.fromJson(
            json['requested_by'] as Map<String, dynamic>,
          ),
  approvalStatus:
      json['approval_status'] == null
          ? null
          : ApprovalReason.fromJson(
            json['approval_status'] as Map<String, dynamic>,
          ),
  approvedBy:
      json['approved_by'] == null
          ? null
          : ApprovalReason.fromJson(
            json['approved_by'] as Map<String, dynamic>,
          ),
  companyStorePhoto:
      json['company_store_photo'] == null
          ? null
          : Photo.fromJson(json['company_store_photo'] as Map<String, dynamic>),
  customerType:
      json['customer_type'] == null
          ? null
          : ApprovalReason.fromJson(
            json['customer_type'] as Map<String, dynamic>,
          ),
  companyEmail:
      json['company_email'] == null
          ? null
          : ApprovalReason.fromJson(
            json['company_email'] as Map<String, dynamic>,
          ),
  note:
      json['note'] == null
          ? null
          : ApprovalReason.fromJson(json['note'] as Map<String, dynamic>),
  companyLocation:
      json['company_location'] == null
          ? null
          : CompanyLocation.fromJson(
            json['company_location'] as Map<String, dynamic>,
          ),
  subscriptionType:
      json['subscription_type'] == null
          ? null
          : ApprovalReason.fromJson(
            json['subscription_type'] as Map<String, dynamic>,
          ),
  ownerAddress:
      json['owner_address'] == null
          ? null
          : ApprovalReason.fromJson(
            json['owner_address'] as Map<String, dynamic>,
          ),
  ownerName:
      json['owner_name'] == null
          ? null
          : ApprovalReason.fromJson(json['owner_name'] as Map<String, dynamic>),
  ownerNationalId:
      json['owner_national_id'] == null
          ? null
          : ApprovalReason.fromJson(
            json['owner_national_id'] as Map<String, dynamic>,
          ),
  ownerNationalIdPhoto:
      json['owner_national_id_photo'] == null
          ? null
          : Photo.fromJson(
            json['owner_national_id_photo'] as Map<String, dynamic>,
          ),
  companyStoreCondition:
      json['company_store_condition'] == null
          ? null
          : ApprovalReason.fromJson(
            json['company_store_condition'] as Map<String, dynamic>,
          ),
  approvalDate:
      json['approval_date'] == null
          ? null
          : ApprovalDate.fromJson(
            json['approval_date'] as Map<String, dynamic>,
          ),
  carbonCopy:
      json['carbon_copy'] == null
          ? null
          : ApprovalReason.fromJson(
            json['carbon_copy'] as Map<String, dynamic>,
          ),
  companyPhoneNumber:
      json['company_phone_number'] == null
          ? null
          : ApprovalReason.fromJson(
            json['company_phone_number'] as Map<String, dynamic>,
          ),
  companyName:
      json['company_name'] == null
          ? null
          : ApprovalReason.fromJson(
            json['company_name'] as Map<String, dynamic>,
          ),
  ownerPhoneNumber:
      json['owner_phone_number'] == null
          ? null
          : ApprovalReason.fromJson(
            json['owner_phone_number'] as Map<String, dynamic>,
          ),
  companyTaxId:
      json['company_tax_id'] == null
          ? null
          : ApprovalReason.fromJson(
            json['company_tax_id'] as Map<String, dynamic>,
          ),
  approvalReason:
      json['approval_reason'] == null
          ? null
          : ApprovalReason.fromJson(
            json['approval_reason'] as Map<String, dynamic>,
          ),
  ownerTaxId:
      json['owner_tax_id'] == null
          ? null
          : ApprovalReason.fromJson(
            json['owner_tax_id'] as Map<String, dynamic>,
          ),
  companyAddress:
      json['company_address'] == null
          ? null
          : ApprovalReason.fromJson(
            json['company_address'] as Map<String, dynamic>,
          ),
  ownershipStatus:
      json['ownership_status'] == null
          ? null
          : ApprovalReason.fromJson(
            json['ownership_status'] as Map<String, dynamic>,
          ),
  requestDestination:
      json['request_destination'] == null
          ? null
          : ApprovalReason.fromJson(
            json['request_destination'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'requested_by': instance.requestedBy,
      'approval_status': instance.approvalStatus,
      'approved_by': instance.approvedBy,
      'company_store_photo': instance.companyStorePhoto,
      'customer_type': instance.customerType,
      'company_email': instance.companyEmail,
      'note': instance.note,
      'company_location': instance.companyLocation,
      'subscription_type': instance.subscriptionType,
      'owner_address': instance.ownerAddress,
      'owner_name': instance.ownerName,
      'owner_national_id': instance.ownerNationalId,
      'owner_national_id_photo': instance.ownerNationalIdPhoto,
      'company_store_condition': instance.companyStoreCondition,
      'approval_date': instance.approvalDate,
      'carbon_copy': instance.carbonCopy,
      'company_phone_number': instance.companyPhoneNumber,
      'company_name': instance.companyName,
      'owner_phone_number': instance.ownerPhoneNumber,
      'company_tax_id': instance.companyTaxId,
      'approval_reason': instance.approvalReason,
      'owner_tax_id': instance.ownerTaxId,
      'company_address': instance.companyAddress,
      'ownership_status': instance.ownershipStatus,
      'request_destination': instance.requestDestination,
    };

_$ApprovalDateImpl _$$ApprovalDateImplFromJson(Map<String, dynamic> json) =>
    _$ApprovalDateImpl(timestampValue: json['timestampValue'] as String?);

Map<String, dynamic> _$$ApprovalDateImplToJson(_$ApprovalDateImpl instance) =>
    <String, dynamic>{'timestampValue': instance.timestampValue};

_$ApprovalReasonImpl _$$ApprovalReasonImplFromJson(Map<String, dynamic> json) =>
    _$ApprovalReasonImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$ApprovalReasonImplToJson(
  _$ApprovalReasonImpl instance,
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
      longitude:
          json['longitude'] == null
              ? null
              : Accuracy.fromJson(json['longitude'] as Map<String, dynamic>),
      accuracy:
          json['accuracy'] == null
              ? null
              : Accuracy.fromJson(json['accuracy'] as Map<String, dynamic>),
      latitude:
          json['latitude'] == null
              ? null
              : Accuracy.fromJson(json['latitude'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MapValueFieldsImplToJson(
  _$MapValueFieldsImpl instance,
) => <String, dynamic>{
  'longitude': instance.longitude,
  'accuracy': instance.accuracy,
  'latitude': instance.latitude,
};

_$AccuracyImpl _$$AccuracyImplFromJson(Map<String, dynamic> json) =>
    _$AccuracyImpl(doubleValue: (json['doubleValue'] as num?)?.toDouble());

Map<String, dynamic> _$$AccuracyImplToJson(_$AccuracyImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) =>
    _$PhotoImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};
