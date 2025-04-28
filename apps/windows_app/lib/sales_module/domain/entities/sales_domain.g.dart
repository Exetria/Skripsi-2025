// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesDomainImpl _$$SalesDomainImplFromJson(Map<String, dynamic> json) =>
    _$SalesDomainImpl(
      name: json['name'] as String?,
      fields:
          json['fields'] == null
              ? null
              : Fields.fromJson(json['fields'] as Map<String, dynamic>),
      createTime: json['createTime'] as String?,
      updateTime: json['updateTime'] as String?,
    );

Map<String, dynamic> _$$SalesDomainImplToJson(_$SalesDomainImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fields': instance.fields,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
    };

_$FieldsImpl _$$FieldsImplFromJson(Map<String, dynamic> json) => _$FieldsImpl(
  phoneNumber:
      json['phone_number'] == null
          ? null
          : FullName.fromJson(json['phone_number'] as Map<String, dynamic>),
  photoUrl:
      json['photo_url'] == null
          ? null
          : PhotoUrl.fromJson(json['photo_url'] as Map<String, dynamic>),
  assignedProducts:
      json['assigned_products'] == null
          ? null
          : Assigned.fromJson(
            json['assigned_products'] as Map<String, dynamic>,
          ),
  role:
      json['role'] == null
          ? null
          : FullName.fromJson(json['role'] as Map<String, dynamic>),
  assignedCustomers:
      json['assigned_customers'] == null
          ? null
          : Assigned.fromJson(
            json['assigned_customers'] as Map<String, dynamic>,
          ),
  isActive:
      json['is_active'] == null
          ? null
          : IsActive.fromJson(json['is_active'] as Map<String, dynamic>),
  fullName:
      json['full_name'] == null
          ? null
          : FullName.fromJson(json['full_name'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'photo_url': instance.photoUrl,
      'assigned_products': instance.assignedProducts,
      'role': instance.role,
      'assigned_customers': instance.assignedCustomers,
      'is_active': instance.isActive,
      'full_name': instance.fullName,
    };

_$AssignedImpl _$$AssignedImplFromJson(Map<String, dynamic> json) =>
    _$AssignedImpl(
      arrayValue:
          json['arrayValue'] == null
              ? null
              : ArrayValue.fromJson(json['arrayValue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AssignedImplToJson(_$AssignedImpl instance) =>
    <String, dynamic>{'arrayValue': instance.arrayValue};

_$ArrayValueImpl _$$ArrayValueImplFromJson(Map<String, dynamic> json) =>
    _$ArrayValueImpl(
      values:
          (json['values'] as List<dynamic>?)
              ?.map((e) => FullName.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$ArrayValueImplToJson(_$ArrayValueImpl instance) =>
    <String, dynamic>{'values': instance.values};

_$FullNameImpl _$$FullNameImplFromJson(Map<String, dynamic> json) =>
    _$FullNameImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$FullNameImplToJson(_$FullNameImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

_$IsActiveImpl _$$IsActiveImplFromJson(Map<String, dynamic> json) =>
    _$IsActiveImpl(booleanValue: json['booleanValue'] as bool?);

Map<String, dynamic> _$$IsActiveImplToJson(_$IsActiveImpl instance) =>
    <String, dynamic>{'booleanValue': instance.booleanValue};

_$PhotoUrlImpl _$$PhotoUrlImplFromJson(Map<String, dynamic> json) =>
    _$PhotoUrlImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$PhotoUrlImplToJson(_$PhotoUrlImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};
