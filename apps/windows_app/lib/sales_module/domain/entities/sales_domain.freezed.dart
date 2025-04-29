// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SalesDomain _$SalesDomainFromJson(Map<String, dynamic> json) {
  return _SalesDomain.fromJson(json);
}

/// @nodoc
mixin _$SalesDomain {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'fields')
  Fields? get fields => throw _privateConstructorUsedError;
  @JsonKey(name: 'createTime')
  String? get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateTime')
  String? get updateTime => throw _privateConstructorUsedError;

  /// Serializes this SalesDomain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesDomainCopyWith<SalesDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesDomainCopyWith<$Res> {
  factory $SalesDomainCopyWith(
    SalesDomain value,
    $Res Function(SalesDomain) then,
  ) = _$SalesDomainCopyWithImpl<$Res, SalesDomain>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  });

  $FieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class _$SalesDomainCopyWithImpl<$Res, $Val extends SalesDomain>
    implements $SalesDomainCopyWith<$Res> {
  _$SalesDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesDomain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fields = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(
      _value.copyWith(
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            fields:
                freezed == fields
                    ? _value.fields
                    : fields // ignore: cast_nullable_to_non_nullable
                        as Fields?,
            createTime:
                freezed == createTime
                    ? _value.createTime
                    : createTime // ignore: cast_nullable_to_non_nullable
                        as String?,
            updateTime:
                freezed == updateTime
                    ? _value.updateTime
                    : updateTime // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of SalesDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FieldsCopyWith<$Res>? get fields {
    if (_value.fields == null) {
      return null;
    }

    return $FieldsCopyWith<$Res>(_value.fields!, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SalesDomainImplCopyWith<$Res>
    implements $SalesDomainCopyWith<$Res> {
  factory _$$SalesDomainImplCopyWith(
    _$SalesDomainImpl value,
    $Res Function(_$SalesDomainImpl) then,
  ) = __$$SalesDomainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  });

  @override
  $FieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class __$$SalesDomainImplCopyWithImpl<$Res>
    extends _$SalesDomainCopyWithImpl<$Res, _$SalesDomainImpl>
    implements _$$SalesDomainImplCopyWith<$Res> {
  __$$SalesDomainImplCopyWithImpl(
    _$SalesDomainImpl _value,
    $Res Function(_$SalesDomainImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalesDomain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fields = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(
      _$SalesDomainImpl(
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        fields:
            freezed == fields
                ? _value.fields
                : fields // ignore: cast_nullable_to_non_nullable
                    as Fields?,
        createTime:
            freezed == createTime
                ? _value.createTime
                : createTime // ignore: cast_nullable_to_non_nullable
                    as String?,
        updateTime:
            freezed == updateTime
                ? _value.updateTime
                : updateTime // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesDomainImpl implements _SalesDomain {
  const _$SalesDomainImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'fields') this.fields,
    @JsonKey(name: 'createTime') this.createTime,
    @JsonKey(name: 'updateTime') this.updateTime,
  });

  factory _$SalesDomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesDomainImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'fields')
  final Fields? fields;
  @override
  @JsonKey(name: 'createTime')
  final String? createTime;
  @override
  @JsonKey(name: 'updateTime')
  final String? updateTime;

  @override
  String toString() {
    return 'SalesDomain(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesDomainImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fields, fields) || other.fields == fields) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, fields, createTime, updateTime);

  /// Create a copy of SalesDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesDomainImplCopyWith<_$SalesDomainImpl> get copyWith =>
      __$$SalesDomainImplCopyWithImpl<_$SalesDomainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesDomainImplToJson(this);
  }
}

abstract class _SalesDomain implements SalesDomain {
  const factory _SalesDomain({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'fields') final Fields? fields,
    @JsonKey(name: 'createTime') final String? createTime,
    @JsonKey(name: 'updateTime') final String? updateTime,
  }) = _$SalesDomainImpl;

  factory _SalesDomain.fromJson(Map<String, dynamic> json) =
      _$SalesDomainImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'fields')
  Fields? get fields;
  @override
  @JsonKey(name: 'createTime')
  String? get createTime;
  @override
  @JsonKey(name: 'updateTime')
  String? get updateTime;

  /// Create a copy of SalesDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesDomainImplCopyWith<_$SalesDomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return _Fields.fromJson(json);
}

/// @nodoc
mixin _$Fields {
  @JsonKey(name: 'assigned_customers')
  Assigned? get assignedCustomers => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  FullName? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  FullName? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  PhotoUrl? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  IsActive? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_products')
  Assigned? get assignedProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  FullName? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  FullName? get role => throw _privateConstructorUsedError;

  /// Serializes this Fields to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FieldsCopyWith<Fields> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldsCopyWith<$Res> {
  factory $FieldsCopyWith(Fields value, $Res Function(Fields) then) =
      _$FieldsCopyWithImpl<$Res, Fields>;
  @useResult
  $Res call({
    @JsonKey(name: 'assigned_customers') Assigned? assignedCustomers,
    @JsonKey(name: 'user_name') FullName? userName,
    @JsonKey(name: 'phone_number') FullName? phoneNumber,
    @JsonKey(name: 'photo_url') PhotoUrl? photoUrl,
    @JsonKey(name: 'is_active') IsActive? isActive,
    @JsonKey(name: 'assigned_products') Assigned? assignedProducts,
    @JsonKey(name: 'full_name') FullName? fullName,
    @JsonKey(name: 'role') FullName? role,
  });

  $AssignedCopyWith<$Res>? get assignedCustomers;
  $FullNameCopyWith<$Res>? get userName;
  $FullNameCopyWith<$Res>? get phoneNumber;
  $PhotoUrlCopyWith<$Res>? get photoUrl;
  $IsActiveCopyWith<$Res>? get isActive;
  $AssignedCopyWith<$Res>? get assignedProducts;
  $FullNameCopyWith<$Res>? get fullName;
  $FullNameCopyWith<$Res>? get role;
}

/// @nodoc
class _$FieldsCopyWithImpl<$Res, $Val extends Fields>
    implements $FieldsCopyWith<$Res> {
  _$FieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignedCustomers = freezed,
    Object? userName = freezed,
    Object? phoneNumber = freezed,
    Object? photoUrl = freezed,
    Object? isActive = freezed,
    Object? assignedProducts = freezed,
    Object? fullName = freezed,
    Object? role = freezed,
  }) {
    return _then(
      _value.copyWith(
            assignedCustomers:
                freezed == assignedCustomers
                    ? _value.assignedCustomers
                    : assignedCustomers // ignore: cast_nullable_to_non_nullable
                        as Assigned?,
            userName:
                freezed == userName
                    ? _value.userName
                    : userName // ignore: cast_nullable_to_non_nullable
                        as FullName?,
            phoneNumber:
                freezed == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as FullName?,
            photoUrl:
                freezed == photoUrl
                    ? _value.photoUrl
                    : photoUrl // ignore: cast_nullable_to_non_nullable
                        as PhotoUrl?,
            isActive:
                freezed == isActive
                    ? _value.isActive
                    : isActive // ignore: cast_nullable_to_non_nullable
                        as IsActive?,
            assignedProducts:
                freezed == assignedProducts
                    ? _value.assignedProducts
                    : assignedProducts // ignore: cast_nullable_to_non_nullable
                        as Assigned?,
            fullName:
                freezed == fullName
                    ? _value.fullName
                    : fullName // ignore: cast_nullable_to_non_nullable
                        as FullName?,
            role:
                freezed == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as FullName?,
          )
          as $Val,
    );
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssignedCopyWith<$Res>? get assignedCustomers {
    if (_value.assignedCustomers == null) {
      return null;
    }

    return $AssignedCopyWith<$Res>(_value.assignedCustomers!, (value) {
      return _then(_value.copyWith(assignedCustomers: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FullNameCopyWith<$Res>? get userName {
    if (_value.userName == null) {
      return null;
    }

    return $FullNameCopyWith<$Res>(_value.userName!, (value) {
      return _then(_value.copyWith(userName: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FullNameCopyWith<$Res>? get phoneNumber {
    if (_value.phoneNumber == null) {
      return null;
    }

    return $FullNameCopyWith<$Res>(_value.phoneNumber!, (value) {
      return _then(_value.copyWith(phoneNumber: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoUrlCopyWith<$Res>? get photoUrl {
    if (_value.photoUrl == null) {
      return null;
    }

    return $PhotoUrlCopyWith<$Res>(_value.photoUrl!, (value) {
      return _then(_value.copyWith(photoUrl: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IsActiveCopyWith<$Res>? get isActive {
    if (_value.isActive == null) {
      return null;
    }

    return $IsActiveCopyWith<$Res>(_value.isActive!, (value) {
      return _then(_value.copyWith(isActive: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssignedCopyWith<$Res>? get assignedProducts {
    if (_value.assignedProducts == null) {
      return null;
    }

    return $AssignedCopyWith<$Res>(_value.assignedProducts!, (value) {
      return _then(_value.copyWith(assignedProducts: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FullNameCopyWith<$Res>? get fullName {
    if (_value.fullName == null) {
      return null;
    }

    return $FullNameCopyWith<$Res>(_value.fullName!, (value) {
      return _then(_value.copyWith(fullName: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FullNameCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $FullNameCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FieldsImplCopyWith<$Res> implements $FieldsCopyWith<$Res> {
  factory _$$FieldsImplCopyWith(
    _$FieldsImpl value,
    $Res Function(_$FieldsImpl) then,
  ) = __$$FieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'assigned_customers') Assigned? assignedCustomers,
    @JsonKey(name: 'user_name') FullName? userName,
    @JsonKey(name: 'phone_number') FullName? phoneNumber,
    @JsonKey(name: 'photo_url') PhotoUrl? photoUrl,
    @JsonKey(name: 'is_active') IsActive? isActive,
    @JsonKey(name: 'assigned_products') Assigned? assignedProducts,
    @JsonKey(name: 'full_name') FullName? fullName,
    @JsonKey(name: 'role') FullName? role,
  });

  @override
  $AssignedCopyWith<$Res>? get assignedCustomers;
  @override
  $FullNameCopyWith<$Res>? get userName;
  @override
  $FullNameCopyWith<$Res>? get phoneNumber;
  @override
  $PhotoUrlCopyWith<$Res>? get photoUrl;
  @override
  $IsActiveCopyWith<$Res>? get isActive;
  @override
  $AssignedCopyWith<$Res>? get assignedProducts;
  @override
  $FullNameCopyWith<$Res>? get fullName;
  @override
  $FullNameCopyWith<$Res>? get role;
}

/// @nodoc
class __$$FieldsImplCopyWithImpl<$Res>
    extends _$FieldsCopyWithImpl<$Res, _$FieldsImpl>
    implements _$$FieldsImplCopyWith<$Res> {
  __$$FieldsImplCopyWithImpl(
    _$FieldsImpl _value,
    $Res Function(_$FieldsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignedCustomers = freezed,
    Object? userName = freezed,
    Object? phoneNumber = freezed,
    Object? photoUrl = freezed,
    Object? isActive = freezed,
    Object? assignedProducts = freezed,
    Object? fullName = freezed,
    Object? role = freezed,
  }) {
    return _then(
      _$FieldsImpl(
        assignedCustomers:
            freezed == assignedCustomers
                ? _value.assignedCustomers
                : assignedCustomers // ignore: cast_nullable_to_non_nullable
                    as Assigned?,
        userName:
            freezed == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                    as FullName?,
        phoneNumber:
            freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as FullName?,
        photoUrl:
            freezed == photoUrl
                ? _value.photoUrl
                : photoUrl // ignore: cast_nullable_to_non_nullable
                    as PhotoUrl?,
        isActive:
            freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                    as IsActive?,
        assignedProducts:
            freezed == assignedProducts
                ? _value.assignedProducts
                : assignedProducts // ignore: cast_nullable_to_non_nullable
                    as Assigned?,
        fullName:
            freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                    as FullName?,
        role:
            freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                    as FullName?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsImpl implements _Fields {
  const _$FieldsImpl({
    @JsonKey(name: 'assigned_customers') this.assignedCustomers,
    @JsonKey(name: 'user_name') this.userName,
    @JsonKey(name: 'phone_number') this.phoneNumber,
    @JsonKey(name: 'photo_url') this.photoUrl,
    @JsonKey(name: 'is_active') this.isActive,
    @JsonKey(name: 'assigned_products') this.assignedProducts,
    @JsonKey(name: 'full_name') this.fullName,
    @JsonKey(name: 'role') this.role,
  });

  factory _$FieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsImplFromJson(json);

  @override
  @JsonKey(name: 'assigned_customers')
  final Assigned? assignedCustomers;
  @override
  @JsonKey(name: 'user_name')
  final FullName? userName;
  @override
  @JsonKey(name: 'phone_number')
  final FullName? phoneNumber;
  @override
  @JsonKey(name: 'photo_url')
  final PhotoUrl? photoUrl;
  @override
  @JsonKey(name: 'is_active')
  final IsActive? isActive;
  @override
  @JsonKey(name: 'assigned_products')
  final Assigned? assignedProducts;
  @override
  @JsonKey(name: 'full_name')
  final FullName? fullName;
  @override
  @JsonKey(name: 'role')
  final FullName? role;

  @override
  String toString() {
    return 'Fields(assignedCustomers: $assignedCustomers, userName: $userName, phoneNumber: $phoneNumber, photoUrl: $photoUrl, isActive: $isActive, assignedProducts: $assignedProducts, fullName: $fullName, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsImpl &&
            (identical(other.assignedCustomers, assignedCustomers) ||
                other.assignedCustomers == assignedCustomers) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.assignedProducts, assignedProducts) ||
                other.assignedProducts == assignedProducts) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    assignedCustomers,
    userName,
    phoneNumber,
    photoUrl,
    isActive,
    assignedProducts,
    fullName,
    role,
  );

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldsImplCopyWith<_$FieldsImpl> get copyWith =>
      __$$FieldsImplCopyWithImpl<_$FieldsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldsImplToJson(this);
  }
}

abstract class _Fields implements Fields {
  const factory _Fields({
    @JsonKey(name: 'assigned_customers') final Assigned? assignedCustomers,
    @JsonKey(name: 'user_name') final FullName? userName,
    @JsonKey(name: 'phone_number') final FullName? phoneNumber,
    @JsonKey(name: 'photo_url') final PhotoUrl? photoUrl,
    @JsonKey(name: 'is_active') final IsActive? isActive,
    @JsonKey(name: 'assigned_products') final Assigned? assignedProducts,
    @JsonKey(name: 'full_name') final FullName? fullName,
    @JsonKey(name: 'role') final FullName? role,
  }) = _$FieldsImpl;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$FieldsImpl.fromJson;

  @override
  @JsonKey(name: 'assigned_customers')
  Assigned? get assignedCustomers;
  @override
  @JsonKey(name: 'user_name')
  FullName? get userName;
  @override
  @JsonKey(name: 'phone_number')
  FullName? get phoneNumber;
  @override
  @JsonKey(name: 'photo_url')
  PhotoUrl? get photoUrl;
  @override
  @JsonKey(name: 'is_active')
  IsActive? get isActive;
  @override
  @JsonKey(name: 'assigned_products')
  Assigned? get assignedProducts;
  @override
  @JsonKey(name: 'full_name')
  FullName? get fullName;
  @override
  @JsonKey(name: 'role')
  FullName? get role;

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldsImplCopyWith<_$FieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Assigned _$AssignedFromJson(Map<String, dynamic> json) {
  return _Assigned.fromJson(json);
}

/// @nodoc
mixin _$Assigned {
  @JsonKey(name: 'arrayValue')
  ArrayValue? get arrayValue => throw _privateConstructorUsedError;

  /// Serializes this Assigned to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Assigned
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssignedCopyWith<Assigned> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignedCopyWith<$Res> {
  factory $AssignedCopyWith(Assigned value, $Res Function(Assigned) then) =
      _$AssignedCopyWithImpl<$Res, Assigned>;
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') ArrayValue? arrayValue});

  $ArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class _$AssignedCopyWithImpl<$Res, $Val extends Assigned>
    implements $AssignedCopyWith<$Res> {
  _$AssignedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Assigned
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? arrayValue = freezed}) {
    return _then(
      _value.copyWith(
            arrayValue:
                freezed == arrayValue
                    ? _value.arrayValue
                    : arrayValue // ignore: cast_nullable_to_non_nullable
                        as ArrayValue?,
          )
          as $Val,
    );
  }

  /// Create a copy of Assigned
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArrayValueCopyWith<$Res>? get arrayValue {
    if (_value.arrayValue == null) {
      return null;
    }

    return $ArrayValueCopyWith<$Res>(_value.arrayValue!, (value) {
      return _then(_value.copyWith(arrayValue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssignedImplCopyWith<$Res>
    implements $AssignedCopyWith<$Res> {
  factory _$$AssignedImplCopyWith(
    _$AssignedImpl value,
    $Res Function(_$AssignedImpl) then,
  ) = __$$AssignedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') ArrayValue? arrayValue});

  @override
  $ArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class __$$AssignedImplCopyWithImpl<$Res>
    extends _$AssignedCopyWithImpl<$Res, _$AssignedImpl>
    implements _$$AssignedImplCopyWith<$Res> {
  __$$AssignedImplCopyWithImpl(
    _$AssignedImpl _value,
    $Res Function(_$AssignedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Assigned
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? arrayValue = freezed}) {
    return _then(
      _$AssignedImpl(
        arrayValue:
            freezed == arrayValue
                ? _value.arrayValue
                : arrayValue // ignore: cast_nullable_to_non_nullable
                    as ArrayValue?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignedImpl implements _Assigned {
  const _$AssignedImpl({@JsonKey(name: 'arrayValue') this.arrayValue});

  factory _$AssignedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignedImplFromJson(json);

  @override
  @JsonKey(name: 'arrayValue')
  final ArrayValue? arrayValue;

  @override
  String toString() {
    return 'Assigned(arrayValue: $arrayValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignedImpl &&
            (identical(other.arrayValue, arrayValue) ||
                other.arrayValue == arrayValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arrayValue);

  /// Create a copy of Assigned
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignedImplCopyWith<_$AssignedImpl> get copyWith =>
      __$$AssignedImplCopyWithImpl<_$AssignedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignedImplToJson(this);
  }
}

abstract class _Assigned implements Assigned {
  const factory _Assigned({
    @JsonKey(name: 'arrayValue') final ArrayValue? arrayValue,
  }) = _$AssignedImpl;

  factory _Assigned.fromJson(Map<String, dynamic> json) =
      _$AssignedImpl.fromJson;

  @override
  @JsonKey(name: 'arrayValue')
  ArrayValue? get arrayValue;

  /// Create a copy of Assigned
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignedImplCopyWith<_$AssignedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArrayValue _$ArrayValueFromJson(Map<String, dynamic> json) {
  return _ArrayValue.fromJson(json);
}

/// @nodoc
mixin _$ArrayValue {
  @JsonKey(name: 'values')
  List<FullName>? get values => throw _privateConstructorUsedError;

  /// Serializes this ArrayValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArrayValueCopyWith<ArrayValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArrayValueCopyWith<$Res> {
  factory $ArrayValueCopyWith(
    ArrayValue value,
    $Res Function(ArrayValue) then,
  ) = _$ArrayValueCopyWithImpl<$Res, ArrayValue>;
  @useResult
  $Res call({@JsonKey(name: 'values') List<FullName>? values});
}

/// @nodoc
class _$ArrayValueCopyWithImpl<$Res, $Val extends ArrayValue>
    implements $ArrayValueCopyWith<$Res> {
  _$ArrayValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? values = freezed}) {
    return _then(
      _value.copyWith(
            values:
                freezed == values
                    ? _value.values
                    : values // ignore: cast_nullable_to_non_nullable
                        as List<FullName>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArrayValueImplCopyWith<$Res>
    implements $ArrayValueCopyWith<$Res> {
  factory _$$ArrayValueImplCopyWith(
    _$ArrayValueImpl value,
    $Res Function(_$ArrayValueImpl) then,
  ) = __$$ArrayValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'values') List<FullName>? values});
}

/// @nodoc
class __$$ArrayValueImplCopyWithImpl<$Res>
    extends _$ArrayValueCopyWithImpl<$Res, _$ArrayValueImpl>
    implements _$$ArrayValueImplCopyWith<$Res> {
  __$$ArrayValueImplCopyWithImpl(
    _$ArrayValueImpl _value,
    $Res Function(_$ArrayValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? values = freezed}) {
    return _then(
      _$ArrayValueImpl(
        values:
            freezed == values
                ? _value._values
                : values // ignore: cast_nullable_to_non_nullable
                    as List<FullName>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ArrayValueImpl implements _ArrayValue {
  const _$ArrayValueImpl({
    @JsonKey(name: 'values') final List<FullName>? values,
  }) : _values = values;

  factory _$ArrayValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArrayValueImplFromJson(json);

  final List<FullName>? _values;
  @override
  @JsonKey(name: 'values')
  List<FullName>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ArrayValue(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArrayValueImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  /// Create a copy of ArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArrayValueImplCopyWith<_$ArrayValueImpl> get copyWith =>
      __$$ArrayValueImplCopyWithImpl<_$ArrayValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArrayValueImplToJson(this);
  }
}

abstract class _ArrayValue implements ArrayValue {
  const factory _ArrayValue({
    @JsonKey(name: 'values') final List<FullName>? values,
  }) = _$ArrayValueImpl;

  factory _ArrayValue.fromJson(Map<String, dynamic> json) =
      _$ArrayValueImpl.fromJson;

  @override
  @JsonKey(name: 'values')
  List<FullName>? get values;

  /// Create a copy of ArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArrayValueImplCopyWith<_$ArrayValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FullName _$FullNameFromJson(Map<String, dynamic> json) {
  return _FullName.fromJson(json);
}

/// @nodoc
mixin _$FullName {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this FullName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FullName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FullNameCopyWith<FullName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullNameCopyWith<$Res> {
  factory $FullNameCopyWith(FullName value, $Res Function(FullName) then) =
      _$FullNameCopyWithImpl<$Res, FullName>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$FullNameCopyWithImpl<$Res, $Val extends FullName>
    implements $FullNameCopyWith<$Res> {
  _$FullNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FullName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _value.copyWith(
            stringValue:
                freezed == stringValue
                    ? _value.stringValue
                    : stringValue // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FullNameImplCopyWith<$Res>
    implements $FullNameCopyWith<$Res> {
  factory _$$FullNameImplCopyWith(
    _$FullNameImpl value,
    $Res Function(_$FullNameImpl) then,
  ) = __$$FullNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$FullNameImplCopyWithImpl<$Res>
    extends _$FullNameCopyWithImpl<$Res, _$FullNameImpl>
    implements _$$FullNameImplCopyWith<$Res> {
  __$$FullNameImplCopyWithImpl(
    _$FullNameImpl _value,
    $Res Function(_$FullNameImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FullName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$FullNameImpl(
        stringValue:
            freezed == stringValue
                ? _value.stringValue
                : stringValue // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FullNameImpl implements _FullName {
  const _$FullNameImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$FullNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$FullNameImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'FullName(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullNameImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of FullName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FullNameImplCopyWith<_$FullNameImpl> get copyWith =>
      __$$FullNameImplCopyWithImpl<_$FullNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FullNameImplToJson(this);
  }
}

abstract class _FullName implements FullName {
  const factory _FullName({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$FullNameImpl;

  factory _FullName.fromJson(Map<String, dynamic> json) =
      _$FullNameImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of FullName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FullNameImplCopyWith<_$FullNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IsActive _$IsActiveFromJson(Map<String, dynamic> json) {
  return _IsActive.fromJson(json);
}

/// @nodoc
mixin _$IsActive {
  @JsonKey(name: 'booleanValue')
  bool? get booleanValue => throw _privateConstructorUsedError;

  /// Serializes this IsActive to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IsActive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IsActiveCopyWith<IsActive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsActiveCopyWith<$Res> {
  factory $IsActiveCopyWith(IsActive value, $Res Function(IsActive) then) =
      _$IsActiveCopyWithImpl<$Res, IsActive>;
  @useResult
  $Res call({@JsonKey(name: 'booleanValue') bool? booleanValue});
}

/// @nodoc
class _$IsActiveCopyWithImpl<$Res, $Val extends IsActive>
    implements $IsActiveCopyWith<$Res> {
  _$IsActiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IsActive
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? booleanValue = freezed}) {
    return _then(
      _value.copyWith(
            booleanValue:
                freezed == booleanValue
                    ? _value.booleanValue
                    : booleanValue // ignore: cast_nullable_to_non_nullable
                        as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IsActiveImplCopyWith<$Res>
    implements $IsActiveCopyWith<$Res> {
  factory _$$IsActiveImplCopyWith(
    _$IsActiveImpl value,
    $Res Function(_$IsActiveImpl) then,
  ) = __$$IsActiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'booleanValue') bool? booleanValue});
}

/// @nodoc
class __$$IsActiveImplCopyWithImpl<$Res>
    extends _$IsActiveCopyWithImpl<$Res, _$IsActiveImpl>
    implements _$$IsActiveImplCopyWith<$Res> {
  __$$IsActiveImplCopyWithImpl(
    _$IsActiveImpl _value,
    $Res Function(_$IsActiveImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IsActive
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? booleanValue = freezed}) {
    return _then(
      _$IsActiveImpl(
        booleanValue:
            freezed == booleanValue
                ? _value.booleanValue
                : booleanValue // ignore: cast_nullable_to_non_nullable
                    as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IsActiveImpl implements _IsActive {
  const _$IsActiveImpl({@JsonKey(name: 'booleanValue') this.booleanValue});

  factory _$IsActiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$IsActiveImplFromJson(json);

  @override
  @JsonKey(name: 'booleanValue')
  final bool? booleanValue;

  @override
  String toString() {
    return 'IsActive(booleanValue: $booleanValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsActiveImpl &&
            (identical(other.booleanValue, booleanValue) ||
                other.booleanValue == booleanValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, booleanValue);

  /// Create a copy of IsActive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsActiveImplCopyWith<_$IsActiveImpl> get copyWith =>
      __$$IsActiveImplCopyWithImpl<_$IsActiveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IsActiveImplToJson(this);
  }
}

abstract class _IsActive implements IsActive {
  const factory _IsActive({
    @JsonKey(name: 'booleanValue') final bool? booleanValue,
  }) = _$IsActiveImpl;

  factory _IsActive.fromJson(Map<String, dynamic> json) =
      _$IsActiveImpl.fromJson;

  @override
  @JsonKey(name: 'booleanValue')
  bool? get booleanValue;

  /// Create a copy of IsActive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsActiveImplCopyWith<_$IsActiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoUrl _$PhotoUrlFromJson(Map<String, dynamic> json) {
  return _PhotoUrl.fromJson(json);
}

/// @nodoc
mixin _$PhotoUrl {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this PhotoUrl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoUrlCopyWith<PhotoUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoUrlCopyWith<$Res> {
  factory $PhotoUrlCopyWith(PhotoUrl value, $Res Function(PhotoUrl) then) =
      _$PhotoUrlCopyWithImpl<$Res, PhotoUrl>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$PhotoUrlCopyWithImpl<$Res, $Val extends PhotoUrl>
    implements $PhotoUrlCopyWith<$Res> {
  _$PhotoUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _value.copyWith(
            stringValue:
                freezed == stringValue
                    ? _value.stringValue
                    : stringValue // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PhotoUrlImplCopyWith<$Res>
    implements $PhotoUrlCopyWith<$Res> {
  factory _$$PhotoUrlImplCopyWith(
    _$PhotoUrlImpl value,
    $Res Function(_$PhotoUrlImpl) then,
  ) = __$$PhotoUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$PhotoUrlImplCopyWithImpl<$Res>
    extends _$PhotoUrlCopyWithImpl<$Res, _$PhotoUrlImpl>
    implements _$$PhotoUrlImplCopyWith<$Res> {
  __$$PhotoUrlImplCopyWithImpl(
    _$PhotoUrlImpl _value,
    $Res Function(_$PhotoUrlImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PhotoUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$PhotoUrlImpl(
        stringValue:
            freezed == stringValue
                ? _value.stringValue
                : stringValue // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoUrlImpl implements _PhotoUrl {
  const _$PhotoUrlImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$PhotoUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoUrlImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'PhotoUrl(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoUrlImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of PhotoUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoUrlImplCopyWith<_$PhotoUrlImpl> get copyWith =>
      __$$PhotoUrlImplCopyWithImpl<_$PhotoUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoUrlImplToJson(this);
  }
}

abstract class _PhotoUrl implements PhotoUrl {
  const factory _PhotoUrl({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$PhotoUrlImpl;

  factory _PhotoUrl.fromJson(Map<String, dynamic> json) =
      _$PhotoUrlImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of PhotoUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoUrlImplCopyWith<_$PhotoUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
