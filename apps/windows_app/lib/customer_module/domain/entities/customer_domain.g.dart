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
  companyStoreCondition:
      json['company_store_condition'] == null
          ? null
          : ApprovedBy.fromJson(
            json['company_store_condition'] as Map<String, dynamic>,
          ),
  ownerName:
      json['owner_name'] == null
          ? null
          : ApprovedBy.fromJson(json['owner_name'] as Map<String, dynamic>),
  subscriptionType:
      json['subscription_type'] == null
          ? null
          : ApprovedBy.fromJson(
            json['subscription_type'] as Map<String, dynamic>,
          ),
  customerType:
      json['customer_type'] == null
          ? null
          : ApprovedBy.fromJson(json['customer_type'] as Map<String, dynamic>),
  companyLocation:
      json['company_location'] == null
          ? null
          : CompanyLocation.fromJson(
            json['company_location'] as Map<String, dynamic>,
          ),
  ownerAddress:
      json['owner_address'] == null
          ? null
          : ApprovedBy.fromJson(json['owner_address'] as Map<String, dynamic>),
  ownerNationalId:
      json['owner_national_id'] == null
          ? null
          : ApprovedBy.fromJson(
            json['owner_national_id'] as Map<String, dynamic>,
          ),
  ownerTaxId:
      json['owner_tax_id'] == null
          ? null
          : ApprovedBy.fromJson(json['owner_tax_id'] as Map<String, dynamic>),
  requestedBy:
      json['requested_by'] == null
          ? null
          : ApprovedBy.fromJson(json['requested_by'] as Map<String, dynamic>),
  ownerNationalIdPhoto:
      json['owner_national_id_photo'] == null
          ? null
          : ApprovedBy.fromJson(
            json['owner_national_id_photo'] as Map<String, dynamic>,
          ),
  companyAddress:
      json['company_address'] == null
          ? null
          : ApprovedBy.fromJson(
            json['company_address'] as Map<String, dynamic>,
          ),
  note:
      json['note'] == null
          ? null
          : ApprovedBy.fromJson(json['note'] as Map<String, dynamic>),
  companyEmail:
      json['company_email'] == null
          ? null
          : ApprovedBy.fromJson(json['company_email'] as Map<String, dynamic>),
  approvedBy:
      json['approved_by'] == null
          ? null
          : ApprovedBy.fromJson(json['approved_by'] as Map<String, dynamic>),
  ownershipStatus:
      json['ownership_status'] == null
          ? null
          : ApprovedBy.fromJson(
            json['ownership_status'] as Map<String, dynamic>,
          ),
  companyStorePhoto:
      json['company_store_photo'] == null
          ? null
          : CompanyStorePhoto.fromJson(
            json['company_store_photo'] as Map<String, dynamic>,
          ),
  companyName:
      json['company_name'] == null
          ? null
          : ApprovedBy.fromJson(json['company_name'] as Map<String, dynamic>),
  ownerPhoneNumber:
      json['owner_phone_number'] == null
          ? null
          : ApprovedBy.fromJson(
            json['owner_phone_number'] as Map<String, dynamic>,
          ),
  blacklisted:
      json['blacklisted'] == null
          ? null
          : Blacklisted.fromJson(json['blacklisted'] as Map<String, dynamic>),
  companyPhoneNumber:
      json['company_phone_number'] == null
          ? null
          : ApprovedBy.fromJson(
            json['company_phone_number'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'company_store_condition': instance.companyStoreCondition,
      'owner_name': instance.ownerName,
      'subscription_type': instance.subscriptionType,
      'customer_type': instance.customerType,
      'company_location': instance.companyLocation,
      'owner_address': instance.ownerAddress,
      'owner_national_id': instance.ownerNationalId,
      'owner_tax_id': instance.ownerTaxId,
      'requested_by': instance.requestedBy,
      'owner_national_id_photo': instance.ownerNationalIdPhoto,
      'company_address': instance.companyAddress,
      'note': instance.note,
      'company_email': instance.companyEmail,
      'approved_by': instance.approvedBy,
      'ownership_status': instance.ownershipStatus,
      'company_store_photo': instance.companyStorePhoto,
      'company_name': instance.companyName,
      'owner_phone_number': instance.ownerPhoneNumber,
      'blacklisted': instance.blacklisted,
      'company_phone_number': instance.companyPhoneNumber,
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
    _$AccuracyImpl(doubleValue: (json['doubleValue'] as num?)?.toDouble());

Map<String, dynamic> _$$AccuracyImplToJson(_$AccuracyImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$ItudeImpl _$$ItudeImplFromJson(Map<String, dynamic> json) =>
    _$ItudeImpl(doubleValue: (json['doubleValue'] as num?)?.toDouble());

Map<String, dynamic> _$$ItudeImplToJson(_$ItudeImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$CompanyStorePhotoImpl _$$CompanyStorePhotoImplFromJson(
  Map<String, dynamic> json,
) => _$CompanyStorePhotoImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$CompanyStorePhotoImplToJson(
  _$CompanyStorePhotoImpl instance,
) => <String, dynamic>{'stringValue': instance.stringValue};
