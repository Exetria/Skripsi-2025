// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerDomain _$CustomerDomainFromJson(Map<String, dynamic> json) {
  return _CustomerDomain.fromJson(json);
}

/// @nodoc
mixin _$CustomerDomain {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'fields')
  CustomerDomainFields? get fields => throw _privateConstructorUsedError;
  @JsonKey(name: 'createTime')
  String? get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateTime')
  String? get updateTime => throw _privateConstructorUsedError;

  /// Serializes this CustomerDomain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerDomainCopyWith<CustomerDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDomainCopyWith<$Res> {
  factory $CustomerDomainCopyWith(
    CustomerDomain value,
    $Res Function(CustomerDomain) then,
  ) = _$CustomerDomainCopyWithImpl<$Res, CustomerDomain>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') CustomerDomainFields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  });

  $CustomerDomainFieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class _$CustomerDomainCopyWithImpl<$Res, $Val extends CustomerDomain>
    implements $CustomerDomainCopyWith<$Res> {
  _$CustomerDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerDomain
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
                        as CustomerDomainFields?,
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

  /// Create a copy of CustomerDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerDomainFieldsCopyWith<$Res>? get fields {
    if (_value.fields == null) {
      return null;
    }

    return $CustomerDomainFieldsCopyWith<$Res>(_value.fields!, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerDomainImplCopyWith<$Res>
    implements $CustomerDomainCopyWith<$Res> {
  factory _$$CustomerDomainImplCopyWith(
    _$CustomerDomainImpl value,
    $Res Function(_$CustomerDomainImpl) then,
  ) = __$$CustomerDomainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') CustomerDomainFields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  });

  @override
  $CustomerDomainFieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class __$$CustomerDomainImplCopyWithImpl<$Res>
    extends _$CustomerDomainCopyWithImpl<$Res, _$CustomerDomainImpl>
    implements _$$CustomerDomainImplCopyWith<$Res> {
  __$$CustomerDomainImplCopyWithImpl(
    _$CustomerDomainImpl _value,
    $Res Function(_$CustomerDomainImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerDomain
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
      _$CustomerDomainImpl(
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        fields:
            freezed == fields
                ? _value.fields
                : fields // ignore: cast_nullable_to_non_nullable
                    as CustomerDomainFields?,
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
class _$CustomerDomainImpl implements _CustomerDomain {
  const _$CustomerDomainImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'fields') this.fields,
    @JsonKey(name: 'createTime') this.createTime,
    @JsonKey(name: 'updateTime') this.updateTime,
  });

  factory _$CustomerDomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDomainImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'fields')
  final CustomerDomainFields? fields;
  @override
  @JsonKey(name: 'createTime')
  final String? createTime;
  @override
  @JsonKey(name: 'updateTime')
  final String? updateTime;

  @override
  String toString() {
    return 'CustomerDomain(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDomainImpl &&
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

  /// Create a copy of CustomerDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDomainImplCopyWith<_$CustomerDomainImpl> get copyWith =>
      __$$CustomerDomainImplCopyWithImpl<_$CustomerDomainImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDomainImplToJson(this);
  }
}

abstract class _CustomerDomain implements CustomerDomain {
  const factory _CustomerDomain({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'fields') final CustomerDomainFields? fields,
    @JsonKey(name: 'createTime') final String? createTime,
    @JsonKey(name: 'updateTime') final String? updateTime,
  }) = _$CustomerDomainImpl;

  factory _CustomerDomain.fromJson(Map<String, dynamic> json) =
      _$CustomerDomainImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'fields')
  CustomerDomainFields? get fields;
  @override
  @JsonKey(name: 'createTime')
  String? get createTime;
  @override
  @JsonKey(name: 'updateTime')
  String? get updateTime;

  /// Create a copy of CustomerDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerDomainImplCopyWith<_$CustomerDomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerDomainFields _$CustomerDomainFieldsFromJson(Map<String, dynamic> json) {
  return _CustomerDomainFields.fromJson(json);
}

/// @nodoc
mixin _$CustomerDomainFields {
  @JsonKey(name: 'owner_phone_number')
  ApprovedBy? get ownerPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_code')
  ApprovedBy? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_store_condition')
  ApprovedBy? get companyStoreCondition => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_phone_number')
  ApprovedBy? get companyPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_tax_id')
  ApprovedBy? get ownerTaxId => throw _privateConstructorUsedError;
  @JsonKey(name: 'approved_by')
  ApprovedBy? get approvedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscription_type')
  ApprovedBy? get subscriptionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_address')
  ApprovedBy? get ownerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'ownership_status')
  ApprovedBy? get ownershipStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_email')
  ApprovedBy? get companyEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_location')
  CompanyLocation? get companyLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_by')
  ApprovedBy? get requestedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_national_id')
  ApprovedBy? get ownerNationalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_name')
  ApprovedBy? get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  ApprovedBy? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_national_id_photo')
  ApprovedBy? get ownerNationalIdPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_address')
  ApprovedBy? get companyAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_store_photo')
  ApprovedBy? get companyStorePhoto => throw _privateConstructorUsedError;

  /// Serializes this CustomerDomainFields to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerDomainFieldsCopyWith<CustomerDomainFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDomainFieldsCopyWith<$Res> {
  factory $CustomerDomainFieldsCopyWith(
    CustomerDomainFields value,
    $Res Function(CustomerDomainFields) then,
  ) = _$CustomerDomainFieldsCopyWithImpl<$Res, CustomerDomainFields>;
  @useResult
  $Res call({
    @JsonKey(name: 'owner_phone_number') ApprovedBy? ownerPhoneNumber,
    @JsonKey(name: 'customer_code') ApprovedBy? customerCode,
    @JsonKey(name: 'company_store_condition') ApprovedBy? companyStoreCondition,
    @JsonKey(name: 'company_phone_number') ApprovedBy? companyPhoneNumber,
    @JsonKey(name: 'owner_tax_id') ApprovedBy? ownerTaxId,
    @JsonKey(name: 'approved_by') ApprovedBy? approvedBy,
    @JsonKey(name: 'subscription_type') ApprovedBy? subscriptionType,
    @JsonKey(name: 'owner_address') ApprovedBy? ownerAddress,
    @JsonKey(name: 'ownership_status') ApprovedBy? ownershipStatus,
    @JsonKey(name: 'company_email') ApprovedBy? companyEmail,
    @JsonKey(name: 'company_location') CompanyLocation? companyLocation,
    @JsonKey(name: 'requested_by') ApprovedBy? requestedBy,
    @JsonKey(name: 'owner_national_id') ApprovedBy? ownerNationalId,
    @JsonKey(name: 'owner_name') ApprovedBy? ownerName,
    @JsonKey(name: 'company_name') ApprovedBy? companyName,
    @JsonKey(name: 'owner_national_id_photo') ApprovedBy? ownerNationalIdPhoto,
    @JsonKey(name: 'company_address') ApprovedBy? companyAddress,
    @JsonKey(name: 'company_store_photo') ApprovedBy? companyStorePhoto,
  });

  $ApprovedByCopyWith<$Res>? get ownerPhoneNumber;
  $ApprovedByCopyWith<$Res>? get customerCode;
  $ApprovedByCopyWith<$Res>? get companyStoreCondition;
  $ApprovedByCopyWith<$Res>? get companyPhoneNumber;
  $ApprovedByCopyWith<$Res>? get ownerTaxId;
  $ApprovedByCopyWith<$Res>? get approvedBy;
  $ApprovedByCopyWith<$Res>? get subscriptionType;
  $ApprovedByCopyWith<$Res>? get ownerAddress;
  $ApprovedByCopyWith<$Res>? get ownershipStatus;
  $ApprovedByCopyWith<$Res>? get companyEmail;
  $CompanyLocationCopyWith<$Res>? get companyLocation;
  $ApprovedByCopyWith<$Res>? get requestedBy;
  $ApprovedByCopyWith<$Res>? get ownerNationalId;
  $ApprovedByCopyWith<$Res>? get ownerName;
  $ApprovedByCopyWith<$Res>? get companyName;
  $ApprovedByCopyWith<$Res>? get ownerNationalIdPhoto;
  $ApprovedByCopyWith<$Res>? get companyAddress;
  $ApprovedByCopyWith<$Res>? get companyStorePhoto;
}

/// @nodoc
class _$CustomerDomainFieldsCopyWithImpl<
  $Res,
  $Val extends CustomerDomainFields
>
    implements $CustomerDomainFieldsCopyWith<$Res> {
  _$CustomerDomainFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerPhoneNumber = freezed,
    Object? customerCode = freezed,
    Object? companyStoreCondition = freezed,
    Object? companyPhoneNumber = freezed,
    Object? ownerTaxId = freezed,
    Object? approvedBy = freezed,
    Object? subscriptionType = freezed,
    Object? ownerAddress = freezed,
    Object? ownershipStatus = freezed,
    Object? companyEmail = freezed,
    Object? companyLocation = freezed,
    Object? requestedBy = freezed,
    Object? ownerNationalId = freezed,
    Object? ownerName = freezed,
    Object? companyName = freezed,
    Object? ownerNationalIdPhoto = freezed,
    Object? companyAddress = freezed,
    Object? companyStorePhoto = freezed,
  }) {
    return _then(
      _value.copyWith(
            ownerPhoneNumber:
                freezed == ownerPhoneNumber
                    ? _value.ownerPhoneNumber
                    : ownerPhoneNumber // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            customerCode:
                freezed == customerCode
                    ? _value.customerCode
                    : customerCode // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            companyStoreCondition:
                freezed == companyStoreCondition
                    ? _value.companyStoreCondition
                    : companyStoreCondition // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            companyPhoneNumber:
                freezed == companyPhoneNumber
                    ? _value.companyPhoneNumber
                    : companyPhoneNumber // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            ownerTaxId:
                freezed == ownerTaxId
                    ? _value.ownerTaxId
                    : ownerTaxId // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            approvedBy:
                freezed == approvedBy
                    ? _value.approvedBy
                    : approvedBy // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            subscriptionType:
                freezed == subscriptionType
                    ? _value.subscriptionType
                    : subscriptionType // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            ownerAddress:
                freezed == ownerAddress
                    ? _value.ownerAddress
                    : ownerAddress // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            ownershipStatus:
                freezed == ownershipStatus
                    ? _value.ownershipStatus
                    : ownershipStatus // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            companyEmail:
                freezed == companyEmail
                    ? _value.companyEmail
                    : companyEmail // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            companyLocation:
                freezed == companyLocation
                    ? _value.companyLocation
                    : companyLocation // ignore: cast_nullable_to_non_nullable
                        as CompanyLocation?,
            requestedBy:
                freezed == requestedBy
                    ? _value.requestedBy
                    : requestedBy // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            ownerNationalId:
                freezed == ownerNationalId
                    ? _value.ownerNationalId
                    : ownerNationalId // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            ownerName:
                freezed == ownerName
                    ? _value.ownerName
                    : ownerName // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            companyName:
                freezed == companyName
                    ? _value.companyName
                    : companyName // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            ownerNationalIdPhoto:
                freezed == ownerNationalIdPhoto
                    ? _value.ownerNationalIdPhoto
                    : ownerNationalIdPhoto // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            companyAddress:
                freezed == companyAddress
                    ? _value.companyAddress
                    : companyAddress // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
            companyStorePhoto:
                freezed == companyStorePhoto
                    ? _value.companyStorePhoto
                    : companyStorePhoto // ignore: cast_nullable_to_non_nullable
                        as ApprovedBy?,
          )
          as $Val,
    );
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get ownerPhoneNumber {
    if (_value.ownerPhoneNumber == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.ownerPhoneNumber!, (value) {
      return _then(_value.copyWith(ownerPhoneNumber: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get customerCode {
    if (_value.customerCode == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.customerCode!, (value) {
      return _then(_value.copyWith(customerCode: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get companyStoreCondition {
    if (_value.companyStoreCondition == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.companyStoreCondition!, (value) {
      return _then(_value.copyWith(companyStoreCondition: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get companyPhoneNumber {
    if (_value.companyPhoneNumber == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.companyPhoneNumber!, (value) {
      return _then(_value.copyWith(companyPhoneNumber: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get ownerTaxId {
    if (_value.ownerTaxId == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.ownerTaxId!, (value) {
      return _then(_value.copyWith(ownerTaxId: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get approvedBy {
    if (_value.approvedBy == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.approvedBy!, (value) {
      return _then(_value.copyWith(approvedBy: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get subscriptionType {
    if (_value.subscriptionType == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.subscriptionType!, (value) {
      return _then(_value.copyWith(subscriptionType: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get ownerAddress {
    if (_value.ownerAddress == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.ownerAddress!, (value) {
      return _then(_value.copyWith(ownerAddress: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get ownershipStatus {
    if (_value.ownershipStatus == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.ownershipStatus!, (value) {
      return _then(_value.copyWith(ownershipStatus: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get companyEmail {
    if (_value.companyEmail == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.companyEmail!, (value) {
      return _then(_value.copyWith(companyEmail: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyLocationCopyWith<$Res>? get companyLocation {
    if (_value.companyLocation == null) {
      return null;
    }

    return $CompanyLocationCopyWith<$Res>(_value.companyLocation!, (value) {
      return _then(_value.copyWith(companyLocation: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get requestedBy {
    if (_value.requestedBy == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.requestedBy!, (value) {
      return _then(_value.copyWith(requestedBy: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get ownerNationalId {
    if (_value.ownerNationalId == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.ownerNationalId!, (value) {
      return _then(_value.copyWith(ownerNationalId: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get ownerName {
    if (_value.ownerName == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.ownerName!, (value) {
      return _then(_value.copyWith(ownerName: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get companyName {
    if (_value.companyName == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.companyName!, (value) {
      return _then(_value.copyWith(companyName: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get ownerNationalIdPhoto {
    if (_value.ownerNationalIdPhoto == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.ownerNationalIdPhoto!, (value) {
      return _then(_value.copyWith(ownerNationalIdPhoto: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get companyAddress {
    if (_value.companyAddress == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.companyAddress!, (value) {
      return _then(_value.copyWith(companyAddress: value) as $Val);
    });
  }

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get companyStorePhoto {
    if (_value.companyStorePhoto == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.companyStorePhoto!, (value) {
      return _then(_value.copyWith(companyStorePhoto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerDomainFieldsImplCopyWith<$Res>
    implements $CustomerDomainFieldsCopyWith<$Res> {
  factory _$$CustomerDomainFieldsImplCopyWith(
    _$CustomerDomainFieldsImpl value,
    $Res Function(_$CustomerDomainFieldsImpl) then,
  ) = __$$CustomerDomainFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'owner_phone_number') ApprovedBy? ownerPhoneNumber,
    @JsonKey(name: 'customer_code') ApprovedBy? customerCode,
    @JsonKey(name: 'company_store_condition') ApprovedBy? companyStoreCondition,
    @JsonKey(name: 'company_phone_number') ApprovedBy? companyPhoneNumber,
    @JsonKey(name: 'owner_tax_id') ApprovedBy? ownerTaxId,
    @JsonKey(name: 'approved_by') ApprovedBy? approvedBy,
    @JsonKey(name: 'subscription_type') ApprovedBy? subscriptionType,
    @JsonKey(name: 'owner_address') ApprovedBy? ownerAddress,
    @JsonKey(name: 'ownership_status') ApprovedBy? ownershipStatus,
    @JsonKey(name: 'company_email') ApprovedBy? companyEmail,
    @JsonKey(name: 'company_location') CompanyLocation? companyLocation,
    @JsonKey(name: 'requested_by') ApprovedBy? requestedBy,
    @JsonKey(name: 'owner_national_id') ApprovedBy? ownerNationalId,
    @JsonKey(name: 'owner_name') ApprovedBy? ownerName,
    @JsonKey(name: 'company_name') ApprovedBy? companyName,
    @JsonKey(name: 'owner_national_id_photo') ApprovedBy? ownerNationalIdPhoto,
    @JsonKey(name: 'company_address') ApprovedBy? companyAddress,
    @JsonKey(name: 'company_store_photo') ApprovedBy? companyStorePhoto,
  });

  @override
  $ApprovedByCopyWith<$Res>? get ownerPhoneNumber;
  @override
  $ApprovedByCopyWith<$Res>? get customerCode;
  @override
  $ApprovedByCopyWith<$Res>? get companyStoreCondition;
  @override
  $ApprovedByCopyWith<$Res>? get companyPhoneNumber;
  @override
  $ApprovedByCopyWith<$Res>? get ownerTaxId;
  @override
  $ApprovedByCopyWith<$Res>? get approvedBy;
  @override
  $ApprovedByCopyWith<$Res>? get subscriptionType;
  @override
  $ApprovedByCopyWith<$Res>? get ownerAddress;
  @override
  $ApprovedByCopyWith<$Res>? get ownershipStatus;
  @override
  $ApprovedByCopyWith<$Res>? get companyEmail;
  @override
  $CompanyLocationCopyWith<$Res>? get companyLocation;
  @override
  $ApprovedByCopyWith<$Res>? get requestedBy;
  @override
  $ApprovedByCopyWith<$Res>? get ownerNationalId;
  @override
  $ApprovedByCopyWith<$Res>? get ownerName;
  @override
  $ApprovedByCopyWith<$Res>? get companyName;
  @override
  $ApprovedByCopyWith<$Res>? get ownerNationalIdPhoto;
  @override
  $ApprovedByCopyWith<$Res>? get companyAddress;
  @override
  $ApprovedByCopyWith<$Res>? get companyStorePhoto;
}

/// @nodoc
class __$$CustomerDomainFieldsImplCopyWithImpl<$Res>
    extends _$CustomerDomainFieldsCopyWithImpl<$Res, _$CustomerDomainFieldsImpl>
    implements _$$CustomerDomainFieldsImplCopyWith<$Res> {
  __$$CustomerDomainFieldsImplCopyWithImpl(
    _$CustomerDomainFieldsImpl _value,
    $Res Function(_$CustomerDomainFieldsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerPhoneNumber = freezed,
    Object? customerCode = freezed,
    Object? companyStoreCondition = freezed,
    Object? companyPhoneNumber = freezed,
    Object? ownerTaxId = freezed,
    Object? approvedBy = freezed,
    Object? subscriptionType = freezed,
    Object? ownerAddress = freezed,
    Object? ownershipStatus = freezed,
    Object? companyEmail = freezed,
    Object? companyLocation = freezed,
    Object? requestedBy = freezed,
    Object? ownerNationalId = freezed,
    Object? ownerName = freezed,
    Object? companyName = freezed,
    Object? ownerNationalIdPhoto = freezed,
    Object? companyAddress = freezed,
    Object? companyStorePhoto = freezed,
  }) {
    return _then(
      _$CustomerDomainFieldsImpl(
        ownerPhoneNumber:
            freezed == ownerPhoneNumber
                ? _value.ownerPhoneNumber
                : ownerPhoneNumber // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        customerCode:
            freezed == customerCode
                ? _value.customerCode
                : customerCode // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        companyStoreCondition:
            freezed == companyStoreCondition
                ? _value.companyStoreCondition
                : companyStoreCondition // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        companyPhoneNumber:
            freezed == companyPhoneNumber
                ? _value.companyPhoneNumber
                : companyPhoneNumber // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        ownerTaxId:
            freezed == ownerTaxId
                ? _value.ownerTaxId
                : ownerTaxId // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        approvedBy:
            freezed == approvedBy
                ? _value.approvedBy
                : approvedBy // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        subscriptionType:
            freezed == subscriptionType
                ? _value.subscriptionType
                : subscriptionType // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        ownerAddress:
            freezed == ownerAddress
                ? _value.ownerAddress
                : ownerAddress // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        ownershipStatus:
            freezed == ownershipStatus
                ? _value.ownershipStatus
                : ownershipStatus // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        companyEmail:
            freezed == companyEmail
                ? _value.companyEmail
                : companyEmail // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        companyLocation:
            freezed == companyLocation
                ? _value.companyLocation
                : companyLocation // ignore: cast_nullable_to_non_nullable
                    as CompanyLocation?,
        requestedBy:
            freezed == requestedBy
                ? _value.requestedBy
                : requestedBy // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        ownerNationalId:
            freezed == ownerNationalId
                ? _value.ownerNationalId
                : ownerNationalId // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        ownerName:
            freezed == ownerName
                ? _value.ownerName
                : ownerName // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        companyName:
            freezed == companyName
                ? _value.companyName
                : companyName // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        ownerNationalIdPhoto:
            freezed == ownerNationalIdPhoto
                ? _value.ownerNationalIdPhoto
                : ownerNationalIdPhoto // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        companyAddress:
            freezed == companyAddress
                ? _value.companyAddress
                : companyAddress // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
        companyStorePhoto:
            freezed == companyStorePhoto
                ? _value.companyStorePhoto
                : companyStorePhoto // ignore: cast_nullable_to_non_nullable
                    as ApprovedBy?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerDomainFieldsImpl implements _CustomerDomainFields {
  const _$CustomerDomainFieldsImpl({
    @JsonKey(name: 'owner_phone_number') this.ownerPhoneNumber,
    @JsonKey(name: 'customer_code') this.customerCode,
    @JsonKey(name: 'company_store_condition') this.companyStoreCondition,
    @JsonKey(name: 'company_phone_number') this.companyPhoneNumber,
    @JsonKey(name: 'owner_tax_id') this.ownerTaxId,
    @JsonKey(name: 'approved_by') this.approvedBy,
    @JsonKey(name: 'subscription_type') this.subscriptionType,
    @JsonKey(name: 'owner_address') this.ownerAddress,
    @JsonKey(name: 'ownership_status') this.ownershipStatus,
    @JsonKey(name: 'company_email') this.companyEmail,
    @JsonKey(name: 'company_location') this.companyLocation,
    @JsonKey(name: 'requested_by') this.requestedBy,
    @JsonKey(name: 'owner_national_id') this.ownerNationalId,
    @JsonKey(name: 'owner_name') this.ownerName,
    @JsonKey(name: 'company_name') this.companyName,
    @JsonKey(name: 'owner_national_id_photo') this.ownerNationalIdPhoto,
    @JsonKey(name: 'company_address') this.companyAddress,
    @JsonKey(name: 'company_store_photo') this.companyStorePhoto,
  });

  factory _$CustomerDomainFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDomainFieldsImplFromJson(json);

  @override
  @JsonKey(name: 'owner_phone_number')
  final ApprovedBy? ownerPhoneNumber;
  @override
  @JsonKey(name: 'customer_code')
  final ApprovedBy? customerCode;
  @override
  @JsonKey(name: 'company_store_condition')
  final ApprovedBy? companyStoreCondition;
  @override
  @JsonKey(name: 'company_phone_number')
  final ApprovedBy? companyPhoneNumber;
  @override
  @JsonKey(name: 'owner_tax_id')
  final ApprovedBy? ownerTaxId;
  @override
  @JsonKey(name: 'approved_by')
  final ApprovedBy? approvedBy;
  @override
  @JsonKey(name: 'subscription_type')
  final ApprovedBy? subscriptionType;
  @override
  @JsonKey(name: 'owner_address')
  final ApprovedBy? ownerAddress;
  @override
  @JsonKey(name: 'ownership_status')
  final ApprovedBy? ownershipStatus;
  @override
  @JsonKey(name: 'company_email')
  final ApprovedBy? companyEmail;
  @override
  @JsonKey(name: 'company_location')
  final CompanyLocation? companyLocation;
  @override
  @JsonKey(name: 'requested_by')
  final ApprovedBy? requestedBy;
  @override
  @JsonKey(name: 'owner_national_id')
  final ApprovedBy? ownerNationalId;
  @override
  @JsonKey(name: 'owner_name')
  final ApprovedBy? ownerName;
  @override
  @JsonKey(name: 'company_name')
  final ApprovedBy? companyName;
  @override
  @JsonKey(name: 'owner_national_id_photo')
  final ApprovedBy? ownerNationalIdPhoto;
  @override
  @JsonKey(name: 'company_address')
  final ApprovedBy? companyAddress;
  @override
  @JsonKey(name: 'company_store_photo')
  final ApprovedBy? companyStorePhoto;

  @override
  String toString() {
    return 'CustomerDomainFields(ownerPhoneNumber: $ownerPhoneNumber, customerCode: $customerCode, companyStoreCondition: $companyStoreCondition, companyPhoneNumber: $companyPhoneNumber, ownerTaxId: $ownerTaxId, approvedBy: $approvedBy, subscriptionType: $subscriptionType, ownerAddress: $ownerAddress, ownershipStatus: $ownershipStatus, companyEmail: $companyEmail, companyLocation: $companyLocation, requestedBy: $requestedBy, ownerNationalId: $ownerNationalId, ownerName: $ownerName, companyName: $companyName, ownerNationalIdPhoto: $ownerNationalIdPhoto, companyAddress: $companyAddress, companyStorePhoto: $companyStorePhoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDomainFieldsImpl &&
            (identical(other.ownerPhoneNumber, ownerPhoneNumber) ||
                other.ownerPhoneNumber == ownerPhoneNumber) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.companyStoreCondition, companyStoreCondition) ||
                other.companyStoreCondition == companyStoreCondition) &&
            (identical(other.companyPhoneNumber, companyPhoneNumber) ||
                other.companyPhoneNumber == companyPhoneNumber) &&
            (identical(other.ownerTaxId, ownerTaxId) ||
                other.ownerTaxId == ownerTaxId) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType) &&
            (identical(other.ownerAddress, ownerAddress) ||
                other.ownerAddress == ownerAddress) &&
            (identical(other.ownershipStatus, ownershipStatus) ||
                other.ownershipStatus == ownershipStatus) &&
            (identical(other.companyEmail, companyEmail) ||
                other.companyEmail == companyEmail) &&
            (identical(other.companyLocation, companyLocation) ||
                other.companyLocation == companyLocation) &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.ownerNationalId, ownerNationalId) ||
                other.ownerNationalId == ownerNationalId) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.ownerNationalIdPhoto, ownerNationalIdPhoto) ||
                other.ownerNationalIdPhoto == ownerNationalIdPhoto) &&
            (identical(other.companyAddress, companyAddress) ||
                other.companyAddress == companyAddress) &&
            (identical(other.companyStorePhoto, companyStorePhoto) ||
                other.companyStorePhoto == companyStorePhoto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    ownerPhoneNumber,
    customerCode,
    companyStoreCondition,
    companyPhoneNumber,
    ownerTaxId,
    approvedBy,
    subscriptionType,
    ownerAddress,
    ownershipStatus,
    companyEmail,
    companyLocation,
    requestedBy,
    ownerNationalId,
    ownerName,
    companyName,
    ownerNationalIdPhoto,
    companyAddress,
    companyStorePhoto,
  );

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDomainFieldsImplCopyWith<_$CustomerDomainFieldsImpl>
  get copyWith =>
      __$$CustomerDomainFieldsImplCopyWithImpl<_$CustomerDomainFieldsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDomainFieldsImplToJson(this);
  }
}

abstract class _CustomerDomainFields implements CustomerDomainFields {
  const factory _CustomerDomainFields({
    @JsonKey(name: 'owner_phone_number') final ApprovedBy? ownerPhoneNumber,
    @JsonKey(name: 'customer_code') final ApprovedBy? customerCode,
    @JsonKey(name: 'company_store_condition')
    final ApprovedBy? companyStoreCondition,
    @JsonKey(name: 'company_phone_number') final ApprovedBy? companyPhoneNumber,
    @JsonKey(name: 'owner_tax_id') final ApprovedBy? ownerTaxId,
    @JsonKey(name: 'approved_by') final ApprovedBy? approvedBy,
    @JsonKey(name: 'subscription_type') final ApprovedBy? subscriptionType,
    @JsonKey(name: 'owner_address') final ApprovedBy? ownerAddress,
    @JsonKey(name: 'ownership_status') final ApprovedBy? ownershipStatus,
    @JsonKey(name: 'company_email') final ApprovedBy? companyEmail,
    @JsonKey(name: 'company_location') final CompanyLocation? companyLocation,
    @JsonKey(name: 'requested_by') final ApprovedBy? requestedBy,
    @JsonKey(name: 'owner_national_id') final ApprovedBy? ownerNationalId,
    @JsonKey(name: 'owner_name') final ApprovedBy? ownerName,
    @JsonKey(name: 'company_name') final ApprovedBy? companyName,
    @JsonKey(name: 'owner_national_id_photo')
    final ApprovedBy? ownerNationalIdPhoto,
    @JsonKey(name: 'company_address') final ApprovedBy? companyAddress,
    @JsonKey(name: 'company_store_photo') final ApprovedBy? companyStorePhoto,
  }) = _$CustomerDomainFieldsImpl;

  factory _CustomerDomainFields.fromJson(Map<String, dynamic> json) =
      _$CustomerDomainFieldsImpl.fromJson;

  @override
  @JsonKey(name: 'owner_phone_number')
  ApprovedBy? get ownerPhoneNumber;
  @override
  @JsonKey(name: 'customer_code')
  ApprovedBy? get customerCode;
  @override
  @JsonKey(name: 'company_store_condition')
  ApprovedBy? get companyStoreCondition;
  @override
  @JsonKey(name: 'company_phone_number')
  ApprovedBy? get companyPhoneNumber;
  @override
  @JsonKey(name: 'owner_tax_id')
  ApprovedBy? get ownerTaxId;
  @override
  @JsonKey(name: 'approved_by')
  ApprovedBy? get approvedBy;
  @override
  @JsonKey(name: 'subscription_type')
  ApprovedBy? get subscriptionType;
  @override
  @JsonKey(name: 'owner_address')
  ApprovedBy? get ownerAddress;
  @override
  @JsonKey(name: 'ownership_status')
  ApprovedBy? get ownershipStatus;
  @override
  @JsonKey(name: 'company_email')
  ApprovedBy? get companyEmail;
  @override
  @JsonKey(name: 'company_location')
  CompanyLocation? get companyLocation;
  @override
  @JsonKey(name: 'requested_by')
  ApprovedBy? get requestedBy;
  @override
  @JsonKey(name: 'owner_national_id')
  ApprovedBy? get ownerNationalId;
  @override
  @JsonKey(name: 'owner_name')
  ApprovedBy? get ownerName;
  @override
  @JsonKey(name: 'company_name')
  ApprovedBy? get companyName;
  @override
  @JsonKey(name: 'owner_national_id_photo')
  ApprovedBy? get ownerNationalIdPhoto;
  @override
  @JsonKey(name: 'company_address')
  ApprovedBy? get companyAddress;
  @override
  @JsonKey(name: 'company_store_photo')
  ApprovedBy? get companyStorePhoto;

  /// Create a copy of CustomerDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerDomainFieldsImplCopyWith<_$CustomerDomainFieldsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ApprovedBy _$ApprovedByFromJson(Map<String, dynamic> json) {
  return _ApprovedBy.fromJson(json);
}

/// @nodoc
mixin _$ApprovedBy {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this ApprovedBy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApprovedBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApprovedByCopyWith<ApprovedBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovedByCopyWith<$Res> {
  factory $ApprovedByCopyWith(
    ApprovedBy value,
    $Res Function(ApprovedBy) then,
  ) = _$ApprovedByCopyWithImpl<$Res, ApprovedBy>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$ApprovedByCopyWithImpl<$Res, $Val extends ApprovedBy>
    implements $ApprovedByCopyWith<$Res> {
  _$ApprovedByCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApprovedBy
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
abstract class _$$ApprovedByImplCopyWith<$Res>
    implements $ApprovedByCopyWith<$Res> {
  factory _$$ApprovedByImplCopyWith(
    _$ApprovedByImpl value,
    $Res Function(_$ApprovedByImpl) then,
  ) = __$$ApprovedByImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$ApprovedByImplCopyWithImpl<$Res>
    extends _$ApprovedByCopyWithImpl<$Res, _$ApprovedByImpl>
    implements _$$ApprovedByImplCopyWith<$Res> {
  __$$ApprovedByImplCopyWithImpl(
    _$ApprovedByImpl _value,
    $Res Function(_$ApprovedByImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApprovedBy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$ApprovedByImpl(
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
class _$ApprovedByImpl implements _ApprovedBy {
  const _$ApprovedByImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$ApprovedByImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApprovedByImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'ApprovedBy(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovedByImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of ApprovedBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovedByImplCopyWith<_$ApprovedByImpl> get copyWith =>
      __$$ApprovedByImplCopyWithImpl<_$ApprovedByImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovedByImplToJson(this);
  }
}

abstract class _ApprovedBy implements ApprovedBy {
  const factory _ApprovedBy({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$ApprovedByImpl;

  factory _ApprovedBy.fromJson(Map<String, dynamic> json) =
      _$ApprovedByImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of ApprovedBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApprovedByImplCopyWith<_$ApprovedByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyLocation _$CompanyLocationFromJson(Map<String, dynamic> json) {
  return _CompanyLocation.fromJson(json);
}

/// @nodoc
mixin _$CompanyLocation {
  @JsonKey(name: 'mapValue')
  MapValue? get mapValue => throw _privateConstructorUsedError;

  /// Serializes this CompanyLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyLocationCopyWith<CompanyLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyLocationCopyWith<$Res> {
  factory $CompanyLocationCopyWith(
    CompanyLocation value,
    $Res Function(CompanyLocation) then,
  ) = _$CompanyLocationCopyWithImpl<$Res, CompanyLocation>;
  @useResult
  $Res call({@JsonKey(name: 'mapValue') MapValue? mapValue});

  $MapValueCopyWith<$Res>? get mapValue;
}

/// @nodoc
class _$CompanyLocationCopyWithImpl<$Res, $Val extends CompanyLocation>
    implements $CompanyLocationCopyWith<$Res> {
  _$CompanyLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? mapValue = freezed}) {
    return _then(
      _value.copyWith(
            mapValue:
                freezed == mapValue
                    ? _value.mapValue
                    : mapValue // ignore: cast_nullable_to_non_nullable
                        as MapValue?,
          )
          as $Val,
    );
  }

  /// Create a copy of CompanyLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapValueCopyWith<$Res>? get mapValue {
    if (_value.mapValue == null) {
      return null;
    }

    return $MapValueCopyWith<$Res>(_value.mapValue!, (value) {
      return _then(_value.copyWith(mapValue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyLocationImplCopyWith<$Res>
    implements $CompanyLocationCopyWith<$Res> {
  factory _$$CompanyLocationImplCopyWith(
    _$CompanyLocationImpl value,
    $Res Function(_$CompanyLocationImpl) then,
  ) = __$$CompanyLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'mapValue') MapValue? mapValue});

  @override
  $MapValueCopyWith<$Res>? get mapValue;
}

/// @nodoc
class __$$CompanyLocationImplCopyWithImpl<$Res>
    extends _$CompanyLocationCopyWithImpl<$Res, _$CompanyLocationImpl>
    implements _$$CompanyLocationImplCopyWith<$Res> {
  __$$CompanyLocationImplCopyWithImpl(
    _$CompanyLocationImpl _value,
    $Res Function(_$CompanyLocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompanyLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? mapValue = freezed}) {
    return _then(
      _$CompanyLocationImpl(
        mapValue:
            freezed == mapValue
                ? _value.mapValue
                : mapValue // ignore: cast_nullable_to_non_nullable
                    as MapValue?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyLocationImpl implements _CompanyLocation {
  const _$CompanyLocationImpl({@JsonKey(name: 'mapValue') this.mapValue});

  factory _$CompanyLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyLocationImplFromJson(json);

  @override
  @JsonKey(name: 'mapValue')
  final MapValue? mapValue;

  @override
  String toString() {
    return 'CompanyLocation(mapValue: $mapValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyLocationImpl &&
            (identical(other.mapValue, mapValue) ||
                other.mapValue == mapValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mapValue);

  /// Create a copy of CompanyLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyLocationImplCopyWith<_$CompanyLocationImpl> get copyWith =>
      __$$CompanyLocationImplCopyWithImpl<_$CompanyLocationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyLocationImplToJson(this);
  }
}

abstract class _CompanyLocation implements CompanyLocation {
  const factory _CompanyLocation({
    @JsonKey(name: 'mapValue') final MapValue? mapValue,
  }) = _$CompanyLocationImpl;

  factory _CompanyLocation.fromJson(Map<String, dynamic> json) =
      _$CompanyLocationImpl.fromJson;

  @override
  @JsonKey(name: 'mapValue')
  MapValue? get mapValue;

  /// Create a copy of CompanyLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyLocationImplCopyWith<_$CompanyLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapValue _$MapValueFromJson(Map<String, dynamic> json) {
  return _MapValue.fromJson(json);
}

/// @nodoc
mixin _$MapValue {
  @JsonKey(name: 'fields')
  MapValueFields? get fields => throw _privateConstructorUsedError;

  /// Serializes this MapValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MapValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapValueCopyWith<MapValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapValueCopyWith<$Res> {
  factory $MapValueCopyWith(MapValue value, $Res Function(MapValue) then) =
      _$MapValueCopyWithImpl<$Res, MapValue>;
  @useResult
  $Res call({@JsonKey(name: 'fields') MapValueFields? fields});

  $MapValueFieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class _$MapValueCopyWithImpl<$Res, $Val extends MapValue>
    implements $MapValueCopyWith<$Res> {
  _$MapValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fields = freezed}) {
    return _then(
      _value.copyWith(
            fields:
                freezed == fields
                    ? _value.fields
                    : fields // ignore: cast_nullable_to_non_nullable
                        as MapValueFields?,
          )
          as $Val,
    );
  }

  /// Create a copy of MapValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapValueFieldsCopyWith<$Res>? get fields {
    if (_value.fields == null) {
      return null;
    }

    return $MapValueFieldsCopyWith<$Res>(_value.fields!, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MapValueImplCopyWith<$Res>
    implements $MapValueCopyWith<$Res> {
  factory _$$MapValueImplCopyWith(
    _$MapValueImpl value,
    $Res Function(_$MapValueImpl) then,
  ) = __$$MapValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'fields') MapValueFields? fields});

  @override
  $MapValueFieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class __$$MapValueImplCopyWithImpl<$Res>
    extends _$MapValueCopyWithImpl<$Res, _$MapValueImpl>
    implements _$$MapValueImplCopyWith<$Res> {
  __$$MapValueImplCopyWithImpl(
    _$MapValueImpl _value,
    $Res Function(_$MapValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MapValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fields = freezed}) {
    return _then(
      _$MapValueImpl(
        fields:
            freezed == fields
                ? _value.fields
                : fields // ignore: cast_nullable_to_non_nullable
                    as MapValueFields?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MapValueImpl implements _MapValue {
  const _$MapValueImpl({@JsonKey(name: 'fields') this.fields});

  factory _$MapValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapValueImplFromJson(json);

  @override
  @JsonKey(name: 'fields')
  final MapValueFields? fields;

  @override
  String toString() {
    return 'MapValue(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapValueImpl &&
            (identical(other.fields, fields) || other.fields == fields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fields);

  /// Create a copy of MapValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapValueImplCopyWith<_$MapValueImpl> get copyWith =>
      __$$MapValueImplCopyWithImpl<_$MapValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapValueImplToJson(this);
  }
}

abstract class _MapValue implements MapValue {
  const factory _MapValue({
    @JsonKey(name: 'fields') final MapValueFields? fields,
  }) = _$MapValueImpl;

  factory _MapValue.fromJson(Map<String, dynamic> json) =
      _$MapValueImpl.fromJson;

  @override
  @JsonKey(name: 'fields')
  MapValueFields? get fields;

  /// Create a copy of MapValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapValueImplCopyWith<_$MapValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapValueFields _$MapValueFieldsFromJson(Map<String, dynamic> json) {
  return _MapValueFields.fromJson(json);
}

/// @nodoc
mixin _$MapValueFields {
  @JsonKey(name: 'accuracy')
  Accuracy? get accuracy => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  Accuracy? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  Accuracy? get longitude => throw _privateConstructorUsedError;

  /// Serializes this MapValueFields to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapValueFieldsCopyWith<MapValueFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapValueFieldsCopyWith<$Res> {
  factory $MapValueFieldsCopyWith(
    MapValueFields value,
    $Res Function(MapValueFields) then,
  ) = _$MapValueFieldsCopyWithImpl<$Res, MapValueFields>;
  @useResult
  $Res call({
    @JsonKey(name: 'accuracy') Accuracy? accuracy,
    @JsonKey(name: 'latitude') Accuracy? latitude,
    @JsonKey(name: 'longitude') Accuracy? longitude,
  });

  $AccuracyCopyWith<$Res>? get accuracy;
  $AccuracyCopyWith<$Res>? get latitude;
  $AccuracyCopyWith<$Res>? get longitude;
}

/// @nodoc
class _$MapValueFieldsCopyWithImpl<$Res, $Val extends MapValueFields>
    implements $MapValueFieldsCopyWith<$Res> {
  _$MapValueFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accuracy = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(
      _value.copyWith(
            accuracy:
                freezed == accuracy
                    ? _value.accuracy
                    : accuracy // ignore: cast_nullable_to_non_nullable
                        as Accuracy?,
            latitude:
                freezed == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as Accuracy?,
            longitude:
                freezed == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as Accuracy?,
          )
          as $Val,
    );
  }

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccuracyCopyWith<$Res>? get accuracy {
    if (_value.accuracy == null) {
      return null;
    }

    return $AccuracyCopyWith<$Res>(_value.accuracy!, (value) {
      return _then(_value.copyWith(accuracy: value) as $Val);
    });
  }

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccuracyCopyWith<$Res>? get latitude {
    if (_value.latitude == null) {
      return null;
    }

    return $AccuracyCopyWith<$Res>(_value.latitude!, (value) {
      return _then(_value.copyWith(latitude: value) as $Val);
    });
  }

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccuracyCopyWith<$Res>? get longitude {
    if (_value.longitude == null) {
      return null;
    }

    return $AccuracyCopyWith<$Res>(_value.longitude!, (value) {
      return _then(_value.copyWith(longitude: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MapValueFieldsImplCopyWith<$Res>
    implements $MapValueFieldsCopyWith<$Res> {
  factory _$$MapValueFieldsImplCopyWith(
    _$MapValueFieldsImpl value,
    $Res Function(_$MapValueFieldsImpl) then,
  ) = __$$MapValueFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'accuracy') Accuracy? accuracy,
    @JsonKey(name: 'latitude') Accuracy? latitude,
    @JsonKey(name: 'longitude') Accuracy? longitude,
  });

  @override
  $AccuracyCopyWith<$Res>? get accuracy;
  @override
  $AccuracyCopyWith<$Res>? get latitude;
  @override
  $AccuracyCopyWith<$Res>? get longitude;
}

/// @nodoc
class __$$MapValueFieldsImplCopyWithImpl<$Res>
    extends _$MapValueFieldsCopyWithImpl<$Res, _$MapValueFieldsImpl>
    implements _$$MapValueFieldsImplCopyWith<$Res> {
  __$$MapValueFieldsImplCopyWithImpl(
    _$MapValueFieldsImpl _value,
    $Res Function(_$MapValueFieldsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accuracy = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(
      _$MapValueFieldsImpl(
        accuracy:
            freezed == accuracy
                ? _value.accuracy
                : accuracy // ignore: cast_nullable_to_non_nullable
                    as Accuracy?,
        latitude:
            freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as Accuracy?,
        longitude:
            freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as Accuracy?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MapValueFieldsImpl implements _MapValueFields {
  const _$MapValueFieldsImpl({
    @JsonKey(name: 'accuracy') this.accuracy,
    @JsonKey(name: 'latitude') this.latitude,
    @JsonKey(name: 'longitude') this.longitude,
  });

  factory _$MapValueFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapValueFieldsImplFromJson(json);

  @override
  @JsonKey(name: 'accuracy')
  final Accuracy? accuracy;
  @override
  @JsonKey(name: 'latitude')
  final Accuracy? latitude;
  @override
  @JsonKey(name: 'longitude')
  final Accuracy? longitude;

  @override
  String toString() {
    return 'MapValueFields(accuracy: $accuracy, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapValueFieldsImpl &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accuracy, latitude, longitude);

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapValueFieldsImplCopyWith<_$MapValueFieldsImpl> get copyWith =>
      __$$MapValueFieldsImplCopyWithImpl<_$MapValueFieldsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MapValueFieldsImplToJson(this);
  }
}

abstract class _MapValueFields implements MapValueFields {
  const factory _MapValueFields({
    @JsonKey(name: 'accuracy') final Accuracy? accuracy,
    @JsonKey(name: 'latitude') final Accuracy? latitude,
    @JsonKey(name: 'longitude') final Accuracy? longitude,
  }) = _$MapValueFieldsImpl;

  factory _MapValueFields.fromJson(Map<String, dynamic> json) =
      _$MapValueFieldsImpl.fromJson;

  @override
  @JsonKey(name: 'accuracy')
  Accuracy? get accuracy;
  @override
  @JsonKey(name: 'latitude')
  Accuracy? get latitude;
  @override
  @JsonKey(name: 'longitude')
  Accuracy? get longitude;

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapValueFieldsImplCopyWith<_$MapValueFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Accuracy _$AccuracyFromJson(Map<String, dynamic> json) {
  return _Accuracy.fromJson(json);
}

/// @nodoc
mixin _$Accuracy {
  @JsonKey(name: 'doubleValue')
  double? get doubleValue => throw _privateConstructorUsedError;

  /// Serializes this Accuracy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Accuracy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccuracyCopyWith<Accuracy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccuracyCopyWith<$Res> {
  factory $AccuracyCopyWith(Accuracy value, $Res Function(Accuracy) then) =
      _$AccuracyCopyWithImpl<$Res, Accuracy>;
  @useResult
  $Res call({@JsonKey(name: 'doubleValue') double? doubleValue});
}

/// @nodoc
class _$AccuracyCopyWithImpl<$Res, $Val extends Accuracy>
    implements $AccuracyCopyWith<$Res> {
  _$AccuracyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Accuracy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? doubleValue = freezed}) {
    return _then(
      _value.copyWith(
            doubleValue:
                freezed == doubleValue
                    ? _value.doubleValue
                    : doubleValue // ignore: cast_nullable_to_non_nullable
                        as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AccuracyImplCopyWith<$Res>
    implements $AccuracyCopyWith<$Res> {
  factory _$$AccuracyImplCopyWith(
    _$AccuracyImpl value,
    $Res Function(_$AccuracyImpl) then,
  ) = __$$AccuracyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'doubleValue') double? doubleValue});
}

/// @nodoc
class __$$AccuracyImplCopyWithImpl<$Res>
    extends _$AccuracyCopyWithImpl<$Res, _$AccuracyImpl>
    implements _$$AccuracyImplCopyWith<$Res> {
  __$$AccuracyImplCopyWithImpl(
    _$AccuracyImpl _value,
    $Res Function(_$AccuracyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Accuracy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? doubleValue = freezed}) {
    return _then(
      _$AccuracyImpl(
        doubleValue:
            freezed == doubleValue
                ? _value.doubleValue
                : doubleValue // ignore: cast_nullable_to_non_nullable
                    as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AccuracyImpl implements _Accuracy {
  const _$AccuracyImpl({@JsonKey(name: 'doubleValue') this.doubleValue});

  factory _$AccuracyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccuracyImplFromJson(json);

  @override
  @JsonKey(name: 'doubleValue')
  final double? doubleValue;

  @override
  String toString() {
    return 'Accuracy(doubleValue: $doubleValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccuracyImpl &&
            (identical(other.doubleValue, doubleValue) ||
                other.doubleValue == doubleValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, doubleValue);

  /// Create a copy of Accuracy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccuracyImplCopyWith<_$AccuracyImpl> get copyWith =>
      __$$AccuracyImplCopyWithImpl<_$AccuracyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccuracyImplToJson(this);
  }
}

abstract class _Accuracy implements Accuracy {
  const factory _Accuracy({
    @JsonKey(name: 'doubleValue') final double? doubleValue,
  }) = _$AccuracyImpl;

  factory _Accuracy.fromJson(Map<String, dynamic> json) =
      _$AccuracyImpl.fromJson;

  @override
  @JsonKey(name: 'doubleValue')
  double? get doubleValue;

  /// Create a copy of Accuracy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccuracyImplCopyWith<_$AccuracyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
