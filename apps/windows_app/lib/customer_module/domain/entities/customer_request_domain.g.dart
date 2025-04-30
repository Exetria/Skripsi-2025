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
  companyName:
      json['company_name'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['company_name'] as Map<String, dynamic>,
          ),
  nationalIdPhoto:
      json['national_id_photo'] == null
          ? null
          : Photo.fromJson(json['national_id_photo'] as Map<String, dynamic>),
  approvalStatus:
      json['approval_status'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['approval_status'] as Map<String, dynamic>,
          ),
  requestedBy:
      json['requested_by'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['requested_by'] as Map<String, dynamic>,
          ),
  storePhoto:
      json['store_photo'] == null
          ? null
          : Photo.fromJson(json['store_photo'] as Map<String, dynamic>),
  companyAddress:
      json['company_address'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['company_address'] as Map<String, dynamic>,
          ),
  customerRequestId:
      json['customer_request_id'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['customer_request_id'] as Map<String, dynamic>,
          ),
  location:
      json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
  nationalId:
      json['national_id'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['national_id'] as Map<String, dynamic>,
          ),
  subscriptionType:
      json['subscription_type'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['subscription_type'] as Map<String, dynamic>,
          ),
  storeCondition:
      json['store_condition'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['store_condition'] as Map<String, dynamic>,
          ),
  ownerName:
      json['owner_name'] == null
          ? null
          : ApprovalStatus.fromJson(json['owner_name'] as Map<String, dynamic>),
  destinationCompany:
      json['destination_company'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['destination_company'] as Map<String, dynamic>,
          ),
  approvalDate:
      json['approval_date'] == null
          ? null
          : Date.fromJson(json['approval_date'] as Map<String, dynamic>),
  phoneNumber:
      json['phone_number'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['phone_number'] as Map<String, dynamic>,
          ),
  customerCode:
      json['customer_code'] == null
          ? null
          : CustomerCode.fromJson(
            json['customer_code'] as Map<String, dynamic>,
          ),
  carbonCopy:
      json['carbon_copy'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['carbon_copy'] as Map<String, dynamic>,
          ),
  approvedBy:
      json['approved_by'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['approved_by'] as Map<String, dynamic>,
          ),
  date:
      json['date'] == null
          ? null
          : Date.fromJson(json['date'] as Map<String, dynamic>),
  ownershipStatus:
      json['ownership_status'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['ownership_status'] as Map<String, dynamic>,
          ),
  taxId:
      json['tax_id'] == null
          ? null
          : ApprovalStatus.fromJson(json['tax_id'] as Map<String, dynamic>),
  ownerAddress:
      json['owner_address'] == null
          ? null
          : ApprovalStatus.fromJson(
            json['owner_address'] as Map<String, dynamic>,
          ),
  note:
      json['note'] == null
          ? null
          : ApprovalStatus.fromJson(json['note'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'company_name': instance.companyName,
      'national_id_photo': instance.nationalIdPhoto,
      'approval_status': instance.approvalStatus,
      'requested_by': instance.requestedBy,
      'store_photo': instance.storePhoto,
      'company_address': instance.companyAddress,
      'customer_request_id': instance.customerRequestId,
      'location': instance.location,
      'national_id': instance.nationalId,
      'subscription_type': instance.subscriptionType,
      'store_condition': instance.storeCondition,
      'owner_name': instance.ownerName,
      'destination_company': instance.destinationCompany,
      'approval_date': instance.approvalDate,
      'phone_number': instance.phoneNumber,
      'customer_code': instance.customerCode,
      'carbon_copy': instance.carbonCopy,
      'approved_by': instance.approvedBy,
      'date': instance.date,
      'ownership_status': instance.ownershipStatus,
      'tax_id': instance.taxId,
      'owner_address': instance.ownerAddress,
      'note': instance.note,
    };

_$DateImpl _$$DateImplFromJson(Map<String, dynamic> json) =>
    _$DateImpl(timestampValue: json['timestampValue'] as String?);

Map<String, dynamic> _$$DateImplToJson(_$DateImpl instance) =>
    <String, dynamic>{'timestampValue': instance.timestampValue};

_$ApprovalStatusImpl _$$ApprovalStatusImplFromJson(Map<String, dynamic> json) =>
    _$ApprovalStatusImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$ApprovalStatusImplToJson(
  _$ApprovalStatusImpl instance,
) => <String, dynamic>{'stringValue': instance.stringValue};

_$CustomerCodeImpl _$$CustomerCodeImplFromJson(Map<String, dynamic> json) =>
    _$CustomerCodeImpl(integerValue: json['integerValue'] as String?);

Map<String, dynamic> _$$CustomerCodeImplToJson(_$CustomerCodeImpl instance) =>
    <String, dynamic>{'integerValue': instance.integerValue};

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      mapValue:
          json['mapValue'] == null
              ? null
              : MapValue.fromJson(json['mapValue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
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

_$MapValueFieldsImpl _$$MapValueFieldsImplFromJson(Map<String, dynamic> json) =>
    _$MapValueFieldsImpl(
      accuracy:
          json['accuracy'] == null
              ? null
              : Accuracy.fromJson(json['accuracy'] as Map<String, dynamic>),
      latitude:
          json['latitude'] == null
              ? null
              : Itude.fromJson(json['latitude'] as Map<String, dynamic>),
      longitude:
          json['longitude'] == null
              ? null
              : Itude.fromJson(json['longitude'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MapValueFieldsImplToJson(
  _$MapValueFieldsImpl instance,
) => <String, dynamic>{
  'accuracy': instance.accuracy,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};

_$AccuracyImpl _$$AccuracyImplFromJson(Map<String, dynamic> json) =>
    _$AccuracyImpl(doubleValue: (json['doubleValue'] as num?)?.toInt());

Map<String, dynamic> _$$AccuracyImplToJson(_$AccuracyImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$ItudeImpl _$$ItudeImplFromJson(Map<String, dynamic> json) =>
    _$ItudeImpl(doubleValue: (json['doubleValue'] as num?)?.toDouble());

Map<String, dynamic> _$$ItudeImplToJson(_$ItudeImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) =>
    _$PhotoImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};
