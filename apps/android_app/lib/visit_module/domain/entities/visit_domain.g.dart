// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisitDomainImpl _$$VisitDomainImplFromJson(Map<String, dynamic> json) =>
    _$VisitDomainImpl(
      name: json['name'] as String?,
      fields:
          json['fields'] == null
              ? null
              : VisitDomainFields.fromJson(
                json['fields'] as Map<String, dynamic>,
              ),
      createTime: json['createTime'] as String?,
      updateTime: json['updateTime'] as String?,
    );

Map<String, dynamic> _$$VisitDomainImplToJson(_$VisitDomainImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fields': instance.fields,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
    };

_$VisitDomainFieldsImpl _$$VisitDomainFieldsImplFromJson(
  Map<String, dynamic> json,
) => _$VisitDomainFieldsImpl(
  visitDate:
      json['visit_date'] == null
          ? null
          : VisitDate.fromJson(json['visit_date'] as Map<String, dynamic>),
  visitPurpose:
      json['visit_purpose'] == null
          ? null
          : CustomerId.fromJson(json['visit_purpose'] as Map<String, dynamic>),
  visitNotes:
      json['visit_notes'] == null
          ? null
          : CustomerId.fromJson(json['visit_notes'] as Map<String, dynamic>),
  visitStatus:
      json['visit_status'] == null
          ? null
          : CustomerId.fromJson(json['visit_status'] as Map<String, dynamic>),
  salesId:
      json['sales_id'] == null
          ? null
          : CustomerId.fromJson(json['sales_id'] as Map<String, dynamic>),
  customerId:
      json['customer_id'] == null
          ? null
          : CustomerId.fromJson(json['customer_id'] as Map<String, dynamic>),
  location:
      json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$VisitDomainFieldsImplToJson(
  _$VisitDomainFieldsImpl instance,
) => <String, dynamic>{
  'visit_date': instance.visitDate,
  'visit_purpose': instance.visitPurpose,
  'visit_notes': instance.visitNotes,
  'visit_status': instance.visitStatus,
  'sales_id': instance.salesId,
  'customer_id': instance.customerId,
  'location': instance.location,
};

_$CustomerIdImpl _$$CustomerIdImplFromJson(Map<String, dynamic> json) =>
    _$CustomerIdImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$CustomerIdImplToJson(_$CustomerIdImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

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
      latitude:
          json['latitude'] == null
              ? null
              : Itude.fromJson(json['latitude'] as Map<String, dynamic>),
      longitude:
          json['longitude'] == null
              ? null
              : Itude.fromJson(json['longitude'] as Map<String, dynamic>),
      accuracy:
          json['accuracy'] == null
              ? null
              : Accuracy.fromJson(json['accuracy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MapValueFieldsImplToJson(
  _$MapValueFieldsImpl instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'accuracy': instance.accuracy,
};

_$AccuracyImpl _$$AccuracyImplFromJson(Map<String, dynamic> json) =>
    _$AccuracyImpl(doubleValue: (json['doubleValue'] as num?)?.toInt());

Map<String, dynamic> _$$AccuracyImplToJson(_$AccuracyImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$ItudeImpl _$$ItudeImplFromJson(Map<String, dynamic> json) =>
    _$ItudeImpl(doubleValue: (json['doubleValue'] as num?)?.toDouble());

Map<String, dynamic> _$$ItudeImplToJson(_$ItudeImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$VisitDateImpl _$$VisitDateImplFromJson(Map<String, dynamic> json) =>
    _$VisitDateImpl(timestampValue: json['timestampValue'] as String?);

Map<String, dynamic> _$$VisitDateImplToJson(_$VisitDateImpl instance) =>
    <String, dynamic>{'timestampValue': instance.timestampValue};
