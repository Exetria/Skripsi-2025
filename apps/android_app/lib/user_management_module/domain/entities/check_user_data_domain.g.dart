// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_user_data_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckUserDataDomainImpl _$$CheckUserDataDomainImplFromJson(
  Map<String, dynamic> json,
) => _$CheckUserDataDomainImpl(
  name: json['name'] as String?,
  fields:
      json['fields'] == null
          ? null
          : Fields.fromJson(json['fields'] as Map<String, dynamic>),
  createTime: json['createTime'] as String?,
  updateTime: json['updateTime'] as String?,
);

Map<String, dynamic> _$$CheckUserDataDomainImplToJson(
  _$CheckUserDataDomainImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'fields': instance.fields,
  'createTime': instance.createTime,
  'updateTime': instance.updateTime,
};

_$FieldsImpl _$$FieldsImplFromJson(Map<String, dynamic> json) => _$FieldsImpl(
  isActive:
      json['is_active'] == null
          ? null
          : IsActive.fromJson(json['is_active'] as Map<String, dynamic>),
  salesTarget:
      json['sales_target'] == null
          ? null
          : SalesTarget.fromJson(json['sales_target'] as Map<String, dynamic>),
  role:
      json['role'] == null
          ? null
          : Email.fromJson(json['role'] as Map<String, dynamic>),
  assignedCustomers:
      json['assigned_customers'] == null
          ? null
          : Assigned.fromJson(
            json['assigned_customers'] as Map<String, dynamic>,
          ),
  assignedProducts:
      json['assigned_products'] == null
          ? null
          : Assigned.fromJson(
            json['assigned_products'] as Map<String, dynamic>,
          ),
  email:
      json['email'] == null
          ? null
          : Email.fromJson(json['email'] as Map<String, dynamic>),
  phoneNumber:
      json['phone_number'] == null
          ? null
          : Email.fromJson(json['phone_number'] as Map<String, dynamic>),
  fcmToken:
      json['fcm_token'] == null
          ? null
          : Email.fromJson(json['fcm_token'] as Map<String, dynamic>),
  userName:
      json['user_name'] == null
          ? null
          : Email.fromJson(json['user_name'] as Map<String, dynamic>),
  photoUrl:
      json['photo_url'] == null
          ? null
          : Email.fromJson(json['photo_url'] as Map<String, dynamic>),
  fullName:
      json['full_name'] == null
          ? null
          : Email.fromJson(json['full_name'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$FieldsImplToJson(_$FieldsImpl instance) =>
    <String, dynamic>{
      'is_active': instance.isActive,
      'sales_target': instance.salesTarget,
      'role': instance.role,
      'assigned_customers': instance.assignedCustomers,
      'assigned_products': instance.assignedProducts,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'fcm_token': instance.fcmToken,
      'user_name': instance.userName,
      'photo_url': instance.photoUrl,
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
              ?.map((e) => Email.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$ArrayValueImplToJson(_$ArrayValueImpl instance) =>
    <String, dynamic>{'values': instance.values};

_$EmailImpl _$$EmailImplFromJson(Map<String, dynamic> json) =>
    _$EmailImpl(stringValue: json['stringValue'] as String?);

Map<String, dynamic> _$$EmailImplToJson(_$EmailImpl instance) =>
    <String, dynamic>{'stringValue': instance.stringValue};

_$IsActiveImpl _$$IsActiveImplFromJson(Map<String, dynamic> json) =>
    _$IsActiveImpl(booleanValue: json['booleanValue'] as bool?);

Map<String, dynamic> _$$IsActiveImplToJson(_$IsActiveImpl instance) =>
    <String, dynamic>{'booleanValue': instance.booleanValue};

_$SalesTargetImpl _$$SalesTargetImplFromJson(Map<String, dynamic> json) =>
    _$SalesTargetImpl(integerValue: json['integerValue'] as String?);

Map<String, dynamic> _$$SalesTargetImplToJson(_$SalesTargetImpl instance) =>
    <String, dynamic>{'integerValue': instance.integerValue};
