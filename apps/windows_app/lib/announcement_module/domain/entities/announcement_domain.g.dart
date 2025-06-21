// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementDomainImpl _$$AnnouncementDomainImplFromJson(
  Map<String, dynamic> json,
) => _$AnnouncementDomainImpl(
  name: json['name'] as String?,
  fields:
      json['fields'] == null
          ? null
          : Fields.fromJson(json['fields'] as Map<String, dynamic>),
  createTime: json['createTime'] as String?,
  updateTime: json['updateTime'] as String?,
);

Map<String, dynamic> _$$AnnouncementDomainImplToJson(
  _$AnnouncementDomainImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'fields': instance.fields,
  'createTime': instance.createTime,
  'updateTime': instance.updateTime,
};

_$FieldsImpl _$$FieldsImplFromJson(Map<String, dynamic> json) => _$FieldsImpl(
  title:
      json['title'] == null
          ? null
          : Content.fromJson(json['title'] as Map<String, dynamic>),
  content:
      json['content'] == null
          ? null
          : Content.fromJson(json['content'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{'title': instance.title, 'content': instance.content};

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) =>
    _$ContentImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};
