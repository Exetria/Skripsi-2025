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
  CustomerRequestDomainFields? get fields => throw _privateConstructorUsedError;
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
    @JsonKey(name: 'fields') CustomerRequestDomainFields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  });

  $CustomerRequestDomainFieldsCopyWith<$Res>? get fields;
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
                        as CustomerRequestDomainFields?,
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
  $CustomerRequestDomainFieldsCopyWith<$Res>? get fields {
    if (_value.fields == null) {
      return null;
    }

    return $CustomerRequestDomainFieldsCopyWith<$Res>(_value.fields!, (value) {
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
    @JsonKey(name: 'fields') CustomerRequestDomainFields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  });

  @override
  $CustomerRequestDomainFieldsCopyWith<$Res>? get fields;
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
                    as CustomerRequestDomainFields?,
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
  final CustomerRequestDomainFields? fields;
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
    @JsonKey(name: 'fields') final CustomerRequestDomainFields? fields,
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
  CustomerRequestDomainFields? get fields;
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

CustomerRequestDomainFields _$CustomerRequestDomainFieldsFromJson(
  Map<String, dynamic> json,
) {
  return _CustomerRequestDomainFields.fromJson(json);
}

/// @nodoc
mixin _$CustomerRequestDomainFields {
  @JsonKey(name: 'approved_by')
  ApprovalStatus? get approvedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_store_condition')
  ApprovalStatus? get companyStoreCondition =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'approval_status')
  ApprovalStatus? get approvalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_tax_id')
  ApprovalStatus? get companyTaxId => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_destination')
  ApprovalStatus? get requestDestination => throw _privateConstructorUsedError;
  @JsonKey(name: 'pic_national_id_photo')
  ApprovalStatus? get picNationalIdPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'pic_position')
  ApprovalStatus? get picPosition => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_location')
  CompanyLocation? get companyLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscription_type')
  ApprovalStatus? get subscriptionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'pic_national_id')
  ApprovalStatus? get picNationalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pic_address')
  ApprovalStatus? get picAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'pic_tax_id')
  ApprovalStatus? get picTaxId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_type')
  ApprovalStatus? get customerType => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_by')
  ApprovalStatus? get requestedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  ApprovalStatus? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'carbon_copy')
  ApprovalStatus? get carbonCopy => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_email')
  ApprovalStatus? get companyEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_period')
  Credit? get creditPeriod => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_phone_number')
  ApprovalStatus? get companyPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'ownership_status')
  ApprovalStatus? get ownershipStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  ApprovalStatus? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_store_photo')
  ApprovalStatus? get companyStorePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_limit')
  Credit? get creditLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'pic_name')
  ApprovalStatus? get picName => throw _privateConstructorUsedError;
  @JsonKey(name: 'pic_phone_number')
  ApprovalStatus? get picPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'approval_reason')
  Approval? get approvalReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_address')
  ApprovalStatus? get companyAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'approval_date')
  Approval? get approvalDate => throw _privateConstructorUsedError;

  /// Serializes this CustomerRequestDomainFields to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerRequestDomainFieldsCopyWith<CustomerRequestDomainFields>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerRequestDomainFieldsCopyWith<$Res> {
  factory $CustomerRequestDomainFieldsCopyWith(
    CustomerRequestDomainFields value,
    $Res Function(CustomerRequestDomainFields) then,
  ) =
      _$CustomerRequestDomainFieldsCopyWithImpl<
        $Res,
        CustomerRequestDomainFields
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'approved_by') ApprovalStatus? approvedBy,
    @JsonKey(name: 'company_store_condition')
    ApprovalStatus? companyStoreCondition,
    @JsonKey(name: 'approval_status') ApprovalStatus? approvalStatus,
    @JsonKey(name: 'company_tax_id') ApprovalStatus? companyTaxId,
    @JsonKey(name: 'request_destination') ApprovalStatus? requestDestination,
    @JsonKey(name: 'pic_national_id_photo') ApprovalStatus? picNationalIdPhoto,
    @JsonKey(name: 'pic_position') ApprovalStatus? picPosition,
    @JsonKey(name: 'company_location') CompanyLocation? companyLocation,
    @JsonKey(name: 'subscription_type') ApprovalStatus? subscriptionType,
    @JsonKey(name: 'pic_national_id') ApprovalStatus? picNationalId,
    @JsonKey(name: 'pic_address') ApprovalStatus? picAddress,
    @JsonKey(name: 'pic_tax_id') ApprovalStatus? picTaxId,
    @JsonKey(name: 'customer_type') ApprovalStatus? customerType,
    @JsonKey(name: 'requested_by') ApprovalStatus? requestedBy,
    @JsonKey(name: 'company_name') ApprovalStatus? companyName,
    @JsonKey(name: 'carbon_copy') ApprovalStatus? carbonCopy,
    @JsonKey(name: 'company_email') ApprovalStatus? companyEmail,
    @JsonKey(name: 'credit_period') Credit? creditPeriod,
    @JsonKey(name: 'company_phone_number') ApprovalStatus? companyPhoneNumber,
    @JsonKey(name: 'ownership_status') ApprovalStatus? ownershipStatus,
    @JsonKey(name: 'note') ApprovalStatus? note,
    @JsonKey(name: 'company_store_photo') ApprovalStatus? companyStorePhoto,
    @JsonKey(name: 'credit_limit') Credit? creditLimit,
    @JsonKey(name: 'pic_name') ApprovalStatus? picName,
    @JsonKey(name: 'pic_phone_number') ApprovalStatus? picPhoneNumber,
    @JsonKey(name: 'approval_reason') Approval? approvalReason,
    @JsonKey(name: 'company_address') ApprovalStatus? companyAddress,
    @JsonKey(name: 'approval_date') Approval? approvalDate,
  });

  $ApprovalStatusCopyWith<$Res>? get approvedBy;
  $ApprovalStatusCopyWith<$Res>? get companyStoreCondition;
  $ApprovalStatusCopyWith<$Res>? get approvalStatus;
  $ApprovalStatusCopyWith<$Res>? get companyTaxId;
  $ApprovalStatusCopyWith<$Res>? get requestDestination;
  $ApprovalStatusCopyWith<$Res>? get picNationalIdPhoto;
  $ApprovalStatusCopyWith<$Res>? get picPosition;
  $CompanyLocationCopyWith<$Res>? get companyLocation;
  $ApprovalStatusCopyWith<$Res>? get subscriptionType;
  $ApprovalStatusCopyWith<$Res>? get picNationalId;
  $ApprovalStatusCopyWith<$Res>? get picAddress;
  $ApprovalStatusCopyWith<$Res>? get picTaxId;
  $ApprovalStatusCopyWith<$Res>? get customerType;
  $ApprovalStatusCopyWith<$Res>? get requestedBy;
  $ApprovalStatusCopyWith<$Res>? get companyName;
  $ApprovalStatusCopyWith<$Res>? get carbonCopy;
  $ApprovalStatusCopyWith<$Res>? get companyEmail;
  $CreditCopyWith<$Res>? get creditPeriod;
  $ApprovalStatusCopyWith<$Res>? get companyPhoneNumber;
  $ApprovalStatusCopyWith<$Res>? get ownershipStatus;
  $ApprovalStatusCopyWith<$Res>? get note;
  $ApprovalStatusCopyWith<$Res>? get companyStorePhoto;
  $CreditCopyWith<$Res>? get creditLimit;
  $ApprovalStatusCopyWith<$Res>? get picName;
  $ApprovalStatusCopyWith<$Res>? get picPhoneNumber;
  $ApprovalCopyWith<$Res>? get approvalReason;
  $ApprovalStatusCopyWith<$Res>? get companyAddress;
  $ApprovalCopyWith<$Res>? get approvalDate;
}

/// @nodoc
class _$CustomerRequestDomainFieldsCopyWithImpl<
  $Res,
  $Val extends CustomerRequestDomainFields
>
    implements $CustomerRequestDomainFieldsCopyWith<$Res> {
  _$CustomerRequestDomainFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approvedBy = freezed,
    Object? companyStoreCondition = freezed,
    Object? approvalStatus = freezed,
    Object? companyTaxId = freezed,
    Object? requestDestination = freezed,
    Object? picNationalIdPhoto = freezed,
    Object? picPosition = freezed,
    Object? companyLocation = freezed,
    Object? subscriptionType = freezed,
    Object? picNationalId = freezed,
    Object? picAddress = freezed,
    Object? picTaxId = freezed,
    Object? customerType = freezed,
    Object? requestedBy = freezed,
    Object? companyName = freezed,
    Object? carbonCopy = freezed,
    Object? companyEmail = freezed,
    Object? creditPeriod = freezed,
    Object? companyPhoneNumber = freezed,
    Object? ownershipStatus = freezed,
    Object? note = freezed,
    Object? companyStorePhoto = freezed,
    Object? creditLimit = freezed,
    Object? picName = freezed,
    Object? picPhoneNumber = freezed,
    Object? approvalReason = freezed,
    Object? companyAddress = freezed,
    Object? approvalDate = freezed,
  }) {
    return _then(
      _value.copyWith(
            approvedBy:
                freezed == approvedBy
                    ? _value.approvedBy
                    : approvedBy // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            companyStoreCondition:
                freezed == companyStoreCondition
                    ? _value.companyStoreCondition
                    : companyStoreCondition // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            approvalStatus:
                freezed == approvalStatus
                    ? _value.approvalStatus
                    : approvalStatus // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            companyTaxId:
                freezed == companyTaxId
                    ? _value.companyTaxId
                    : companyTaxId // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            requestDestination:
                freezed == requestDestination
                    ? _value.requestDestination
                    : requestDestination // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            picNationalIdPhoto:
                freezed == picNationalIdPhoto
                    ? _value.picNationalIdPhoto
                    : picNationalIdPhoto // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            picPosition:
                freezed == picPosition
                    ? _value.picPosition
                    : picPosition // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            companyLocation:
                freezed == companyLocation
                    ? _value.companyLocation
                    : companyLocation // ignore: cast_nullable_to_non_nullable
                        as CompanyLocation?,
            subscriptionType:
                freezed == subscriptionType
                    ? _value.subscriptionType
                    : subscriptionType // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            picNationalId:
                freezed == picNationalId
                    ? _value.picNationalId
                    : picNationalId // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            picAddress:
                freezed == picAddress
                    ? _value.picAddress
                    : picAddress // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            picTaxId:
                freezed == picTaxId
                    ? _value.picTaxId
                    : picTaxId // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            customerType:
                freezed == customerType
                    ? _value.customerType
                    : customerType // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            requestedBy:
                freezed == requestedBy
                    ? _value.requestedBy
                    : requestedBy // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            companyName:
                freezed == companyName
                    ? _value.companyName
                    : companyName // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            carbonCopy:
                freezed == carbonCopy
                    ? _value.carbonCopy
                    : carbonCopy // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            companyEmail:
                freezed == companyEmail
                    ? _value.companyEmail
                    : companyEmail // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            creditPeriod:
                freezed == creditPeriod
                    ? _value.creditPeriod
                    : creditPeriod // ignore: cast_nullable_to_non_nullable
                        as Credit?,
            companyPhoneNumber:
                freezed == companyPhoneNumber
                    ? _value.companyPhoneNumber
                    : companyPhoneNumber // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            ownershipStatus:
                freezed == ownershipStatus
                    ? _value.ownershipStatus
                    : ownershipStatus // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            note:
                freezed == note
                    ? _value.note
                    : note // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            companyStorePhoto:
                freezed == companyStorePhoto
                    ? _value.companyStorePhoto
                    : companyStorePhoto // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            creditLimit:
                freezed == creditLimit
                    ? _value.creditLimit
                    : creditLimit // ignore: cast_nullable_to_non_nullable
                        as Credit?,
            picName:
                freezed == picName
                    ? _value.picName
                    : picName // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            picPhoneNumber:
                freezed == picPhoneNumber
                    ? _value.picPhoneNumber
                    : picPhoneNumber // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            approvalReason:
                freezed == approvalReason
                    ? _value.approvalReason
                    : approvalReason // ignore: cast_nullable_to_non_nullable
                        as Approval?,
            companyAddress:
                freezed == companyAddress
                    ? _value.companyAddress
                    : companyAddress // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            approvalDate:
                freezed == approvalDate
                    ? _value.approvalDate
                    : approvalDate // ignore: cast_nullable_to_non_nullable
                        as Approval?,
          )
          as $Val,
    );
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get approvedBy {
    if (_value.approvedBy == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.approvedBy!, (value) {
      return _then(_value.copyWith(approvedBy: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get companyStoreCondition {
    if (_value.companyStoreCondition == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.companyStoreCondition!, (
      value,
    ) {
      return _then(_value.copyWith(companyStoreCondition: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get approvalStatus {
    if (_value.approvalStatus == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.approvalStatus!, (value) {
      return _then(_value.copyWith(approvalStatus: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get companyTaxId {
    if (_value.companyTaxId == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.companyTaxId!, (value) {
      return _then(_value.copyWith(companyTaxId: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get requestDestination {
    if (_value.requestDestination == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.requestDestination!, (value) {
      return _then(_value.copyWith(requestDestination: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get picNationalIdPhoto {
    if (_value.picNationalIdPhoto == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.picNationalIdPhoto!, (value) {
      return _then(_value.copyWith(picNationalIdPhoto: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get picPosition {
    if (_value.picPosition == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.picPosition!, (value) {
      return _then(_value.copyWith(picPosition: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
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

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get subscriptionType {
    if (_value.subscriptionType == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.subscriptionType!, (value) {
      return _then(_value.copyWith(subscriptionType: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get picNationalId {
    if (_value.picNationalId == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.picNationalId!, (value) {
      return _then(_value.copyWith(picNationalId: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get picAddress {
    if (_value.picAddress == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.picAddress!, (value) {
      return _then(_value.copyWith(picAddress: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get picTaxId {
    if (_value.picTaxId == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.picTaxId!, (value) {
      return _then(_value.copyWith(picTaxId: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get customerType {
    if (_value.customerType == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.customerType!, (value) {
      return _then(_value.copyWith(customerType: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get requestedBy {
    if (_value.requestedBy == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.requestedBy!, (value) {
      return _then(_value.copyWith(requestedBy: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get companyName {
    if (_value.companyName == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.companyName!, (value) {
      return _then(_value.copyWith(companyName: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get carbonCopy {
    if (_value.carbonCopy == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.carbonCopy!, (value) {
      return _then(_value.copyWith(carbonCopy: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get companyEmail {
    if (_value.companyEmail == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.companyEmail!, (value) {
      return _then(_value.copyWith(companyEmail: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreditCopyWith<$Res>? get creditPeriod {
    if (_value.creditPeriod == null) {
      return null;
    }

    return $CreditCopyWith<$Res>(_value.creditPeriod!, (value) {
      return _then(_value.copyWith(creditPeriod: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get companyPhoneNumber {
    if (_value.companyPhoneNumber == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.companyPhoneNumber!, (value) {
      return _then(_value.copyWith(companyPhoneNumber: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get ownershipStatus {
    if (_value.ownershipStatus == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.ownershipStatus!, (value) {
      return _then(_value.copyWith(ownershipStatus: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get companyStorePhoto {
    if (_value.companyStorePhoto == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.companyStorePhoto!, (value) {
      return _then(_value.copyWith(companyStorePhoto: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreditCopyWith<$Res>? get creditLimit {
    if (_value.creditLimit == null) {
      return null;
    }

    return $CreditCopyWith<$Res>(_value.creditLimit!, (value) {
      return _then(_value.copyWith(creditLimit: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get picName {
    if (_value.picName == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.picName!, (value) {
      return _then(_value.copyWith(picName: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get picPhoneNumber {
    if (_value.picPhoneNumber == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.picPhoneNumber!, (value) {
      return _then(_value.copyWith(picPhoneNumber: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalCopyWith<$Res>? get approvalReason {
    if (_value.approvalReason == null) {
      return null;
    }

    return $ApprovalCopyWith<$Res>(_value.approvalReason!, (value) {
      return _then(_value.copyWith(approvalReason: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get companyAddress {
    if (_value.companyAddress == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.companyAddress!, (value) {
      return _then(_value.copyWith(companyAddress: value) as $Val);
    });
  }

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalCopyWith<$Res>? get approvalDate {
    if (_value.approvalDate == null) {
      return null;
    }

    return $ApprovalCopyWith<$Res>(_value.approvalDate!, (value) {
      return _then(_value.copyWith(approvalDate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerRequestDomainFieldsImplCopyWith<$Res>
    implements $CustomerRequestDomainFieldsCopyWith<$Res> {
  factory _$$CustomerRequestDomainFieldsImplCopyWith(
    _$CustomerRequestDomainFieldsImpl value,
    $Res Function(_$CustomerRequestDomainFieldsImpl) then,
  ) = __$$CustomerRequestDomainFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'approved_by') ApprovalStatus? approvedBy,
    @JsonKey(name: 'company_store_condition')
    ApprovalStatus? companyStoreCondition,
    @JsonKey(name: 'approval_status') ApprovalStatus? approvalStatus,
    @JsonKey(name: 'company_tax_id') ApprovalStatus? companyTaxId,
    @JsonKey(name: 'request_destination') ApprovalStatus? requestDestination,
    @JsonKey(name: 'pic_national_id_photo') ApprovalStatus? picNationalIdPhoto,
    @JsonKey(name: 'pic_position') ApprovalStatus? picPosition,
    @JsonKey(name: 'company_location') CompanyLocation? companyLocation,
    @JsonKey(name: 'subscription_type') ApprovalStatus? subscriptionType,
    @JsonKey(name: 'pic_national_id') ApprovalStatus? picNationalId,
    @JsonKey(name: 'pic_address') ApprovalStatus? picAddress,
    @JsonKey(name: 'pic_tax_id') ApprovalStatus? picTaxId,
    @JsonKey(name: 'customer_type') ApprovalStatus? customerType,
    @JsonKey(name: 'requested_by') ApprovalStatus? requestedBy,
    @JsonKey(name: 'company_name') ApprovalStatus? companyName,
    @JsonKey(name: 'carbon_copy') ApprovalStatus? carbonCopy,
    @JsonKey(name: 'company_email') ApprovalStatus? companyEmail,
    @JsonKey(name: 'credit_period') Credit? creditPeriod,
    @JsonKey(name: 'company_phone_number') ApprovalStatus? companyPhoneNumber,
    @JsonKey(name: 'ownership_status') ApprovalStatus? ownershipStatus,
    @JsonKey(name: 'note') ApprovalStatus? note,
    @JsonKey(name: 'company_store_photo') ApprovalStatus? companyStorePhoto,
    @JsonKey(name: 'credit_limit') Credit? creditLimit,
    @JsonKey(name: 'pic_name') ApprovalStatus? picName,
    @JsonKey(name: 'pic_phone_number') ApprovalStatus? picPhoneNumber,
    @JsonKey(name: 'approval_reason') Approval? approvalReason,
    @JsonKey(name: 'company_address') ApprovalStatus? companyAddress,
    @JsonKey(name: 'approval_date') Approval? approvalDate,
  });

  @override
  $ApprovalStatusCopyWith<$Res>? get approvedBy;
  @override
  $ApprovalStatusCopyWith<$Res>? get companyStoreCondition;
  @override
  $ApprovalStatusCopyWith<$Res>? get approvalStatus;
  @override
  $ApprovalStatusCopyWith<$Res>? get companyTaxId;
  @override
  $ApprovalStatusCopyWith<$Res>? get requestDestination;
  @override
  $ApprovalStatusCopyWith<$Res>? get picNationalIdPhoto;
  @override
  $ApprovalStatusCopyWith<$Res>? get picPosition;
  @override
  $CompanyLocationCopyWith<$Res>? get companyLocation;
  @override
  $ApprovalStatusCopyWith<$Res>? get subscriptionType;
  @override
  $ApprovalStatusCopyWith<$Res>? get picNationalId;
  @override
  $ApprovalStatusCopyWith<$Res>? get picAddress;
  @override
  $ApprovalStatusCopyWith<$Res>? get picTaxId;
  @override
  $ApprovalStatusCopyWith<$Res>? get customerType;
  @override
  $ApprovalStatusCopyWith<$Res>? get requestedBy;
  @override
  $ApprovalStatusCopyWith<$Res>? get companyName;
  @override
  $ApprovalStatusCopyWith<$Res>? get carbonCopy;
  @override
  $ApprovalStatusCopyWith<$Res>? get companyEmail;
  @override
  $CreditCopyWith<$Res>? get creditPeriod;
  @override
  $ApprovalStatusCopyWith<$Res>? get companyPhoneNumber;
  @override
  $ApprovalStatusCopyWith<$Res>? get ownershipStatus;
  @override
  $ApprovalStatusCopyWith<$Res>? get note;
  @override
  $ApprovalStatusCopyWith<$Res>? get companyStorePhoto;
  @override
  $CreditCopyWith<$Res>? get creditLimit;
  @override
  $ApprovalStatusCopyWith<$Res>? get picName;
  @override
  $ApprovalStatusCopyWith<$Res>? get picPhoneNumber;
  @override
  $ApprovalCopyWith<$Res>? get approvalReason;
  @override
  $ApprovalStatusCopyWith<$Res>? get companyAddress;
  @override
  $ApprovalCopyWith<$Res>? get approvalDate;
}

/// @nodoc
class __$$CustomerRequestDomainFieldsImplCopyWithImpl<$Res>
    extends
        _$CustomerRequestDomainFieldsCopyWithImpl<
          $Res,
          _$CustomerRequestDomainFieldsImpl
        >
    implements _$$CustomerRequestDomainFieldsImplCopyWith<$Res> {
  __$$CustomerRequestDomainFieldsImplCopyWithImpl(
    _$CustomerRequestDomainFieldsImpl _value,
    $Res Function(_$CustomerRequestDomainFieldsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approvedBy = freezed,
    Object? companyStoreCondition = freezed,
    Object? approvalStatus = freezed,
    Object? companyTaxId = freezed,
    Object? requestDestination = freezed,
    Object? picNationalIdPhoto = freezed,
    Object? picPosition = freezed,
    Object? companyLocation = freezed,
    Object? subscriptionType = freezed,
    Object? picNationalId = freezed,
    Object? picAddress = freezed,
    Object? picTaxId = freezed,
    Object? customerType = freezed,
    Object? requestedBy = freezed,
    Object? companyName = freezed,
    Object? carbonCopy = freezed,
    Object? companyEmail = freezed,
    Object? creditPeriod = freezed,
    Object? companyPhoneNumber = freezed,
    Object? ownershipStatus = freezed,
    Object? note = freezed,
    Object? companyStorePhoto = freezed,
    Object? creditLimit = freezed,
    Object? picName = freezed,
    Object? picPhoneNumber = freezed,
    Object? approvalReason = freezed,
    Object? companyAddress = freezed,
    Object? approvalDate = freezed,
  }) {
    return _then(
      _$CustomerRequestDomainFieldsImpl(
        approvedBy:
            freezed == approvedBy
                ? _value.approvedBy
                : approvedBy // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        companyStoreCondition:
            freezed == companyStoreCondition
                ? _value.companyStoreCondition
                : companyStoreCondition // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        approvalStatus:
            freezed == approvalStatus
                ? _value.approvalStatus
                : approvalStatus // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        companyTaxId:
            freezed == companyTaxId
                ? _value.companyTaxId
                : companyTaxId // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        requestDestination:
            freezed == requestDestination
                ? _value.requestDestination
                : requestDestination // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        picNationalIdPhoto:
            freezed == picNationalIdPhoto
                ? _value.picNationalIdPhoto
                : picNationalIdPhoto // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        picPosition:
            freezed == picPosition
                ? _value.picPosition
                : picPosition // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        companyLocation:
            freezed == companyLocation
                ? _value.companyLocation
                : companyLocation // ignore: cast_nullable_to_non_nullable
                    as CompanyLocation?,
        subscriptionType:
            freezed == subscriptionType
                ? _value.subscriptionType
                : subscriptionType // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        picNationalId:
            freezed == picNationalId
                ? _value.picNationalId
                : picNationalId // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        picAddress:
            freezed == picAddress
                ? _value.picAddress
                : picAddress // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        picTaxId:
            freezed == picTaxId
                ? _value.picTaxId
                : picTaxId // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        customerType:
            freezed == customerType
                ? _value.customerType
                : customerType // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        requestedBy:
            freezed == requestedBy
                ? _value.requestedBy
                : requestedBy // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        companyName:
            freezed == companyName
                ? _value.companyName
                : companyName // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        carbonCopy:
            freezed == carbonCopy
                ? _value.carbonCopy
                : carbonCopy // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        companyEmail:
            freezed == companyEmail
                ? _value.companyEmail
                : companyEmail // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        creditPeriod:
            freezed == creditPeriod
                ? _value.creditPeriod
                : creditPeriod // ignore: cast_nullable_to_non_nullable
                    as Credit?,
        companyPhoneNumber:
            freezed == companyPhoneNumber
                ? _value.companyPhoneNumber
                : companyPhoneNumber // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        ownershipStatus:
            freezed == ownershipStatus
                ? _value.ownershipStatus
                : ownershipStatus // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        note:
            freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        companyStorePhoto:
            freezed == companyStorePhoto
                ? _value.companyStorePhoto
                : companyStorePhoto // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        creditLimit:
            freezed == creditLimit
                ? _value.creditLimit
                : creditLimit // ignore: cast_nullable_to_non_nullable
                    as Credit?,
        picName:
            freezed == picName
                ? _value.picName
                : picName // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        picPhoneNumber:
            freezed == picPhoneNumber
                ? _value.picPhoneNumber
                : picPhoneNumber // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        approvalReason:
            freezed == approvalReason
                ? _value.approvalReason
                : approvalReason // ignore: cast_nullable_to_non_nullable
                    as Approval?,
        companyAddress:
            freezed == companyAddress
                ? _value.companyAddress
                : companyAddress // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        approvalDate:
            freezed == approvalDate
                ? _value.approvalDate
                : approvalDate // ignore: cast_nullable_to_non_nullable
                    as Approval?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerRequestDomainFieldsImpl
    implements _CustomerRequestDomainFields {
  const _$CustomerRequestDomainFieldsImpl({
    @JsonKey(name: 'approved_by') this.approvedBy,
    @JsonKey(name: 'company_store_condition') this.companyStoreCondition,
    @JsonKey(name: 'approval_status') this.approvalStatus,
    @JsonKey(name: 'company_tax_id') this.companyTaxId,
    @JsonKey(name: 'request_destination') this.requestDestination,
    @JsonKey(name: 'pic_national_id_photo') this.picNationalIdPhoto,
    @JsonKey(name: 'pic_position') this.picPosition,
    @JsonKey(name: 'company_location') this.companyLocation,
    @JsonKey(name: 'subscription_type') this.subscriptionType,
    @JsonKey(name: 'pic_national_id') this.picNationalId,
    @JsonKey(name: 'pic_address') this.picAddress,
    @JsonKey(name: 'pic_tax_id') this.picTaxId,
    @JsonKey(name: 'customer_type') this.customerType,
    @JsonKey(name: 'requested_by') this.requestedBy,
    @JsonKey(name: 'company_name') this.companyName,
    @JsonKey(name: 'carbon_copy') this.carbonCopy,
    @JsonKey(name: 'company_email') this.companyEmail,
    @JsonKey(name: 'credit_period') this.creditPeriod,
    @JsonKey(name: 'company_phone_number') this.companyPhoneNumber,
    @JsonKey(name: 'ownership_status') this.ownershipStatus,
    @JsonKey(name: 'note') this.note,
    @JsonKey(name: 'company_store_photo') this.companyStorePhoto,
    @JsonKey(name: 'credit_limit') this.creditLimit,
    @JsonKey(name: 'pic_name') this.picName,
    @JsonKey(name: 'pic_phone_number') this.picPhoneNumber,
    @JsonKey(name: 'approval_reason') this.approvalReason,
    @JsonKey(name: 'company_address') this.companyAddress,
    @JsonKey(name: 'approval_date') this.approvalDate,
  });

  factory _$CustomerRequestDomainFieldsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CustomerRequestDomainFieldsImplFromJson(json);

  @override
  @JsonKey(name: 'approved_by')
  final ApprovalStatus? approvedBy;
  @override
  @JsonKey(name: 'company_store_condition')
  final ApprovalStatus? companyStoreCondition;
  @override
  @JsonKey(name: 'approval_status')
  final ApprovalStatus? approvalStatus;
  @override
  @JsonKey(name: 'company_tax_id')
  final ApprovalStatus? companyTaxId;
  @override
  @JsonKey(name: 'request_destination')
  final ApprovalStatus? requestDestination;
  @override
  @JsonKey(name: 'pic_national_id_photo')
  final ApprovalStatus? picNationalIdPhoto;
  @override
  @JsonKey(name: 'pic_position')
  final ApprovalStatus? picPosition;
  @override
  @JsonKey(name: 'company_location')
  final CompanyLocation? companyLocation;
  @override
  @JsonKey(name: 'subscription_type')
  final ApprovalStatus? subscriptionType;
  @override
  @JsonKey(name: 'pic_national_id')
  final ApprovalStatus? picNationalId;
  @override
  @JsonKey(name: 'pic_address')
  final ApprovalStatus? picAddress;
  @override
  @JsonKey(name: 'pic_tax_id')
  final ApprovalStatus? picTaxId;
  @override
  @JsonKey(name: 'customer_type')
  final ApprovalStatus? customerType;
  @override
  @JsonKey(name: 'requested_by')
  final ApprovalStatus? requestedBy;
  @override
  @JsonKey(name: 'company_name')
  final ApprovalStatus? companyName;
  @override
  @JsonKey(name: 'carbon_copy')
  final ApprovalStatus? carbonCopy;
  @override
  @JsonKey(name: 'company_email')
  final ApprovalStatus? companyEmail;
  @override
  @JsonKey(name: 'credit_period')
  final Credit? creditPeriod;
  @override
  @JsonKey(name: 'company_phone_number')
  final ApprovalStatus? companyPhoneNumber;
  @override
  @JsonKey(name: 'ownership_status')
  final ApprovalStatus? ownershipStatus;
  @override
  @JsonKey(name: 'note')
  final ApprovalStatus? note;
  @override
  @JsonKey(name: 'company_store_photo')
  final ApprovalStatus? companyStorePhoto;
  @override
  @JsonKey(name: 'credit_limit')
  final Credit? creditLimit;
  @override
  @JsonKey(name: 'pic_name')
  final ApprovalStatus? picName;
  @override
  @JsonKey(name: 'pic_phone_number')
  final ApprovalStatus? picPhoneNumber;
  @override
  @JsonKey(name: 'approval_reason')
  final Approval? approvalReason;
  @override
  @JsonKey(name: 'company_address')
  final ApprovalStatus? companyAddress;
  @override
  @JsonKey(name: 'approval_date')
  final Approval? approvalDate;

  @override
  String toString() {
    return 'CustomerRequestDomainFields(approvedBy: $approvedBy, companyStoreCondition: $companyStoreCondition, approvalStatus: $approvalStatus, companyTaxId: $companyTaxId, requestDestination: $requestDestination, picNationalIdPhoto: $picNationalIdPhoto, picPosition: $picPosition, companyLocation: $companyLocation, subscriptionType: $subscriptionType, picNationalId: $picNationalId, picAddress: $picAddress, picTaxId: $picTaxId, customerType: $customerType, requestedBy: $requestedBy, companyName: $companyName, carbonCopy: $carbonCopy, companyEmail: $companyEmail, creditPeriod: $creditPeriod, companyPhoneNumber: $companyPhoneNumber, ownershipStatus: $ownershipStatus, note: $note, companyStorePhoto: $companyStorePhoto, creditLimit: $creditLimit, picName: $picName, picPhoneNumber: $picPhoneNumber, approvalReason: $approvalReason, companyAddress: $companyAddress, approvalDate: $approvalDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerRequestDomainFieldsImpl &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.companyStoreCondition, companyStoreCondition) ||
                other.companyStoreCondition == companyStoreCondition) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.companyTaxId, companyTaxId) ||
                other.companyTaxId == companyTaxId) &&
            (identical(other.requestDestination, requestDestination) ||
                other.requestDestination == requestDestination) &&
            (identical(other.picNationalIdPhoto, picNationalIdPhoto) ||
                other.picNationalIdPhoto == picNationalIdPhoto) &&
            (identical(other.picPosition, picPosition) ||
                other.picPosition == picPosition) &&
            (identical(other.companyLocation, companyLocation) ||
                other.companyLocation == companyLocation) &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType) &&
            (identical(other.picNationalId, picNationalId) ||
                other.picNationalId == picNationalId) &&
            (identical(other.picAddress, picAddress) ||
                other.picAddress == picAddress) &&
            (identical(other.picTaxId, picTaxId) ||
                other.picTaxId == picTaxId) &&
            (identical(other.customerType, customerType) ||
                other.customerType == customerType) &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.carbonCopy, carbonCopy) ||
                other.carbonCopy == carbonCopy) &&
            (identical(other.companyEmail, companyEmail) ||
                other.companyEmail == companyEmail) &&
            (identical(other.creditPeriod, creditPeriod) ||
                other.creditPeriod == creditPeriod) &&
            (identical(other.companyPhoneNumber, companyPhoneNumber) ||
                other.companyPhoneNumber == companyPhoneNumber) &&
            (identical(other.ownershipStatus, ownershipStatus) ||
                other.ownershipStatus == ownershipStatus) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.companyStorePhoto, companyStorePhoto) ||
                other.companyStorePhoto == companyStorePhoto) &&
            (identical(other.creditLimit, creditLimit) ||
                other.creditLimit == creditLimit) &&
            (identical(other.picName, picName) || other.picName == picName) &&
            (identical(other.picPhoneNumber, picPhoneNumber) ||
                other.picPhoneNumber == picPhoneNumber) &&
            (identical(other.approvalReason, approvalReason) ||
                other.approvalReason == approvalReason) &&
            (identical(other.companyAddress, companyAddress) ||
                other.companyAddress == companyAddress) &&
            (identical(other.approvalDate, approvalDate) ||
                other.approvalDate == approvalDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    approvedBy,
    companyStoreCondition,
    approvalStatus,
    companyTaxId,
    requestDestination,
    picNationalIdPhoto,
    picPosition,
    companyLocation,
    subscriptionType,
    picNationalId,
    picAddress,
    picTaxId,
    customerType,
    requestedBy,
    companyName,
    carbonCopy,
    companyEmail,
    creditPeriod,
    companyPhoneNumber,
    ownershipStatus,
    note,
    companyStorePhoto,
    creditLimit,
    picName,
    picPhoneNumber,
    approvalReason,
    companyAddress,
    approvalDate,
  ]);

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerRequestDomainFieldsImplCopyWith<_$CustomerRequestDomainFieldsImpl>
  get copyWith => __$$CustomerRequestDomainFieldsImplCopyWithImpl<
    _$CustomerRequestDomainFieldsImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerRequestDomainFieldsImplToJson(this);
  }
}

abstract class _CustomerRequestDomainFields
    implements CustomerRequestDomainFields {
  const factory _CustomerRequestDomainFields({
    @JsonKey(name: 'approved_by') final ApprovalStatus? approvedBy,
    @JsonKey(name: 'company_store_condition')
    final ApprovalStatus? companyStoreCondition,
    @JsonKey(name: 'approval_status') final ApprovalStatus? approvalStatus,
    @JsonKey(name: 'company_tax_id') final ApprovalStatus? companyTaxId,
    @JsonKey(name: 'request_destination')
    final ApprovalStatus? requestDestination,
    @JsonKey(name: 'pic_national_id_photo')
    final ApprovalStatus? picNationalIdPhoto,
    @JsonKey(name: 'pic_position') final ApprovalStatus? picPosition,
    @JsonKey(name: 'company_location') final CompanyLocation? companyLocation,
    @JsonKey(name: 'subscription_type') final ApprovalStatus? subscriptionType,
    @JsonKey(name: 'pic_national_id') final ApprovalStatus? picNationalId,
    @JsonKey(name: 'pic_address') final ApprovalStatus? picAddress,
    @JsonKey(name: 'pic_tax_id') final ApprovalStatus? picTaxId,
    @JsonKey(name: 'customer_type') final ApprovalStatus? customerType,
    @JsonKey(name: 'requested_by') final ApprovalStatus? requestedBy,
    @JsonKey(name: 'company_name') final ApprovalStatus? companyName,
    @JsonKey(name: 'carbon_copy') final ApprovalStatus? carbonCopy,
    @JsonKey(name: 'company_email') final ApprovalStatus? companyEmail,
    @JsonKey(name: 'credit_period') final Credit? creditPeriod,
    @JsonKey(name: 'company_phone_number')
    final ApprovalStatus? companyPhoneNumber,
    @JsonKey(name: 'ownership_status') final ApprovalStatus? ownershipStatus,
    @JsonKey(name: 'note') final ApprovalStatus? note,
    @JsonKey(name: 'company_store_photo')
    final ApprovalStatus? companyStorePhoto,
    @JsonKey(name: 'credit_limit') final Credit? creditLimit,
    @JsonKey(name: 'pic_name') final ApprovalStatus? picName,
    @JsonKey(name: 'pic_phone_number') final ApprovalStatus? picPhoneNumber,
    @JsonKey(name: 'approval_reason') final Approval? approvalReason,
    @JsonKey(name: 'company_address') final ApprovalStatus? companyAddress,
    @JsonKey(name: 'approval_date') final Approval? approvalDate,
  }) = _$CustomerRequestDomainFieldsImpl;

  factory _CustomerRequestDomainFields.fromJson(Map<String, dynamic> json) =
      _$CustomerRequestDomainFieldsImpl.fromJson;

  @override
  @JsonKey(name: 'approved_by')
  ApprovalStatus? get approvedBy;
  @override
  @JsonKey(name: 'company_store_condition')
  ApprovalStatus? get companyStoreCondition;
  @override
  @JsonKey(name: 'approval_status')
  ApprovalStatus? get approvalStatus;
  @override
  @JsonKey(name: 'company_tax_id')
  ApprovalStatus? get companyTaxId;
  @override
  @JsonKey(name: 'request_destination')
  ApprovalStatus? get requestDestination;
  @override
  @JsonKey(name: 'pic_national_id_photo')
  ApprovalStatus? get picNationalIdPhoto;
  @override
  @JsonKey(name: 'pic_position')
  ApprovalStatus? get picPosition;
  @override
  @JsonKey(name: 'company_location')
  CompanyLocation? get companyLocation;
  @override
  @JsonKey(name: 'subscription_type')
  ApprovalStatus? get subscriptionType;
  @override
  @JsonKey(name: 'pic_national_id')
  ApprovalStatus? get picNationalId;
  @override
  @JsonKey(name: 'pic_address')
  ApprovalStatus? get picAddress;
  @override
  @JsonKey(name: 'pic_tax_id')
  ApprovalStatus? get picTaxId;
  @override
  @JsonKey(name: 'customer_type')
  ApprovalStatus? get customerType;
  @override
  @JsonKey(name: 'requested_by')
  ApprovalStatus? get requestedBy;
  @override
  @JsonKey(name: 'company_name')
  ApprovalStatus? get companyName;
  @override
  @JsonKey(name: 'carbon_copy')
  ApprovalStatus? get carbonCopy;
  @override
  @JsonKey(name: 'company_email')
  ApprovalStatus? get companyEmail;
  @override
  @JsonKey(name: 'credit_period')
  Credit? get creditPeriod;
  @override
  @JsonKey(name: 'company_phone_number')
  ApprovalStatus? get companyPhoneNumber;
  @override
  @JsonKey(name: 'ownership_status')
  ApprovalStatus? get ownershipStatus;
  @override
  @JsonKey(name: 'note')
  ApprovalStatus? get note;
  @override
  @JsonKey(name: 'company_store_photo')
  ApprovalStatus? get companyStorePhoto;
  @override
  @JsonKey(name: 'credit_limit')
  Credit? get creditLimit;
  @override
  @JsonKey(name: 'pic_name')
  ApprovalStatus? get picName;
  @override
  @JsonKey(name: 'pic_phone_number')
  ApprovalStatus? get picPhoneNumber;
  @override
  @JsonKey(name: 'approval_reason')
  Approval? get approvalReason;
  @override
  @JsonKey(name: 'company_address')
  ApprovalStatus? get companyAddress;
  @override
  @JsonKey(name: 'approval_date')
  Approval? get approvalDate;

  /// Create a copy of CustomerRequestDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerRequestDomainFieldsImplCopyWith<_$CustomerRequestDomainFieldsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

Approval _$ApprovalFromJson(Map<String, dynamic> json) {
  return _Approval.fromJson(json);
}

/// @nodoc
mixin _$Approval {
  @JsonKey(name: 'timestampValue')
  String? get timestampValue => throw _privateConstructorUsedError;

  /// Serializes this Approval to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Approval
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApprovalCopyWith<Approval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalCopyWith<$Res> {
  factory $ApprovalCopyWith(Approval value, $Res Function(Approval) then) =
      _$ApprovalCopyWithImpl<$Res, Approval>;
  @useResult
  $Res call({@JsonKey(name: 'timestampValue') String? timestampValue});
}

/// @nodoc
class _$ApprovalCopyWithImpl<$Res, $Val extends Approval>
    implements $ApprovalCopyWith<$Res> {
  _$ApprovalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Approval
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
abstract class _$$ApprovalImplCopyWith<$Res>
    implements $ApprovalCopyWith<$Res> {
  factory _$$ApprovalImplCopyWith(
    _$ApprovalImpl value,
    $Res Function(_$ApprovalImpl) then,
  ) = __$$ApprovalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'timestampValue') String? timestampValue});
}

/// @nodoc
class __$$ApprovalImplCopyWithImpl<$Res>
    extends _$ApprovalCopyWithImpl<$Res, _$ApprovalImpl>
    implements _$$ApprovalImplCopyWith<$Res> {
  __$$ApprovalImplCopyWithImpl(
    _$ApprovalImpl _value,
    $Res Function(_$ApprovalImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Approval
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? timestampValue = freezed}) {
    return _then(
      _$ApprovalImpl(
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
class _$ApprovalImpl implements _Approval {
  const _$ApprovalImpl({@JsonKey(name: 'timestampValue') this.timestampValue});

  factory _$ApprovalImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApprovalImplFromJson(json);

  @override
  @JsonKey(name: 'timestampValue')
  final String? timestampValue;

  @override
  String toString() {
    return 'Approval(timestampValue: $timestampValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalImpl &&
            (identical(other.timestampValue, timestampValue) ||
                other.timestampValue == timestampValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timestampValue);

  /// Create a copy of Approval
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovalImplCopyWith<_$ApprovalImpl> get copyWith =>
      __$$ApprovalImplCopyWithImpl<_$ApprovalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovalImplToJson(this);
  }
}

abstract class _Approval implements Approval {
  const factory _Approval({
    @JsonKey(name: 'timestampValue') final String? timestampValue,
  }) = _$ApprovalImpl;

  factory _Approval.fromJson(Map<String, dynamic> json) =
      _$ApprovalImpl.fromJson;

  @override
  @JsonKey(name: 'timestampValue')
  String? get timestampValue;

  /// Create a copy of Approval
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApprovalImplCopyWith<_$ApprovalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApprovalStatus _$ApprovalStatusFromJson(Map<String, dynamic> json) {
  return _ApprovalStatus.fromJson(json);
}

/// @nodoc
mixin _$ApprovalStatus {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this ApprovalStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApprovalStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApprovalStatusCopyWith<ApprovalStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalStatusCopyWith<$Res> {
  factory $ApprovalStatusCopyWith(
    ApprovalStatus value,
    $Res Function(ApprovalStatus) then,
  ) = _$ApprovalStatusCopyWithImpl<$Res, ApprovalStatus>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$ApprovalStatusCopyWithImpl<$Res, $Val extends ApprovalStatus>
    implements $ApprovalStatusCopyWith<$Res> {
  _$ApprovalStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApprovalStatus
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
abstract class _$$ApprovalStatusImplCopyWith<$Res>
    implements $ApprovalStatusCopyWith<$Res> {
  factory _$$ApprovalStatusImplCopyWith(
    _$ApprovalStatusImpl value,
    $Res Function(_$ApprovalStatusImpl) then,
  ) = __$$ApprovalStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$ApprovalStatusImplCopyWithImpl<$Res>
    extends _$ApprovalStatusCopyWithImpl<$Res, _$ApprovalStatusImpl>
    implements _$$ApprovalStatusImplCopyWith<$Res> {
  __$$ApprovalStatusImplCopyWithImpl(
    _$ApprovalStatusImpl _value,
    $Res Function(_$ApprovalStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApprovalStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$ApprovalStatusImpl(
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
class _$ApprovalStatusImpl implements _ApprovalStatus {
  const _$ApprovalStatusImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$ApprovalStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApprovalStatusImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'ApprovalStatus(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalStatusImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of ApprovalStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovalStatusImplCopyWith<_$ApprovalStatusImpl> get copyWith =>
      __$$ApprovalStatusImplCopyWithImpl<_$ApprovalStatusImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovalStatusImplToJson(this);
  }
}

abstract class _ApprovalStatus implements ApprovalStatus {
  const factory _ApprovalStatus({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$ApprovalStatusImpl;

  factory _ApprovalStatus.fromJson(Map<String, dynamic> json) =
      _$ApprovalStatusImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of ApprovalStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApprovalStatusImplCopyWith<_$ApprovalStatusImpl> get copyWith =>
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
  Accuracy? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'accuracy')
  Accuracy? get accuracy => throw _privateConstructorUsedError;
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
    @JsonKey(name: 'latitude') Accuracy? latitude,
    @JsonKey(name: 'accuracy') Accuracy? accuracy,
    @JsonKey(name: 'longitude') Accuracy? longitude,
  });

  $AccuracyCopyWith<$Res>? get latitude;
  $AccuracyCopyWith<$Res>? get accuracy;
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
    Object? latitude = freezed,
    Object? accuracy = freezed,
    Object? longitude = freezed,
  }) {
    return _then(
      _value.copyWith(
            latitude:
                freezed == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as Accuracy?,
            accuracy:
                freezed == accuracy
                    ? _value.accuracy
                    : accuracy // ignore: cast_nullable_to_non_nullable
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
    @JsonKey(name: 'latitude') Accuracy? latitude,
    @JsonKey(name: 'accuracy') Accuracy? accuracy,
    @JsonKey(name: 'longitude') Accuracy? longitude,
  });

  @override
  $AccuracyCopyWith<$Res>? get latitude;
  @override
  $AccuracyCopyWith<$Res>? get accuracy;
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
    Object? latitude = freezed,
    Object? accuracy = freezed,
    Object? longitude = freezed,
  }) {
    return _then(
      _$MapValueFieldsImpl(
        latitude:
            freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as Accuracy?,
        accuracy:
            freezed == accuracy
                ? _value.accuracy
                : accuracy // ignore: cast_nullable_to_non_nullable
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
    @JsonKey(name: 'latitude') this.latitude,
    @JsonKey(name: 'accuracy') this.accuracy,
    @JsonKey(name: 'longitude') this.longitude,
  });

  factory _$MapValueFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapValueFieldsImplFromJson(json);

  @override
  @JsonKey(name: 'latitude')
  final Accuracy? latitude;
  @override
  @JsonKey(name: 'accuracy')
  final Accuracy? accuracy;
  @override
  @JsonKey(name: 'longitude')
  final Accuracy? longitude;

  @override
  String toString() {
    return 'MapValueFields(latitude: $latitude, accuracy: $accuracy, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapValueFieldsImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, accuracy, longitude);

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
    @JsonKey(name: 'latitude') final Accuracy? latitude,
    @JsonKey(name: 'accuracy') final Accuracy? accuracy,
    @JsonKey(name: 'longitude') final Accuracy? longitude,
  }) = _$MapValueFieldsImpl;

  factory _MapValueFields.fromJson(Map<String, dynamic> json) =
      _$MapValueFieldsImpl.fromJson;

  @override
  @JsonKey(name: 'latitude')
  Accuracy? get latitude;
  @override
  @JsonKey(name: 'accuracy')
  Accuracy? get accuracy;
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

Credit _$CreditFromJson(Map<String, dynamic> json) {
  return _Credit.fromJson(json);
}

/// @nodoc
mixin _$Credit {
  @JsonKey(name: 'integerValue')
  String? get integerValue => throw _privateConstructorUsedError;

  /// Serializes this Credit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Credit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreditCopyWith<Credit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCopyWith<$Res> {
  factory $CreditCopyWith(Credit value, $Res Function(Credit) then) =
      _$CreditCopyWithImpl<$Res, Credit>;
  @useResult
  $Res call({@JsonKey(name: 'integerValue') String? integerValue});
}

/// @nodoc
class _$CreditCopyWithImpl<$Res, $Val extends Credit>
    implements $CreditCopyWith<$Res> {
  _$CreditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Credit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? integerValue = freezed}) {
    return _then(
      _value.copyWith(
            integerValue:
                freezed == integerValue
                    ? _value.integerValue
                    : integerValue // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreditImplCopyWith<$Res> implements $CreditCopyWith<$Res> {
  factory _$$CreditImplCopyWith(
    _$CreditImpl value,
    $Res Function(_$CreditImpl) then,
  ) = __$$CreditImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'integerValue') String? integerValue});
}

/// @nodoc
class __$$CreditImplCopyWithImpl<$Res>
    extends _$CreditCopyWithImpl<$Res, _$CreditImpl>
    implements _$$CreditImplCopyWith<$Res> {
  __$$CreditImplCopyWithImpl(
    _$CreditImpl _value,
    $Res Function(_$CreditImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Credit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? integerValue = freezed}) {
    return _then(
      _$CreditImpl(
        integerValue:
            freezed == integerValue
                ? _value.integerValue
                : integerValue // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditImpl implements _Credit {
  const _$CreditImpl({@JsonKey(name: 'integerValue') this.integerValue});

  factory _$CreditImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditImplFromJson(json);

  @override
  @JsonKey(name: 'integerValue')
  final String? integerValue;

  @override
  String toString() {
    return 'Credit(integerValue: $integerValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditImpl &&
            (identical(other.integerValue, integerValue) ||
                other.integerValue == integerValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, integerValue);

  /// Create a copy of Credit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditImplCopyWith<_$CreditImpl> get copyWith =>
      __$$CreditImplCopyWithImpl<_$CreditImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditImplToJson(this);
  }
}

abstract class _Credit implements Credit {
  const factory _Credit({
    @JsonKey(name: 'integerValue') final String? integerValue,
  }) = _$CreditImpl;

  factory _Credit.fromJson(Map<String, dynamic> json) = _$CreditImpl.fromJson;

  @override
  @JsonKey(name: 'integerValue')
  String? get integerValue;

  /// Create a copy of Credit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreditImplCopyWith<_$CreditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
