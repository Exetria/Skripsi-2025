// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_location_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LiveLocationDomainImpl _$$LiveLocationDomainImplFromJson(
  Map<String, dynamic> json,
) => _$LiveLocationDomainImpl(
  name: json['name'] as String?,
  fields:
      json['fields'] == null
          ? null
          : Fields.fromJson(json['fields'] as Map<String, dynamic>),
  createTime: json['createTime'] as String?,
  updateTime: json['updateTime'] as String?,
);

Map<String, dynamic> _$$LiveLocationDomainImplToJson(
  _$LiveLocationDomainImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'fields': instance.fields,
  'createTime': instance.createTime,
  'updateTime': instance.updateTime,
};

_$FieldsImpl _$$FieldsImplFromJson(Map<String, dynamic> json) => _$FieldsImpl(
  timestamp:
      json['timestamp'] == null
          ? null
          : Timestamp.fromJson(json['timestamp'] as Map<String, dynamic>),
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
  isMocked:
      json['isMocked'] == null
          ? null
          : IsMocked.fromJson(json['isMocked'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'accuracy': instance.accuracy,
      'isMocked': instance.isMocked,
    };

_$AccuracyImpl _$$AccuracyImplFromJson(Map<String, dynamic> json) =>
    _$AccuracyImpl(doubleValue: (json['doubleValue'] as num?)?.toDouble());

Map<String, dynamic> _$$AccuracyImplToJson(_$AccuracyImpl instance) =>
    <String, dynamic>{'doubleValue': instance.doubleValue};

_$IsMockedImpl _$$IsMockedImplFromJson(Map<String, dynamic> json) =>
    _$IsMockedImpl(booleanValue: json['booleanValue'] as bool?);

Map<String, dynamic> _$$IsMockedImplToJson(_$IsMockedImpl instance) =>
    <String, dynamic>{'booleanValue': instance.booleanValue};

_$TimestampImpl _$$TimestampImplFromJson(Map<String, dynamic> json) =>
    _$TimestampImpl(timestampValue: json['timestampValue'] as String?);

Map<String, dynamic> _$$TimestampImplToJson(_$TimestampImpl instance) =>
    <String, dynamic>{'timestampValue': instance.timestampValue};
