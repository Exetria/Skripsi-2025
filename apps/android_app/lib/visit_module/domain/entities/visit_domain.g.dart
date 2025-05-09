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
              : Fields.fromJson(json['fields'] as Map<String, dynamic>),
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

_$FieldsImpl _$$FieldsImplFromJson(Map<String, dynamic> json) => _$FieldsImpl(
  visits:
      json['visits'] == null
          ? null
          : Visits.fromJson(json['visits'] as Map<String, dynamic>),
  createdBy:
      json['created_by'] == null
          ? null
          : CreatedBy.fromJson(json['created_by'] as Map<String, dynamic>),
  visitDate:
      json['visit_date'] == null
          ? null
          : VisitDate.fromJson(json['visit_date'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'visits': instance.visits,
      'created_by': instance.createdBy,
      'visit_date': instance.visitDate,
    };

_$CreatedByImpl _$$CreatedByImplFromJson(Map<String, dynamic> json) =>
    _$CreatedByImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$CreatedByImplToJson(_$CreatedByImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

_$VisitDateImpl _$$VisitDateImplFromJson(Map<String, dynamic> json) =>
    _$VisitDateImpl(timestampValue: json['timestampValue'] as String?);

Map<String, dynamic> _$$VisitDateImplToJson(_$VisitDateImpl instance) =>
    <String, dynamic>{'timestampValue': instance.timestampValue};

_$VisitsImpl _$$VisitsImplFromJson(Map<String, dynamic> json) => _$VisitsImpl(
  arrayValue:
      json['arrayValue'] == null
          ? null
          : ArrayValue.fromJson(json['arrayValue'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$VisitsImplToJson(_$VisitsImpl instance) =>
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
          : ValueMapValue.fromJson(json['mapValue'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ValueImplToJson(_$ValueImpl instance) =>
    <String, dynamic>{'mapValue': instance.mapValue};

_$ValueMapValueImpl _$$ValueMapValueImplFromJson(Map<String, dynamic> json) =>
    _$ValueMapValueImpl(
      fields:
          json['fields'] == null
              ? null
              : PurpleFields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ValueMapValueImplToJson(_$ValueMapValueImpl instance) =>
    <String, dynamic>{'fields': instance.fields};

_$PurpleFieldsImpl _$$PurpleFieldsImplFromJson(Map<String, dynamic> json) =>
    _$PurpleFieldsImpl(
      customerId:
          json['customer_id'] == null
              ? null
              : CreatedBy.fromJson(json['customer_id'] as Map<String, dynamic>),
      visitStatus:
          json['visit_status'] == null
              ? null
              : VisitStatus.fromJson(
                json['visit_status'] as Map<String, dynamic>,
              ),
      visitNotes:
          json['visit_notes'] == null
              ? null
              : CreatedBy.fromJson(json['visit_notes'] as Map<String, dynamic>),
      location:
          json['location'] == null
              ? null
              : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PurpleFieldsImplToJson(_$PurpleFieldsImpl instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'visit_status': instance.visitStatus,
      'visit_notes': instance.visitNotes,
      'location': instance.location,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      mapValue:
          json['mapValue'] == null
              ? null
              : LocationMapValue.fromJson(
                json['mapValue'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{'mapValue': instance.mapValue};

_$LocationMapValueImpl _$$LocationMapValueImplFromJson(
  Map<String, dynamic> json,
) => _$LocationMapValueImpl(
  fields:
      json['fields'] == null
          ? null
          : FluffyFields.fromJson(json['fields'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$LocationMapValueImplToJson(
  _$LocationMapValueImpl instance,
) => <String, dynamic>{'fields': instance.fields};

_$FluffyFieldsImpl _$$FluffyFieldsImplFromJson(Map<String, dynamic> json) =>
    _$FluffyFieldsImpl(
      latitude:
          json['latitude'] == null
              ? null
              : Accuracy.fromJson(json['latitude'] as Map<String, dynamic>),
      longitude:
          json['longitude'] == null
              ? null
              : Accuracy.fromJson(json['longitude'] as Map<String, dynamic>),
      accuracy:
          json['accuracy'] == null
              ? null
              : Accuracy.fromJson(json['accuracy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FluffyFieldsImplToJson(_$FluffyFieldsImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'accuracy': instance.accuracy,
    };

_$AccuracyImpl _$$AccuracyImplFromJson(Map<String, dynamic> json) =>
    _$AccuracyImpl(doubleValue: (json['doubleValue'] as num?)?.toDouble());

Map<String, dynamic> _$$AccuracyImplToJson(_$AccuracyImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$VisitStatusImpl _$$VisitStatusImplFromJson(Map<String, dynamic> json) =>
    _$VisitStatusImpl(integerValue: json['integerValue'] as String?);

Map<String, dynamic> _$$VisitStatusImplToJson(_$VisitStatusImpl instance) =>
    <String, dynamic>{'integerValue': instance.integerValue};
