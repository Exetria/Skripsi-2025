// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceDomainImpl _$$AttendanceDomainImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceDomainImpl(
  name: json['name'] as String?,
  fields:
      json['fields'] == null
          ? null
          : AttendanceDomainFields.fromJson(
            json['fields'] as Map<String, dynamic>,
          ),
  createTime: json['createTime'] as String?,
  updateTime: json['updateTime'] as String?,
);

Map<String, dynamic> _$$AttendanceDomainImplToJson(
  _$AttendanceDomainImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'fields': instance.fields,
  'createTime': instance.createTime,
  'updateTime': instance.updateTime,
};

_$AttendanceDomainFieldsImpl _$$AttendanceDomainFieldsImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceDomainFieldsImpl(
  checkinTime:
      json['checkin_time'] == null
          ? null
          : CheckTime.fromJson(json['checkin_time'] as Map<String, dynamic>),
  checkinLocation:
      json['checkin_location'] == null
          ? null
          : CheckLocation.fromJson(
            json['checkin_location'] as Map<String, dynamic>,
          ),
  createdBy:
      json['created_by'] == null
          ? null
          : CreatedBy.fromJson(json['created_by'] as Map<String, dynamic>),
  checkoutLocation:
      json['checkout_location'] == null
          ? null
          : CheckLocation.fromJson(
            json['checkout_location'] as Map<String, dynamic>,
          ),
  checkoutTime:
      json['checkout_time'] == null
          ? null
          : CheckTime.fromJson(json['checkout_time'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AttendanceDomainFieldsImplToJson(
  _$AttendanceDomainFieldsImpl instance,
) => <String, dynamic>{
  'checkin_time': instance.checkinTime,
  'checkin_location': instance.checkinLocation,
  'created_by': instance.createdBy,
  'checkout_location': instance.checkoutLocation,
  'checkout_time': instance.checkoutTime,
};

_$CheckLocationImpl _$$CheckLocationImplFromJson(Map<String, dynamic> json) =>
    _$CheckLocationImpl(
      mapValue:
          json['mapValue'] == null
              ? null
              : MapValue.fromJson(json['mapValue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckLocationImplToJson(_$CheckLocationImpl instance) =>
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
              : Accuracy.fromJson(json['latitude'] as Map<String, dynamic>),
      longitude:
          json['longitude'] == null
              ? null
              : Accuracy.fromJson(json['longitude'] as Map<String, dynamic>),
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

_$CheckTimeImpl _$$CheckTimeImplFromJson(Map<String, dynamic> json) =>
    _$CheckTimeImpl(timestampValue: json['timestampValue'] as String?);

Map<String, dynamic> _$$CheckTimeImplToJson(_$CheckTimeImpl instance) =>
    <String, dynamic>{'timestampValue': instance.timestampValue};

_$CreatedByImpl _$$CreatedByImplFromJson(Map<String, dynamic> json) =>
    _$CreatedByImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$CreatedByImplToJson(_$CreatedByImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};
