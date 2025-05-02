// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_request_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerRequestDomain _$CustomerRequestDomainFromJson(
  Map<String, dynamic> json,
) {
  return _CustomerRequestDomain.fromJson(json);
}

/// @nodoc
mixin _$CustomerRequestDomain {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'fields')
  Fields? get fields => throw _privateConstructorUsedError;
  @JsonKey(name: 'createTime')
  String? get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateTime')
  String? get updateTime => throw _privateConstructorUsedError;

  /// Serializes this CustomerRequestDomain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerRequestDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerRequestDomainCopyWith<CustomerRequestDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerRequestDomainCopyWith<$Res> {
  factory $CustomerRequestDomainCopyWith(
    CustomerRequestDomain value,
    $Res Function(CustomerRequestDomain) then,
  ) = _$CustomerRequestDomainCopyWithImpl<$Res, CustomerRequestDomain>;
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
class _$CustomerRequestDomainCopyWithImpl<
  $Res,
  $Val extends CustomerRequestDomain
>
    implements $CustomerRequestDomainCopyWith<$Res> {
  _$CustomerRequestDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerRequestDomain
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

  /// Create a copy of CustomerRequestDomain
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
abstract class _$$CustomerRequestDomainImplCopyWith<$Res>
    implements $CustomerRequestDomainCopyWith<$Res> {
  factory _$$CustomerRequestDomainImplCopyWith(
    _$CustomerRequestDomainImpl value,
    $Res Function(_$CustomerRequestDomainImpl) then,
  ) = __$$CustomerRequestDomainImplCopyWithImpl<$Res>;
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
class __$$CustomerRequestDomainImplCopyWithImpl<$Res>
    extends
        _$CustomerRequestDomainCopyWithImpl<$Res, _$CustomerRequestDomainImpl>
    implements _$$CustomerRequestDomainImplCopyWith<$Res> {
  __$$CustomerRequestDomainImplCopyWithImpl(
    _$CustomerRequestDomainImpl _value,
    $Res Function(_$CustomerRequestDomainImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerRequestDomain
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
      _$CustomerRequestDomainImpl(
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
class _$CustomerRequestDomainImpl implements _CustomerRequestDomain {
  const _$CustomerRequestDomainImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'fields') this.fields,
    @JsonKey(name: 'createTime') this.createTime,
    @JsonKey(name: 'updateTime') this.updateTime,
  });

  factory _$CustomerRequestDomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerRequestDomainImplFromJson(json);

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
    return 'CustomerRequestDomain(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerRequestDomainImpl &&
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

  /// Create a copy of CustomerRequestDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerRequestDomainImplCopyWith<_$CustomerRequestDomainImpl>
  get copyWith =>
      __$$CustomerRequestDomainImplCopyWithImpl<_$CustomerRequestDomainImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerRequestDomainImplToJson(this);
  }
}

abstract class _CustomerRequestDomain implements CustomerRequestDomain {
  const factory _CustomerRequestDomain({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'fields') final Fields? fields,
    @JsonKey(name: 'createTime') final String? createTime,
    @JsonKey(name: 'updateTime') final String? updateTime,
  }) = _$CustomerRequestDomainImpl;

  factory _CustomerRequestDomain.fromJson(Map<String, dynamic> json) =
      _$CustomerRequestDomainImpl.fromJson;

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

  /// Create a copy of CustomerRequestDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerRequestDomainImplCopyWith<_$CustomerRequestDomainImpl>
  get copyWith => throw _privateConstructorUsedError;
}

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return _Fields.fromJson(json);
}

/// @nodoc
mixin _$Fields {
  @JsonKey(name: 'owner_national_id_photo')
  ApprovalReason? get ownerNationalIdPhoto =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'company_store_condition')
  ApprovalReason? get companyStoreCondition =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_by')
  ApprovalReason? get requestedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_email')
  ApprovalReason? get companyEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'approved_by')
  ApprovalReason? get approvedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'ownership_status')
  ApprovalReason? get ownershipStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_store_photo')
  ApprovalReason? get companyStorePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_address')
  ApprovalReason? get companyAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  ApprovalReason? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_phone_number')
  ApprovalReason? get ownerPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_destination')
  ApprovalReason? get requestDestination => throw _privateConstructorUsedError;
  @JsonKey(name: 'approval_status')
  ApprovalReason? get approvalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_address')
  ApprovalReason? get ownerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_tax_id')
  ApprovalReason? get ownerTaxId => throw _privateConstructorUsedError;
  @JsonKey(name: 'carbon_copy')
  ApprovalReason? get carbonCopy => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_phone_number')
  ApprovalReason? get companyPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'approval_date')
  ApprovalDate? get approvalDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  ApprovalReason? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_name')
  ApprovalReason? get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_national_id')
  ApprovalReason? get ownerNationalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'approval_reason')
  ApprovalReason? get approvalReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscription_type')
  ApprovalReason? get subscriptionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_location')
  CompanyLocation? get companyLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_type')
  ApprovalReason? get customerType => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'owner_national_id_photo')
    ApprovalReason? ownerNationalIdPhoto,
    @JsonKey(name: 'company_store_condition')
    ApprovalReason? companyStoreCondition,
    @JsonKey(name: 'requested_by') ApprovalReason? requestedBy,
    @JsonKey(name: 'company_email') ApprovalReason? companyEmail,
    @JsonKey(name: 'approved_by') ApprovalReason? approvedBy,
    @JsonKey(name: 'ownership_status') ApprovalReason? ownershipStatus,
    @JsonKey(name: 'company_store_photo') ApprovalReason? companyStorePhoto,
    @JsonKey(name: 'company_address') ApprovalReason? companyAddress,
    @JsonKey(name: 'company_name') ApprovalReason? companyName,
    @JsonKey(name: 'owner_phone_number') ApprovalReason? ownerPhoneNumber,
    @JsonKey(name: 'request_destination') ApprovalReason? requestDestination,
    @JsonKey(name: 'approval_status') ApprovalReason? approvalStatus,
    @JsonKey(name: 'owner_address') ApprovalReason? ownerAddress,
    @JsonKey(name: 'owner_tax_id') ApprovalReason? ownerTaxId,
    @JsonKey(name: 'carbon_copy') ApprovalReason? carbonCopy,
    @JsonKey(name: 'company_phone_number') ApprovalReason? companyPhoneNumber,
    @JsonKey(name: 'approval_date') ApprovalDate? approvalDate,
    @JsonKey(name: 'note') ApprovalReason? note,
    @JsonKey(name: 'owner_name') ApprovalReason? ownerName,
    @JsonKey(name: 'owner_national_id') ApprovalReason? ownerNationalId,
    @JsonKey(name: 'approval_reason') ApprovalReason? approvalReason,
    @JsonKey(name: 'subscription_type') ApprovalReason? subscriptionType,
    @JsonKey(name: 'company_location') CompanyLocation? companyLocation,
    @JsonKey(name: 'customer_type') ApprovalReason? customerType,
  });

  $ApprovalReasonCopyWith<$Res>? get ownerNationalIdPhoto;
  $ApprovalReasonCopyWith<$Res>? get companyStoreCondition;
  $ApprovalReasonCopyWith<$Res>? get requestedBy;
  $ApprovalReasonCopyWith<$Res>? get companyEmail;
  $ApprovalReasonCopyWith<$Res>? get approvedBy;
  $ApprovalReasonCopyWith<$Res>? get ownershipStatus;
  $ApprovalReasonCopyWith<$Res>? get companyStorePhoto;
  $ApprovalReasonCopyWith<$Res>? get companyAddress;
  $ApprovalReasonCopyWith<$Res>? get companyName;
  $ApprovalReasonCopyWith<$Res>? get ownerPhoneNumber;
  $ApprovalReasonCopyWith<$Res>? get requestDestination;
  $ApprovalReasonCopyWith<$Res>? get approvalStatus;
  $ApprovalReasonCopyWith<$Res>? get ownerAddress;
  $ApprovalReasonCopyWith<$Res>? get ownerTaxId;
  $ApprovalReasonCopyWith<$Res>? get carbonCopy;
  $ApprovalReasonCopyWith<$Res>? get companyPhoneNumber;
  $ApprovalDateCopyWith<$Res>? get approvalDate;
  $ApprovalReasonCopyWith<$Res>? get note;
  $ApprovalReasonCopyWith<$Res>? get ownerName;
  $ApprovalReasonCopyWith<$Res>? get ownerNationalId;
  $ApprovalReasonCopyWith<$Res>? get approvalReason;
  $ApprovalReasonCopyWith<$Res>? get subscriptionType;
  $CompanyLocationCopyWith<$Res>? get companyLocation;
  $ApprovalReasonCopyWith<$Res>? get customerType;
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
    Object? ownerNationalIdPhoto = freezed,
    Object? companyStoreCondition = freezed,
    Object? requestedBy = freezed,
    Object? companyEmail = freezed,
    Object? approvedBy = freezed,
    Object? ownershipStatus = freezed,
    Object? companyStorePhoto = freezed,
    Object? companyAddress = freezed,
    Object? companyName = freezed,
    Object? ownerPhoneNumber = freezed,
    Object? requestDestination = freezed,
    Object? approvalStatus = freezed,
    Object? ownerAddress = freezed,
    Object? ownerTaxId = freezed,
    Object? carbonCopy = freezed,
    Object? companyPhoneNumber = freezed,
    Object? approvalDate = freezed,
    Object? note = freezed,
    Object? ownerName = freezed,
    Object? ownerNationalId = freezed,
    Object? approvalReason = freezed,
    Object? subscriptionType = freezed,
    Object? companyLocation = freezed,
    Object? customerType = freezed,
  }) {
    return _then(
      _value.copyWith(
            ownerNationalIdPhoto:
                freezed == ownerNationalIdPhoto
                    ? _value.ownerNationalIdPhoto
                    : ownerNationalIdPhoto // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            companyStoreCondition:
                freezed == companyStoreCondition
                    ? _value.companyStoreCondition
                    : companyStoreCondition // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            requestedBy:
                freezed == requestedBy
                    ? _value.requestedBy
                    : requestedBy // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            companyEmail:
                freezed == companyEmail
                    ? _value.companyEmail
                    : companyEmail // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            approvedBy:
                freezed == approvedBy
                    ? _value.approvedBy
                    : approvedBy // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            ownershipStatus:
                freezed == ownershipStatus
                    ? _value.ownershipStatus
                    : ownershipStatus // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            companyStorePhoto:
                freezed == companyStorePhoto
                    ? _value.companyStorePhoto
                    : companyStorePhoto // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            companyAddress:
                freezed == companyAddress
                    ? _value.companyAddress
                    : companyAddress // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            companyName:
                freezed == companyName
                    ? _value.companyName
                    : companyName // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            ownerPhoneNumber:
                freezed == ownerPhoneNumber
                    ? _value.ownerPhoneNumber
                    : ownerPhoneNumber // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            requestDestination:
                freezed == requestDestination
                    ? _value.requestDestination
                    : requestDestination // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            approvalStatus:
                freezed == approvalStatus
                    ? _value.approvalStatus
                    : approvalStatus // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            ownerAddress:
                freezed == ownerAddress
                    ? _value.ownerAddress
                    : ownerAddress // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            ownerTaxId:
                freezed == ownerTaxId
                    ? _value.ownerTaxId
                    : ownerTaxId // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            carbonCopy:
                freezed == carbonCopy
                    ? _value.carbonCopy
                    : carbonCopy // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            companyPhoneNumber:
                freezed == companyPhoneNumber
                    ? _value.companyPhoneNumber
                    : companyPhoneNumber // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            approvalDate:
                freezed == approvalDate
                    ? _value.approvalDate
                    : approvalDate // ignore: cast_nullable_to_non_nullable
                        as ApprovalDate?,
            note:
                freezed == note
                    ? _value.note
                    : note // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            ownerName:
                freezed == ownerName
                    ? _value.ownerName
                    : ownerName // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            ownerNationalId:
                freezed == ownerNationalId
                    ? _value.ownerNationalId
                    : ownerNationalId // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            approvalReason:
                freezed == approvalReason
                    ? _value.approvalReason
                    : approvalReason // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            subscriptionType:
                freezed == subscriptionType
                    ? _value.subscriptionType
                    : subscriptionType // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
            companyLocation:
                freezed == companyLocation
                    ? _value.companyLocation
                    : companyLocation // ignore: cast_nullable_to_non_nullable
                        as CompanyLocation?,
            customerType:
                freezed == customerType
                    ? _value.customerType
                    : customerType // ignore: cast_nullable_to_non_nullable
                        as ApprovalReason?,
          )
          as $Val,
    );
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get ownerNationalIdPhoto {
    if (_value.ownerNationalIdPhoto == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.ownerNationalIdPhoto!, (value) {
      return _then(_value.copyWith(ownerNationalIdPhoto: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get companyStoreCondition {
    if (_value.companyStoreCondition == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.companyStoreCondition!, (
      value,
    ) {
      return _then(_value.copyWith(companyStoreCondition: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get requestedBy {
    if (_value.requestedBy == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.requestedBy!, (value) {
      return _then(_value.copyWith(requestedBy: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get companyEmail {
    if (_value.companyEmail == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.companyEmail!, (value) {
      return _then(_value.copyWith(companyEmail: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get approvedBy {
    if (_value.approvedBy == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.approvedBy!, (value) {
      return _then(_value.copyWith(approvedBy: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get ownershipStatus {
    if (_value.ownershipStatus == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.ownershipStatus!, (value) {
      return _then(_value.copyWith(ownershipStatus: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get companyStorePhoto {
    if (_value.companyStorePhoto == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.companyStorePhoto!, (value) {
      return _then(_value.copyWith(companyStorePhoto: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get companyAddress {
    if (_value.companyAddress == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.companyAddress!, (value) {
      return _then(_value.copyWith(companyAddress: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get companyName {
    if (_value.companyName == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.companyName!, (value) {
      return _then(_value.copyWith(companyName: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get ownerPhoneNumber {
    if (_value.ownerPhoneNumber == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.ownerPhoneNumber!, (value) {
      return _then(_value.copyWith(ownerPhoneNumber: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get requestDestination {
    if (_value.requestDestination == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.requestDestination!, (value) {
      return _then(_value.copyWith(requestDestination: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get approvalStatus {
    if (_value.approvalStatus == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.approvalStatus!, (value) {
      return _then(_value.copyWith(approvalStatus: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get ownerAddress {
    if (_value.ownerAddress == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.ownerAddress!, (value) {
      return _then(_value.copyWith(ownerAddress: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get ownerTaxId {
    if (_value.ownerTaxId == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.ownerTaxId!, (value) {
      return _then(_value.copyWith(ownerTaxId: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get carbonCopy {
    if (_value.carbonCopy == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.carbonCopy!, (value) {
      return _then(_value.copyWith(carbonCopy: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get companyPhoneNumber {
    if (_value.companyPhoneNumber == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.companyPhoneNumber!, (value) {
      return _then(_value.copyWith(companyPhoneNumber: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalDateCopyWith<$Res>? get approvalDate {
    if (_value.approvalDate == null) {
      return null;
    }

    return $ApprovalDateCopyWith<$Res>(_value.approvalDate!, (value) {
      return _then(_value.copyWith(approvalDate: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get ownerName {
    if (_value.ownerName == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.ownerName!, (value) {
      return _then(_value.copyWith(ownerName: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get ownerNationalId {
    if (_value.ownerNationalId == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.ownerNationalId!, (value) {
      return _then(_value.copyWith(ownerNationalId: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get approvalReason {
    if (_value.approvalReason == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.approvalReason!, (value) {
      return _then(_value.copyWith(approvalReason: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get subscriptionType {
    if (_value.subscriptionType == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.subscriptionType!, (value) {
      return _then(_value.copyWith(subscriptionType: value) as $Val);
    });
  }

  /// Create a copy of Fields
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalReasonCopyWith<$Res>? get customerType {
    if (_value.customerType == null) {
      return null;
    }

    return $ApprovalReasonCopyWith<$Res>(_value.customerType!, (value) {
      return _then(_value.copyWith(customerType: value) as $Val);
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
    @JsonKey(name: 'owner_national_id_photo')
    ApprovalReason? ownerNationalIdPhoto,
    @JsonKey(name: 'company_store_condition')
    ApprovalReason? companyStoreCondition,
    @JsonKey(name: 'requested_by') ApprovalReason? requestedBy,
    @JsonKey(name: 'company_email') ApprovalReason? companyEmail,
    @JsonKey(name: 'approved_by') ApprovalReason? approvedBy,
    @JsonKey(name: 'ownership_status') ApprovalReason? ownershipStatus,
    @JsonKey(name: 'company_store_photo') ApprovalReason? companyStorePhoto,
    @JsonKey(name: 'company_address') ApprovalReason? companyAddress,
    @JsonKey(name: 'company_name') ApprovalReason? companyName,
    @JsonKey(name: 'owner_phone_number') ApprovalReason? ownerPhoneNumber,
    @JsonKey(name: 'request_destination') ApprovalReason? requestDestination,
    @JsonKey(name: 'approval_status') ApprovalReason? approvalStatus,
    @JsonKey(name: 'owner_address') ApprovalReason? ownerAddress,
    @JsonKey(name: 'owner_tax_id') ApprovalReason? ownerTaxId,
    @JsonKey(name: 'carbon_copy') ApprovalReason? carbonCopy,
    @JsonKey(name: 'company_phone_number') ApprovalReason? companyPhoneNumber,
    @JsonKey(name: 'approval_date') ApprovalDate? approvalDate,
    @JsonKey(name: 'note') ApprovalReason? note,
    @JsonKey(name: 'owner_name') ApprovalReason? ownerName,
    @JsonKey(name: 'owner_national_id') ApprovalReason? ownerNationalId,
    @JsonKey(name: 'approval_reason') ApprovalReason? approvalReason,
    @JsonKey(name: 'subscription_type') ApprovalReason? subscriptionType,
    @JsonKey(name: 'company_location') CompanyLocation? companyLocation,
    @JsonKey(name: 'customer_type') ApprovalReason? customerType,
  });

  @override
  $ApprovalReasonCopyWith<$Res>? get ownerNationalIdPhoto;
  @override
  $ApprovalReasonCopyWith<$Res>? get companyStoreCondition;
  @override
  $ApprovalReasonCopyWith<$Res>? get requestedBy;
  @override
  $ApprovalReasonCopyWith<$Res>? get companyEmail;
  @override
  $ApprovalReasonCopyWith<$Res>? get approvedBy;
  @override
  $ApprovalReasonCopyWith<$Res>? get ownershipStatus;
  @override
  $ApprovalReasonCopyWith<$Res>? get companyStorePhoto;
  @override
  $ApprovalReasonCopyWith<$Res>? get companyAddress;
  @override
  $ApprovalReasonCopyWith<$Res>? get companyName;
  @override
  $ApprovalReasonCopyWith<$Res>? get ownerPhoneNumber;
  @override
  $ApprovalReasonCopyWith<$Res>? get requestDestination;
  @override
  $ApprovalReasonCopyWith<$Res>? get approvalStatus;
  @override
  $ApprovalReasonCopyWith<$Res>? get ownerAddress;
  @override
  $ApprovalReasonCopyWith<$Res>? get ownerTaxId;
  @override
  $ApprovalReasonCopyWith<$Res>? get carbonCopy;
  @override
  $ApprovalReasonCopyWith<$Res>? get companyPhoneNumber;
  @override
  $ApprovalDateCopyWith<$Res>? get approvalDate;
  @override
  $ApprovalReasonCopyWith<$Res>? get note;
  @override
  $ApprovalReasonCopyWith<$Res>? get ownerName;
  @override
  $ApprovalReasonCopyWith<$Res>? get ownerNationalId;
  @override
  $ApprovalReasonCopyWith<$Res>? get approvalReason;
  @override
  $ApprovalReasonCopyWith<$Res>? get subscriptionType;
  @override
  $CompanyLocationCopyWith<$Res>? get companyLocation;
  @override
  $ApprovalReasonCopyWith<$Res>? get customerType;
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
    Object? ownerNationalIdPhoto = freezed,
    Object? companyStoreCondition = freezed,
    Object? requestedBy = freezed,
    Object? companyEmail = freezed,
    Object? approvedBy = freezed,
    Object? ownershipStatus = freezed,
    Object? companyStorePhoto = freezed,
    Object? companyAddress = freezed,
    Object? companyName = freezed,
    Object? ownerPhoneNumber = freezed,
    Object? requestDestination = freezed,
    Object? approvalStatus = freezed,
    Object? ownerAddress = freezed,
    Object? ownerTaxId = freezed,
    Object? carbonCopy = freezed,
    Object? companyPhoneNumber = freezed,
    Object? approvalDate = freezed,
    Object? note = freezed,
    Object? ownerName = freezed,
    Object? ownerNationalId = freezed,
    Object? approvalReason = freezed,
    Object? subscriptionType = freezed,
    Object? companyLocation = freezed,
    Object? customerType = freezed,
  }) {
    return _then(
      _$FieldsImpl(
        ownerNationalIdPhoto:
            freezed == ownerNationalIdPhoto
                ? _value.ownerNationalIdPhoto
                : ownerNationalIdPhoto // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        companyStoreCondition:
            freezed == companyStoreCondition
                ? _value.companyStoreCondition
                : companyStoreCondition // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        requestedBy:
            freezed == requestedBy
                ? _value.requestedBy
                : requestedBy // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        companyEmail:
            freezed == companyEmail
                ? _value.companyEmail
                : companyEmail // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        approvedBy:
            freezed == approvedBy
                ? _value.approvedBy
                : approvedBy // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        ownershipStatus:
            freezed == ownershipStatus
                ? _value.ownershipStatus
                : ownershipStatus // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        companyStorePhoto:
            freezed == companyStorePhoto
                ? _value.companyStorePhoto
                : companyStorePhoto // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        companyAddress:
            freezed == companyAddress
                ? _value.companyAddress
                : companyAddress // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        companyName:
            freezed == companyName
                ? _value.companyName
                : companyName // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        ownerPhoneNumber:
            freezed == ownerPhoneNumber
                ? _value.ownerPhoneNumber
                : ownerPhoneNumber // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        requestDestination:
            freezed == requestDestination
                ? _value.requestDestination
                : requestDestination // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        approvalStatus:
            freezed == approvalStatus
                ? _value.approvalStatus
                : approvalStatus // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        ownerAddress:
            freezed == ownerAddress
                ? _value.ownerAddress
                : ownerAddress // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        ownerTaxId:
            freezed == ownerTaxId
                ? _value.ownerTaxId
                : ownerTaxId // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        carbonCopy:
            freezed == carbonCopy
                ? _value.carbonCopy
                : carbonCopy // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        companyPhoneNumber:
            freezed == companyPhoneNumber
                ? _value.companyPhoneNumber
                : companyPhoneNumber // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        approvalDate:
            freezed == approvalDate
                ? _value.approvalDate
                : approvalDate // ignore: cast_nullable_to_non_nullable
                    as ApprovalDate?,
        note:
            freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        ownerName:
            freezed == ownerName
                ? _value.ownerName
                : ownerName // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        ownerNationalId:
            freezed == ownerNationalId
                ? _value.ownerNationalId
                : ownerNationalId // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        approvalReason:
            freezed == approvalReason
                ? _value.approvalReason
                : approvalReason // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        subscriptionType:
            freezed == subscriptionType
                ? _value.subscriptionType
                : subscriptionType // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
        companyLocation:
            freezed == companyLocation
                ? _value.companyLocation
                : companyLocation // ignore: cast_nullable_to_non_nullable
                    as CompanyLocation?,
        customerType:
            freezed == customerType
                ? _value.customerType
                : customerType // ignore: cast_nullable_to_non_nullable
                    as ApprovalReason?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsImpl implements _Fields {
  const _$FieldsImpl({
    @JsonKey(name: 'owner_national_id_photo') this.ownerNationalIdPhoto,
    @JsonKey(name: 'company_store_condition') this.companyStoreCondition,
    @JsonKey(name: 'requested_by') this.requestedBy,
    @JsonKey(name: 'company_email') this.companyEmail,
    @JsonKey(name: 'approved_by') this.approvedBy,
    @JsonKey(name: 'ownership_status') this.ownershipStatus,
    @JsonKey(name: 'company_store_photo') this.companyStorePhoto,
    @JsonKey(name: 'company_address') this.companyAddress,
    @JsonKey(name: 'company_name') this.companyName,
    @JsonKey(name: 'owner_phone_number') this.ownerPhoneNumber,
    @JsonKey(name: 'request_destination') this.requestDestination,
    @JsonKey(name: 'approval_status') this.approvalStatus,
    @JsonKey(name: 'owner_address') this.ownerAddress,
    @JsonKey(name: 'owner_tax_id') this.ownerTaxId,
    @JsonKey(name: 'carbon_copy') this.carbonCopy,
    @JsonKey(name: 'company_phone_number') this.companyPhoneNumber,
    @JsonKey(name: 'approval_date') this.approvalDate,
    @JsonKey(name: 'note') this.note,
    @JsonKey(name: 'owner_name') this.ownerName,
    @JsonKey(name: 'owner_national_id') this.ownerNationalId,
    @JsonKey(name: 'approval_reason') this.approvalReason,
    @JsonKey(name: 'subscription_type') this.subscriptionType,
    @JsonKey(name: 'company_location') this.companyLocation,
    @JsonKey(name: 'customer_type') this.customerType,
  });

  factory _$FieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsImplFromJson(json);

  @override
  @JsonKey(name: 'owner_national_id_photo')
  final ApprovalReason? ownerNationalIdPhoto;
  @override
  @JsonKey(name: 'company_store_condition')
  final ApprovalReason? companyStoreCondition;
  @override
  @JsonKey(name: 'requested_by')
  final ApprovalReason? requestedBy;
  @override
  @JsonKey(name: 'company_email')
  final ApprovalReason? companyEmail;
  @override
  @JsonKey(name: 'approved_by')
  final ApprovalReason? approvedBy;
  @override
  @JsonKey(name: 'ownership_status')
  final ApprovalReason? ownershipStatus;
  @override
  @JsonKey(name: 'company_store_photo')
  final ApprovalReason? companyStorePhoto;
  @override
  @JsonKey(name: 'company_address')
  final ApprovalReason? companyAddress;
  @override
  @JsonKey(name: 'company_name')
  final ApprovalReason? companyName;
  @override
  @JsonKey(name: 'owner_phone_number')
  final ApprovalReason? ownerPhoneNumber;
  @override
  @JsonKey(name: 'request_destination')
  final ApprovalReason? requestDestination;
  @override
  @JsonKey(name: 'approval_status')
  final ApprovalReason? approvalStatus;
  @override
  @JsonKey(name: 'owner_address')
  final ApprovalReason? ownerAddress;
  @override
  @JsonKey(name: 'owner_tax_id')
  final ApprovalReason? ownerTaxId;
  @override
  @JsonKey(name: 'carbon_copy')
  final ApprovalReason? carbonCopy;
  @override
  @JsonKey(name: 'company_phone_number')
  final ApprovalReason? companyPhoneNumber;
  @override
  @JsonKey(name: 'approval_date')
  final ApprovalDate? approvalDate;
  @override
  @JsonKey(name: 'note')
  final ApprovalReason? note;
  @override
  @JsonKey(name: 'owner_name')
  final ApprovalReason? ownerName;
  @override
  @JsonKey(name: 'owner_national_id')
  final ApprovalReason? ownerNationalId;
  @override
  @JsonKey(name: 'approval_reason')
  final ApprovalReason? approvalReason;
  @override
  @JsonKey(name: 'subscription_type')
  final ApprovalReason? subscriptionType;
  @override
  @JsonKey(name: 'company_location')
  final CompanyLocation? companyLocation;
  @override
  @JsonKey(name: 'customer_type')
  final ApprovalReason? customerType;

  @override
  String toString() {
    return 'Fields(ownerNationalIdPhoto: $ownerNationalIdPhoto, companyStoreCondition: $companyStoreCondition, requestedBy: $requestedBy, companyEmail: $companyEmail, approvedBy: $approvedBy, ownershipStatus: $ownershipStatus, companyStorePhoto: $companyStorePhoto, companyAddress: $companyAddress, companyName: $companyName, ownerPhoneNumber: $ownerPhoneNumber, requestDestination: $requestDestination, approvalStatus: $approvalStatus, ownerAddress: $ownerAddress, ownerTaxId: $ownerTaxId, carbonCopy: $carbonCopy, companyPhoneNumber: $companyPhoneNumber, approvalDate: $approvalDate, note: $note, ownerName: $ownerName, ownerNationalId: $ownerNationalId, approvalReason: $approvalReason, subscriptionType: $subscriptionType, companyLocation: $companyLocation, customerType: $customerType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsImpl &&
            (identical(other.ownerNationalIdPhoto, ownerNationalIdPhoto) ||
                other.ownerNationalIdPhoto == ownerNationalIdPhoto) &&
            (identical(other.companyStoreCondition, companyStoreCondition) ||
                other.companyStoreCondition == companyStoreCondition) &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.companyEmail, companyEmail) ||
                other.companyEmail == companyEmail) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.ownershipStatus, ownershipStatus) ||
                other.ownershipStatus == ownershipStatus) &&
            (identical(other.companyStorePhoto, companyStorePhoto) ||
                other.companyStorePhoto == companyStorePhoto) &&
            (identical(other.companyAddress, companyAddress) ||
                other.companyAddress == companyAddress) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.ownerPhoneNumber, ownerPhoneNumber) ||
                other.ownerPhoneNumber == ownerPhoneNumber) &&
            (identical(other.requestDestination, requestDestination) ||
                other.requestDestination == requestDestination) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.ownerAddress, ownerAddress) ||
                other.ownerAddress == ownerAddress) &&
            (identical(other.ownerTaxId, ownerTaxId) ||
                other.ownerTaxId == ownerTaxId) &&
            (identical(other.carbonCopy, carbonCopy) ||
                other.carbonCopy == carbonCopy) &&
            (identical(other.companyPhoneNumber, companyPhoneNumber) ||
                other.companyPhoneNumber == companyPhoneNumber) &&
            (identical(other.approvalDate, approvalDate) ||
                other.approvalDate == approvalDate) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerNationalId, ownerNationalId) ||
                other.ownerNationalId == ownerNationalId) &&
            (identical(other.approvalReason, approvalReason) ||
                other.approvalReason == approvalReason) &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType) &&
            (identical(other.companyLocation, companyLocation) ||
                other.companyLocation == companyLocation) &&
            (identical(other.customerType, customerType) ||
                other.customerType == customerType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    ownerNationalIdPhoto,
    companyStoreCondition,
    requestedBy,
    companyEmail,
    approvedBy,
    ownershipStatus,
    companyStorePhoto,
    companyAddress,
    companyName,
    ownerPhoneNumber,
    requestDestination,
    approvalStatus,
    ownerAddress,
    ownerTaxId,
    carbonCopy,
    companyPhoneNumber,
    approvalDate,
    note,
    ownerName,
    ownerNationalId,
    approvalReason,
    subscriptionType,
    companyLocation,
    customerType,
  ]);

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
    @JsonKey(name: 'owner_national_id_photo')
    final ApprovalReason? ownerNationalIdPhoto,
    @JsonKey(name: 'company_store_condition')
    final ApprovalReason? companyStoreCondition,
    @JsonKey(name: 'requested_by') final ApprovalReason? requestedBy,
    @JsonKey(name: 'company_email') final ApprovalReason? companyEmail,
    @JsonKey(name: 'approved_by') final ApprovalReason? approvedBy,
    @JsonKey(name: 'ownership_status') final ApprovalReason? ownershipStatus,
    @JsonKey(name: 'company_store_photo')
    final ApprovalReason? companyStorePhoto,
    @JsonKey(name: 'company_address') final ApprovalReason? companyAddress,
    @JsonKey(name: 'company_name') final ApprovalReason? companyName,
    @JsonKey(name: 'owner_phone_number') final ApprovalReason? ownerPhoneNumber,
    @JsonKey(name: 'request_destination')
    final ApprovalReason? requestDestination,
    @JsonKey(name: 'approval_status') final ApprovalReason? approvalStatus,
    @JsonKey(name: 'owner_address') final ApprovalReason? ownerAddress,
    @JsonKey(name: 'owner_tax_id') final ApprovalReason? ownerTaxId,
    @JsonKey(name: 'carbon_copy') final ApprovalReason? carbonCopy,
    @JsonKey(name: 'company_phone_number')
    final ApprovalReason? companyPhoneNumber,
    @JsonKey(name: 'approval_date') final ApprovalDate? approvalDate,
    @JsonKey(name: 'note') final ApprovalReason? note,
    @JsonKey(name: 'owner_name') final ApprovalReason? ownerName,
    @JsonKey(name: 'owner_national_id') final ApprovalReason? ownerNationalId,
    @JsonKey(name: 'approval_reason') final ApprovalReason? approvalReason,
    @JsonKey(name: 'subscription_type') final ApprovalReason? subscriptionType,
    @JsonKey(name: 'company_location') final CompanyLocation? companyLocation,
    @JsonKey(name: 'customer_type') final ApprovalReason? customerType,
  }) = _$FieldsImpl;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$FieldsImpl.fromJson;

  @override
  @JsonKey(name: 'owner_national_id_photo')
  ApprovalReason? get ownerNationalIdPhoto;
  @override
  @JsonKey(name: 'company_store_condition')
  ApprovalReason? get companyStoreCondition;
  @override
  @JsonKey(name: 'requested_by')
  ApprovalReason? get requestedBy;
  @override
  @JsonKey(name: 'company_email')
  ApprovalReason? get companyEmail;
  @override
  @JsonKey(name: 'approved_by')
  ApprovalReason? get approvedBy;
  @override
  @JsonKey(name: 'ownership_status')
  ApprovalReason? get ownershipStatus;
  @override
  @JsonKey(name: 'company_store_photo')
  ApprovalReason? get companyStorePhoto;
  @override
  @JsonKey(name: 'company_address')
  ApprovalReason? get companyAddress;
  @override
  @JsonKey(name: 'company_name')
  ApprovalReason? get companyName;
  @override
  @JsonKey(name: 'owner_phone_number')
  ApprovalReason? get ownerPhoneNumber;
  @override
  @JsonKey(name: 'request_destination')
  ApprovalReason? get requestDestination;
  @override
  @JsonKey(name: 'approval_status')
  ApprovalReason? get approvalStatus;
  @override
  @JsonKey(name: 'owner_address')
  ApprovalReason? get ownerAddress;
  @override
  @JsonKey(name: 'owner_tax_id')
  ApprovalReason? get ownerTaxId;
  @override
  @JsonKey(name: 'carbon_copy')
  ApprovalReason? get carbonCopy;
  @override
  @JsonKey(name: 'company_phone_number')
  ApprovalReason? get companyPhoneNumber;
  @override
  @JsonKey(name: 'approval_date')
  ApprovalDate? get approvalDate;
  @override
  @JsonKey(name: 'note')
  ApprovalReason? get note;
  @override
  @JsonKey(name: 'owner_name')
  ApprovalReason? get ownerName;
  @override
  @JsonKey(name: 'owner_national_id')
  ApprovalReason? get ownerNationalId;
  @override
  @JsonKey(name: 'approval_reason')
  ApprovalReason? get approvalReason;
  @override
  @JsonKey(name: 'subscription_type')
  ApprovalReason? get subscriptionType;
  @override
  @JsonKey(name: 'company_location')
  CompanyLocation? get companyLocation;
  @override
  @JsonKey(name: 'customer_type')
  ApprovalReason? get customerType;

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldsImplCopyWith<_$FieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApprovalDate _$ApprovalDateFromJson(Map<String, dynamic> json) {
  return _ApprovalDate.fromJson(json);
}

/// @nodoc
mixin _$ApprovalDate {
  @JsonKey(name: 'timestampValue')
  String? get timestampValue => throw _privateConstructorUsedError;

  /// Serializes this ApprovalDate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApprovalDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApprovalDateCopyWith<ApprovalDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalDateCopyWith<$Res> {
  factory $ApprovalDateCopyWith(
    ApprovalDate value,
    $Res Function(ApprovalDate) then,
  ) = _$ApprovalDateCopyWithImpl<$Res, ApprovalDate>;
  @useResult
  $Res call({@JsonKey(name: 'timestampValue') String? timestampValue});
}

/// @nodoc
class _$ApprovalDateCopyWithImpl<$Res, $Val extends ApprovalDate>
    implements $ApprovalDateCopyWith<$Res> {
  _$ApprovalDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApprovalDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? timestampValue = freezed}) {
    return _then(
      _value.copyWith(
            timestampValue:
                freezed == timestampValue
                    ? _value.timestampValue
                    : timestampValue // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApprovalDateImplCopyWith<$Res>
    implements $ApprovalDateCopyWith<$Res> {
  factory _$$ApprovalDateImplCopyWith(
    _$ApprovalDateImpl value,
    $Res Function(_$ApprovalDateImpl) then,
  ) = __$$ApprovalDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'timestampValue') String? timestampValue});
}

/// @nodoc
class __$$ApprovalDateImplCopyWithImpl<$Res>
    extends _$ApprovalDateCopyWithImpl<$Res, _$ApprovalDateImpl>
    implements _$$ApprovalDateImplCopyWith<$Res> {
  __$$ApprovalDateImplCopyWithImpl(
    _$ApprovalDateImpl _value,
    $Res Function(_$ApprovalDateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApprovalDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? timestampValue = freezed}) {
    return _then(
      _$ApprovalDateImpl(
        timestampValue:
            freezed == timestampValue
                ? _value.timestampValue
                : timestampValue // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApprovalDateImpl implements _ApprovalDate {
  const _$ApprovalDateImpl({
    @JsonKey(name: 'timestampValue') this.timestampValue,
  });

  factory _$ApprovalDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApprovalDateImplFromJson(json);

  @override
  @JsonKey(name: 'timestampValue')
  final String? timestampValue;

  @override
  String toString() {
    return 'ApprovalDate(timestampValue: $timestampValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalDateImpl &&
            (identical(other.timestampValue, timestampValue) ||
                other.timestampValue == timestampValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timestampValue);

  /// Create a copy of ApprovalDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovalDateImplCopyWith<_$ApprovalDateImpl> get copyWith =>
      __$$ApprovalDateImplCopyWithImpl<_$ApprovalDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovalDateImplToJson(this);
  }
}

abstract class _ApprovalDate implements ApprovalDate {
  const factory _ApprovalDate({
    @JsonKey(name: 'timestampValue') final String? timestampValue,
  }) = _$ApprovalDateImpl;

  factory _ApprovalDate.fromJson(Map<String, dynamic> json) =
      _$ApprovalDateImpl.fromJson;

  @override
  @JsonKey(name: 'timestampValue')
  String? get timestampValue;

  /// Create a copy of ApprovalDate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApprovalDateImplCopyWith<_$ApprovalDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApprovalReason _$ApprovalReasonFromJson(Map<String, dynamic> json) {
  return _ApprovalReason.fromJson(json);
}

/// @nodoc
mixin _$ApprovalReason {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this ApprovalReason to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApprovalReason
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApprovalReasonCopyWith<ApprovalReason> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalReasonCopyWith<$Res> {
  factory $ApprovalReasonCopyWith(
    ApprovalReason value,
    $Res Function(ApprovalReason) then,
  ) = _$ApprovalReasonCopyWithImpl<$Res, ApprovalReason>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$ApprovalReasonCopyWithImpl<$Res, $Val extends ApprovalReason>
    implements $ApprovalReasonCopyWith<$Res> {
  _$ApprovalReasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApprovalReason
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
abstract class _$$ApprovalReasonImplCopyWith<$Res>
    implements $ApprovalReasonCopyWith<$Res> {
  factory _$$ApprovalReasonImplCopyWith(
    _$ApprovalReasonImpl value,
    $Res Function(_$ApprovalReasonImpl) then,
  ) = __$$ApprovalReasonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$ApprovalReasonImplCopyWithImpl<$Res>
    extends _$ApprovalReasonCopyWithImpl<$Res, _$ApprovalReasonImpl>
    implements _$$ApprovalReasonImplCopyWith<$Res> {
  __$$ApprovalReasonImplCopyWithImpl(
    _$ApprovalReasonImpl _value,
    $Res Function(_$ApprovalReasonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApprovalReason
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$ApprovalReasonImpl(
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
class _$ApprovalReasonImpl implements _ApprovalReason {
  const _$ApprovalReasonImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$ApprovalReasonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApprovalReasonImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'ApprovalReason(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalReasonImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of ApprovalReason
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovalReasonImplCopyWith<_$ApprovalReasonImpl> get copyWith =>
      __$$ApprovalReasonImplCopyWithImpl<_$ApprovalReasonImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovalReasonImplToJson(this);
  }
}

abstract class _ApprovalReason implements ApprovalReason {
  const factory _ApprovalReason({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$ApprovalReasonImpl;

  factory _ApprovalReason.fromJson(Map<String, dynamic> json) =
      _$ApprovalReasonImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of ApprovalReason
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApprovalReasonImplCopyWith<_$ApprovalReasonImpl> get copyWith =>
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
  @JsonKey(name: 'latitude')
  Itude? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  Itude? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'accuracy')
  Accuracy? get accuracy => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'latitude') Itude? latitude,
    @JsonKey(name: 'longitude') Itude? longitude,
    @JsonKey(name: 'accuracy') Accuracy? accuracy,
  });

  $ItudeCopyWith<$Res>? get latitude;
  $ItudeCopyWith<$Res>? get longitude;
  $AccuracyCopyWith<$Res>? get accuracy;
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
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? accuracy = freezed,
  }) {
    return _then(
      _value.copyWith(
            latitude:
                freezed == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as Itude?,
            longitude:
                freezed == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as Itude?,
            accuracy:
                freezed == accuracy
                    ? _value.accuracy
                    : accuracy // ignore: cast_nullable_to_non_nullable
                        as Accuracy?,
          )
          as $Val,
    );
  }

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItudeCopyWith<$Res>? get latitude {
    if (_value.latitude == null) {
      return null;
    }

    return $ItudeCopyWith<$Res>(_value.latitude!, (value) {
      return _then(_value.copyWith(latitude: value) as $Val);
    });
  }

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItudeCopyWith<$Res>? get longitude {
    if (_value.longitude == null) {
      return null;
    }

    return $ItudeCopyWith<$Res>(_value.longitude!, (value) {
      return _then(_value.copyWith(longitude: value) as $Val);
    });
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
    @JsonKey(name: 'latitude') Itude? latitude,
    @JsonKey(name: 'longitude') Itude? longitude,
    @JsonKey(name: 'accuracy') Accuracy? accuracy,
  });

  @override
  $ItudeCopyWith<$Res>? get latitude;
  @override
  $ItudeCopyWith<$Res>? get longitude;
  @override
  $AccuracyCopyWith<$Res>? get accuracy;
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
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? accuracy = freezed,
  }) {
    return _then(
      _$MapValueFieldsImpl(
        latitude:
            freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as Itude?,
        longitude:
            freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as Itude?,
        accuracy:
            freezed == accuracy
                ? _value.accuracy
                : accuracy // ignore: cast_nullable_to_non_nullable
                    as Accuracy?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MapValueFieldsImpl implements _MapValueFields {
  const _$MapValueFieldsImpl({
    @JsonKey(name: 'latitude') this.latitude,
    @JsonKey(name: 'longitude') this.longitude,
    @JsonKey(name: 'accuracy') this.accuracy,
  });

  factory _$MapValueFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapValueFieldsImplFromJson(json);

  @override
  @JsonKey(name: 'latitude')
  final Itude? latitude;
  @override
  @JsonKey(name: 'longitude')
  final Itude? longitude;
  @override
  @JsonKey(name: 'accuracy')
  final Accuracy? accuracy;

  @override
  String toString() {
    return 'MapValueFields(latitude: $latitude, longitude: $longitude, accuracy: $accuracy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapValueFieldsImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, accuracy);

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
    @JsonKey(name: 'latitude') final Itude? latitude,
    @JsonKey(name: 'longitude') final Itude? longitude,
    @JsonKey(name: 'accuracy') final Accuracy? accuracy,
  }) = _$MapValueFieldsImpl;

  factory _MapValueFields.fromJson(Map<String, dynamic> json) =
      _$MapValueFieldsImpl.fromJson;

  @override
  @JsonKey(name: 'latitude')
  Itude? get latitude;
  @override
  @JsonKey(name: 'longitude')
  Itude? get longitude;
  @override
  @JsonKey(name: 'accuracy')
  Accuracy? get accuracy;

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
  int? get doubleValue => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'doubleValue') int? doubleValue});
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
                        as int?,
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
  $Res call({@JsonKey(name: 'doubleValue') int? doubleValue});
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
                    as int?,
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
  final int? doubleValue;

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
    @JsonKey(name: 'doubleValue') final int? doubleValue,
  }) = _$AccuracyImpl;

  factory _Accuracy.fromJson(Map<String, dynamic> json) =
      _$AccuracyImpl.fromJson;

  @override
  @JsonKey(name: 'doubleValue')
  int? get doubleValue;

  /// Create a copy of Accuracy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccuracyImplCopyWith<_$AccuracyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Itude _$ItudeFromJson(Map<String, dynamic> json) {
  return _Itude.fromJson(json);
}

/// @nodoc
mixin _$Itude {
  @JsonKey(name: 'doubleValue')
  double? get doubleValue => throw _privateConstructorUsedError;

  /// Serializes this Itude to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Itude
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItudeCopyWith<Itude> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItudeCopyWith<$Res> {
  factory $ItudeCopyWith(Itude value, $Res Function(Itude) then) =
      _$ItudeCopyWithImpl<$Res, Itude>;
  @useResult
  $Res call({@JsonKey(name: 'doubleValue') double? doubleValue});
}

/// @nodoc
class _$ItudeCopyWithImpl<$Res, $Val extends Itude>
    implements $ItudeCopyWith<$Res> {
  _$ItudeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Itude
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
abstract class _$$ItudeImplCopyWith<$Res> implements $ItudeCopyWith<$Res> {
  factory _$$ItudeImplCopyWith(
    _$ItudeImpl value,
    $Res Function(_$ItudeImpl) then,
  ) = __$$ItudeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'doubleValue') double? doubleValue});
}

/// @nodoc
class __$$ItudeImplCopyWithImpl<$Res>
    extends _$ItudeCopyWithImpl<$Res, _$ItudeImpl>
    implements _$$ItudeImplCopyWith<$Res> {
  __$$ItudeImplCopyWithImpl(
    _$ItudeImpl _value,
    $Res Function(_$ItudeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Itude
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? doubleValue = freezed}) {
    return _then(
      _$ItudeImpl(
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
class _$ItudeImpl implements _Itude {
  const _$ItudeImpl({@JsonKey(name: 'doubleValue') this.doubleValue});

  factory _$ItudeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItudeImplFromJson(json);

  @override
  @JsonKey(name: 'doubleValue')
  final double? doubleValue;

  @override
  String toString() {
    return 'Itude(doubleValue: $doubleValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItudeImpl &&
            (identical(other.doubleValue, doubleValue) ||
                other.doubleValue == doubleValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, doubleValue);

  /// Create a copy of Itude
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItudeImplCopyWith<_$ItudeImpl> get copyWith =>
      __$$ItudeImplCopyWithImpl<_$ItudeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItudeImplToJson(this);
  }
}

abstract class _Itude implements Itude {
  const factory _Itude({
    @JsonKey(name: 'doubleValue') final double? doubleValue,
  }) = _$ItudeImpl;

  factory _Itude.fromJson(Map<String, dynamic> json) = _$ItudeImpl.fromJson;

  @override
  @JsonKey(name: 'doubleValue')
  double? get doubleValue;

  /// Create a copy of Itude
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItudeImplCopyWith<_$ItudeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
