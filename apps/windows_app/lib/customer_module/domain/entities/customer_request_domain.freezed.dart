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
  @JsonKey(name: 'company_name')
  ApprovalStatus? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'national_id_photo')
  Photo? get nationalIdPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'approval_status')
  ApprovalStatus? get approvalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_by')
  ApprovalStatus? get requestedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_photo')
  Photo? get storePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_address')
  ApprovalStatus? get companyAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_request_id')
  ApprovalStatus? get customerRequestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  Location? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'national_id')
  ApprovalStatus? get nationalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscription_type')
  ApprovalStatus? get subscriptionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_condition')
  ApprovalStatus? get storeCondition => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_name')
  ApprovalStatus? get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination_company')
  ApprovalStatus? get destinationCompany => throw _privateConstructorUsedError;
  @JsonKey(name: 'approval_date')
  Date? get approvalDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  ApprovalStatus? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_code')
  CustomerCode? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'carbon_copy')
  ApprovalStatus? get carbonCopy => throw _privateConstructorUsedError;
  @JsonKey(name: 'approved_by')
  ApprovalStatus? get approvedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  Date? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'ownership_status')
  ApprovalStatus? get ownershipStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_id')
  ApprovalStatus? get taxId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_address')
  ApprovalStatus? get ownerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  ApprovalStatus? get note => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'company_name') ApprovalStatus? companyName,
    @JsonKey(name: 'national_id_photo') Photo? nationalIdPhoto,
    @JsonKey(name: 'approval_status') ApprovalStatus? approvalStatus,
    @JsonKey(name: 'requested_by') ApprovalStatus? requestedBy,
    @JsonKey(name: 'store_photo') Photo? storePhoto,
    @JsonKey(name: 'company_address') ApprovalStatus? companyAddress,
    @JsonKey(name: 'customer_request_id') ApprovalStatus? customerRequestId,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'national_id') ApprovalStatus? nationalId,
    @JsonKey(name: 'subscription_type') ApprovalStatus? subscriptionType,
    @JsonKey(name: 'store_condition') ApprovalStatus? storeCondition,
    @JsonKey(name: 'owner_name') ApprovalStatus? ownerName,
    @JsonKey(name: 'destination_company') ApprovalStatus? destinationCompany,
    @JsonKey(name: 'approval_date') Date? approvalDate,
    @JsonKey(name: 'phone_number') ApprovalStatus? phoneNumber,
    @JsonKey(name: 'customer_code') CustomerCode? customerCode,
    @JsonKey(name: 'carbon_copy') ApprovalStatus? carbonCopy,
    @JsonKey(name: 'approved_by') ApprovalStatus? approvedBy,
    @JsonKey(name: 'date') Date? date,
    @JsonKey(name: 'ownership_status') ApprovalStatus? ownershipStatus,
    @JsonKey(name: 'tax_id') ApprovalStatus? taxId,
    @JsonKey(name: 'owner_address') ApprovalStatus? ownerAddress,
    @JsonKey(name: 'note') ApprovalStatus? note,
  });

  $ApprovalStatusCopyWith<$Res>? get companyName;
  $PhotoCopyWith<$Res>? get nationalIdPhoto;
  $ApprovalStatusCopyWith<$Res>? get approvalStatus;
  $ApprovalStatusCopyWith<$Res>? get requestedBy;
  $PhotoCopyWith<$Res>? get storePhoto;
  $ApprovalStatusCopyWith<$Res>? get companyAddress;
  $ApprovalStatusCopyWith<$Res>? get customerRequestId;
  $LocationCopyWith<$Res>? get location;
  $ApprovalStatusCopyWith<$Res>? get nationalId;
  $ApprovalStatusCopyWith<$Res>? get subscriptionType;
  $ApprovalStatusCopyWith<$Res>? get storeCondition;
  $ApprovalStatusCopyWith<$Res>? get ownerName;
  $ApprovalStatusCopyWith<$Res>? get destinationCompany;
  $DateCopyWith<$Res>? get approvalDate;
  $ApprovalStatusCopyWith<$Res>? get phoneNumber;
  $CustomerCodeCopyWith<$Res>? get customerCode;
  $ApprovalStatusCopyWith<$Res>? get carbonCopy;
  $ApprovalStatusCopyWith<$Res>? get approvedBy;
  $DateCopyWith<$Res>? get date;
  $ApprovalStatusCopyWith<$Res>? get ownershipStatus;
  $ApprovalStatusCopyWith<$Res>? get taxId;
  $ApprovalStatusCopyWith<$Res>? get ownerAddress;
  $ApprovalStatusCopyWith<$Res>? get note;
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
    Object? companyName = freezed,
    Object? nationalIdPhoto = freezed,
    Object? approvalStatus = freezed,
    Object? requestedBy = freezed,
    Object? storePhoto = freezed,
    Object? companyAddress = freezed,
    Object? customerRequestId = freezed,
    Object? location = freezed,
    Object? nationalId = freezed,
    Object? subscriptionType = freezed,
    Object? storeCondition = freezed,
    Object? ownerName = freezed,
    Object? destinationCompany = freezed,
    Object? approvalDate = freezed,
    Object? phoneNumber = freezed,
    Object? customerCode = freezed,
    Object? carbonCopy = freezed,
    Object? approvedBy = freezed,
    Object? date = freezed,
    Object? ownershipStatus = freezed,
    Object? taxId = freezed,
    Object? ownerAddress = freezed,
    Object? note = freezed,
  }) {
    return _then(
      _value.copyWith(
            companyName:
                freezed == companyName
                    ? _value.companyName
                    : companyName // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            nationalIdPhoto:
                freezed == nationalIdPhoto
                    ? _value.nationalIdPhoto
                    : nationalIdPhoto // ignore: cast_nullable_to_non_nullable
                        as Photo?,
            approvalStatus:
                freezed == approvalStatus
                    ? _value.approvalStatus
                    : approvalStatus // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            requestedBy:
                freezed == requestedBy
                    ? _value.requestedBy
                    : requestedBy // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            storePhoto:
                freezed == storePhoto
                    ? _value.storePhoto
                    : storePhoto // ignore: cast_nullable_to_non_nullable
                        as Photo?,
            companyAddress:
                freezed == companyAddress
                    ? _value.companyAddress
                    : companyAddress // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            customerRequestId:
                freezed == customerRequestId
                    ? _value.customerRequestId
                    : customerRequestId // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as Location?,
            nationalId:
                freezed == nationalId
                    ? _value.nationalId
                    : nationalId // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            subscriptionType:
                freezed == subscriptionType
                    ? _value.subscriptionType
                    : subscriptionType // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            storeCondition:
                freezed == storeCondition
                    ? _value.storeCondition
                    : storeCondition // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            ownerName:
                freezed == ownerName
                    ? _value.ownerName
                    : ownerName // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            destinationCompany:
                freezed == destinationCompany
                    ? _value.destinationCompany
                    : destinationCompany // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            approvalDate:
                freezed == approvalDate
                    ? _value.approvalDate
                    : approvalDate // ignore: cast_nullable_to_non_nullable
                        as Date?,
            phoneNumber:
                freezed == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            customerCode:
                freezed == customerCode
                    ? _value.customerCode
                    : customerCode // ignore: cast_nullable_to_non_nullable
                        as CustomerCode?,
            carbonCopy:
                freezed == carbonCopy
                    ? _value.carbonCopy
                    : carbonCopy // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            approvedBy:
                freezed == approvedBy
                    ? _value.approvedBy
                    : approvedBy // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            date:
                freezed == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as Date?,
            ownershipStatus:
                freezed == ownershipStatus
                    ? _value.ownershipStatus
                    : ownershipStatus // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            taxId:
                freezed == taxId
                    ? _value.taxId
                    : taxId // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            ownerAddress:
                freezed == ownerAddress
                    ? _value.ownerAddress
                    : ownerAddress // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
            note:
                freezed == note
                    ? _value.note
                    : note // ignore: cast_nullable_to_non_nullable
                        as ApprovalStatus?,
          )
          as $Val,
    );
  }

  /// Create a copy of Fields
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res>? get nationalIdPhoto {
    if (_value.nationalIdPhoto == null) {
      return null;
    }

    return $PhotoCopyWith<$Res>(_value.nationalIdPhoto!, (value) {
      return _then(_value.copyWith(nationalIdPhoto: value) as $Val);
    });
  }

  /// Create a copy of Fields
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

  /// Create a copy of Fields
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res>? get storePhoto {
    if (_value.storePhoto == null) {
      return null;
    }

    return $PhotoCopyWith<$Res>(_value.storePhoto!, (value) {
      return _then(_value.copyWith(storePhoto: value) as $Val);
    });
  }

  /// Create a copy of Fields
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get customerRequestId {
    if (_value.customerRequestId == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.customerRequestId!, (value) {
      return _then(_value.copyWith(customerRequestId: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get nationalId {
    if (_value.nationalId == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.nationalId!, (value) {
      return _then(_value.copyWith(nationalId: value) as $Val);
    });
  }

  /// Create a copy of Fields
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get storeCondition {
    if (_value.storeCondition == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.storeCondition!, (value) {
      return _then(_value.copyWith(storeCondition: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get ownerName {
    if (_value.ownerName == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.ownerName!, (value) {
      return _then(_value.copyWith(ownerName: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get destinationCompany {
    if (_value.destinationCompany == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.destinationCompany!, (value) {
      return _then(_value.copyWith(destinationCompany: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get approvalDate {
    if (_value.approvalDate == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.approvalDate!, (value) {
      return _then(_value.copyWith(approvalDate: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get phoneNumber {
    if (_value.phoneNumber == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.phoneNumber!, (value) {
      return _then(_value.copyWith(phoneNumber: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCodeCopyWith<$Res>? get customerCode {
    if (_value.customerCode == null) {
      return null;
    }

    return $CustomerCodeCopyWith<$Res>(_value.customerCode!, (value) {
      return _then(_value.copyWith(customerCode: value) as $Val);
    });
  }

  /// Create a copy of Fields
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

  /// Create a copy of Fields
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }

  /// Create a copy of Fields
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get taxId {
    if (_value.taxId == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.taxId!, (value) {
      return _then(_value.copyWith(taxId: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApprovalStatusCopyWith<$Res>? get ownerAddress {
    if (_value.ownerAddress == null) {
      return null;
    }

    return $ApprovalStatusCopyWith<$Res>(_value.ownerAddress!, (value) {
      return _then(_value.copyWith(ownerAddress: value) as $Val);
    });
  }

  /// Create a copy of Fields
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
    @JsonKey(name: 'company_name') ApprovalStatus? companyName,
    @JsonKey(name: 'national_id_photo') Photo? nationalIdPhoto,
    @JsonKey(name: 'approval_status') ApprovalStatus? approvalStatus,
    @JsonKey(name: 'requested_by') ApprovalStatus? requestedBy,
    @JsonKey(name: 'store_photo') Photo? storePhoto,
    @JsonKey(name: 'company_address') ApprovalStatus? companyAddress,
    @JsonKey(name: 'customer_request_id') ApprovalStatus? customerRequestId,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'national_id') ApprovalStatus? nationalId,
    @JsonKey(name: 'subscription_type') ApprovalStatus? subscriptionType,
    @JsonKey(name: 'store_condition') ApprovalStatus? storeCondition,
    @JsonKey(name: 'owner_name') ApprovalStatus? ownerName,
    @JsonKey(name: 'destination_company') ApprovalStatus? destinationCompany,
    @JsonKey(name: 'approval_date') Date? approvalDate,
    @JsonKey(name: 'phone_number') ApprovalStatus? phoneNumber,
    @JsonKey(name: 'customer_code') CustomerCode? customerCode,
    @JsonKey(name: 'carbon_copy') ApprovalStatus? carbonCopy,
    @JsonKey(name: 'approved_by') ApprovalStatus? approvedBy,
    @JsonKey(name: 'date') Date? date,
    @JsonKey(name: 'ownership_status') ApprovalStatus? ownershipStatus,
    @JsonKey(name: 'tax_id') ApprovalStatus? taxId,
    @JsonKey(name: 'owner_address') ApprovalStatus? ownerAddress,
    @JsonKey(name: 'note') ApprovalStatus? note,
  });

  @override
  $ApprovalStatusCopyWith<$Res>? get companyName;
  @override
  $PhotoCopyWith<$Res>? get nationalIdPhoto;
  @override
  $ApprovalStatusCopyWith<$Res>? get approvalStatus;
  @override
  $ApprovalStatusCopyWith<$Res>? get requestedBy;
  @override
  $PhotoCopyWith<$Res>? get storePhoto;
  @override
  $ApprovalStatusCopyWith<$Res>? get companyAddress;
  @override
  $ApprovalStatusCopyWith<$Res>? get customerRequestId;
  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $ApprovalStatusCopyWith<$Res>? get nationalId;
  @override
  $ApprovalStatusCopyWith<$Res>? get subscriptionType;
  @override
  $ApprovalStatusCopyWith<$Res>? get storeCondition;
  @override
  $ApprovalStatusCopyWith<$Res>? get ownerName;
  @override
  $ApprovalStatusCopyWith<$Res>? get destinationCompany;
  @override
  $DateCopyWith<$Res>? get approvalDate;
  @override
  $ApprovalStatusCopyWith<$Res>? get phoneNumber;
  @override
  $CustomerCodeCopyWith<$Res>? get customerCode;
  @override
  $ApprovalStatusCopyWith<$Res>? get carbonCopy;
  @override
  $ApprovalStatusCopyWith<$Res>? get approvedBy;
  @override
  $DateCopyWith<$Res>? get date;
  @override
  $ApprovalStatusCopyWith<$Res>? get ownershipStatus;
  @override
  $ApprovalStatusCopyWith<$Res>? get taxId;
  @override
  $ApprovalStatusCopyWith<$Res>? get ownerAddress;
  @override
  $ApprovalStatusCopyWith<$Res>? get note;
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
    Object? companyName = freezed,
    Object? nationalIdPhoto = freezed,
    Object? approvalStatus = freezed,
    Object? requestedBy = freezed,
    Object? storePhoto = freezed,
    Object? companyAddress = freezed,
    Object? customerRequestId = freezed,
    Object? location = freezed,
    Object? nationalId = freezed,
    Object? subscriptionType = freezed,
    Object? storeCondition = freezed,
    Object? ownerName = freezed,
    Object? destinationCompany = freezed,
    Object? approvalDate = freezed,
    Object? phoneNumber = freezed,
    Object? customerCode = freezed,
    Object? carbonCopy = freezed,
    Object? approvedBy = freezed,
    Object? date = freezed,
    Object? ownershipStatus = freezed,
    Object? taxId = freezed,
    Object? ownerAddress = freezed,
    Object? note = freezed,
  }) {
    return _then(
      _$FieldsImpl(
        companyName:
            freezed == companyName
                ? _value.companyName
                : companyName // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        nationalIdPhoto:
            freezed == nationalIdPhoto
                ? _value.nationalIdPhoto
                : nationalIdPhoto // ignore: cast_nullable_to_non_nullable
                    as Photo?,
        approvalStatus:
            freezed == approvalStatus
                ? _value.approvalStatus
                : approvalStatus // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        requestedBy:
            freezed == requestedBy
                ? _value.requestedBy
                : requestedBy // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        storePhoto:
            freezed == storePhoto
                ? _value.storePhoto
                : storePhoto // ignore: cast_nullable_to_non_nullable
                    as Photo?,
        companyAddress:
            freezed == companyAddress
                ? _value.companyAddress
                : companyAddress // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        customerRequestId:
            freezed == customerRequestId
                ? _value.customerRequestId
                : customerRequestId // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as Location?,
        nationalId:
            freezed == nationalId
                ? _value.nationalId
                : nationalId // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        subscriptionType:
            freezed == subscriptionType
                ? _value.subscriptionType
                : subscriptionType // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        storeCondition:
            freezed == storeCondition
                ? _value.storeCondition
                : storeCondition // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        ownerName:
            freezed == ownerName
                ? _value.ownerName
                : ownerName // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        destinationCompany:
            freezed == destinationCompany
                ? _value.destinationCompany
                : destinationCompany // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        approvalDate:
            freezed == approvalDate
                ? _value.approvalDate
                : approvalDate // ignore: cast_nullable_to_non_nullable
                    as Date?,
        phoneNumber:
            freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        customerCode:
            freezed == customerCode
                ? _value.customerCode
                : customerCode // ignore: cast_nullable_to_non_nullable
                    as CustomerCode?,
        carbonCopy:
            freezed == carbonCopy
                ? _value.carbonCopy
                : carbonCopy // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        approvedBy:
            freezed == approvedBy
                ? _value.approvedBy
                : approvedBy // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        date:
            freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as Date?,
        ownershipStatus:
            freezed == ownershipStatus
                ? _value.ownershipStatus
                : ownershipStatus // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        taxId:
            freezed == taxId
                ? _value.taxId
                : taxId // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        ownerAddress:
            freezed == ownerAddress
                ? _value.ownerAddress
                : ownerAddress // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
        note:
            freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                    as ApprovalStatus?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsImpl implements _Fields {
  const _$FieldsImpl({
    @JsonKey(name: 'company_name') this.companyName,
    @JsonKey(name: 'national_id_photo') this.nationalIdPhoto,
    @JsonKey(name: 'approval_status') this.approvalStatus,
    @JsonKey(name: 'requested_by') this.requestedBy,
    @JsonKey(name: 'store_photo') this.storePhoto,
    @JsonKey(name: 'company_address') this.companyAddress,
    @JsonKey(name: 'customer_request_id') this.customerRequestId,
    @JsonKey(name: 'location') this.location,
    @JsonKey(name: 'national_id') this.nationalId,
    @JsonKey(name: 'subscription_type') this.subscriptionType,
    @JsonKey(name: 'store_condition') this.storeCondition,
    @JsonKey(name: 'owner_name') this.ownerName,
    @JsonKey(name: 'destination_company') this.destinationCompany,
    @JsonKey(name: 'approval_date') this.approvalDate,
    @JsonKey(name: 'phone_number') this.phoneNumber,
    @JsonKey(name: 'customer_code') this.customerCode,
    @JsonKey(name: 'carbon_copy') this.carbonCopy,
    @JsonKey(name: 'approved_by') this.approvedBy,
    @JsonKey(name: 'date') this.date,
    @JsonKey(name: 'ownership_status') this.ownershipStatus,
    @JsonKey(name: 'tax_id') this.taxId,
    @JsonKey(name: 'owner_address') this.ownerAddress,
    @JsonKey(name: 'note') this.note,
  });

  factory _$FieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsImplFromJson(json);

  @override
  @JsonKey(name: 'company_name')
  final ApprovalStatus? companyName;
  @override
  @JsonKey(name: 'national_id_photo')
  final Photo? nationalIdPhoto;
  @override
  @JsonKey(name: 'approval_status')
  final ApprovalStatus? approvalStatus;
  @override
  @JsonKey(name: 'requested_by')
  final ApprovalStatus? requestedBy;
  @override
  @JsonKey(name: 'store_photo')
  final Photo? storePhoto;
  @override
  @JsonKey(name: 'company_address')
  final ApprovalStatus? companyAddress;
  @override
  @JsonKey(name: 'customer_request_id')
  final ApprovalStatus? customerRequestId;
  @override
  @JsonKey(name: 'location')
  final Location? location;
  @override
  @JsonKey(name: 'national_id')
  final ApprovalStatus? nationalId;
  @override
  @JsonKey(name: 'subscription_type')
  final ApprovalStatus? subscriptionType;
  @override
  @JsonKey(name: 'store_condition')
  final ApprovalStatus? storeCondition;
  @override
  @JsonKey(name: 'owner_name')
  final ApprovalStatus? ownerName;
  @override
  @JsonKey(name: 'destination_company')
  final ApprovalStatus? destinationCompany;
  @override
  @JsonKey(name: 'approval_date')
  final Date? approvalDate;
  @override
  @JsonKey(name: 'phone_number')
  final ApprovalStatus? phoneNumber;
  @override
  @JsonKey(name: 'customer_code')
  final CustomerCode? customerCode;
  @override
  @JsonKey(name: 'carbon_copy')
  final ApprovalStatus? carbonCopy;
  @override
  @JsonKey(name: 'approved_by')
  final ApprovalStatus? approvedBy;
  @override
  @JsonKey(name: 'date')
  final Date? date;
  @override
  @JsonKey(name: 'ownership_status')
  final ApprovalStatus? ownershipStatus;
  @override
  @JsonKey(name: 'tax_id')
  final ApprovalStatus? taxId;
  @override
  @JsonKey(name: 'owner_address')
  final ApprovalStatus? ownerAddress;
  @override
  @JsonKey(name: 'note')
  final ApprovalStatus? note;

  @override
  String toString() {
    return 'Fields(companyName: $companyName, nationalIdPhoto: $nationalIdPhoto, approvalStatus: $approvalStatus, requestedBy: $requestedBy, storePhoto: $storePhoto, companyAddress: $companyAddress, customerRequestId: $customerRequestId, location: $location, nationalId: $nationalId, subscriptionType: $subscriptionType, storeCondition: $storeCondition, ownerName: $ownerName, destinationCompany: $destinationCompany, approvalDate: $approvalDate, phoneNumber: $phoneNumber, customerCode: $customerCode, carbonCopy: $carbonCopy, approvedBy: $approvedBy, date: $date, ownershipStatus: $ownershipStatus, taxId: $taxId, ownerAddress: $ownerAddress, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.nationalIdPhoto, nationalIdPhoto) ||
                other.nationalIdPhoto == nationalIdPhoto) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.storePhoto, storePhoto) ||
                other.storePhoto == storePhoto) &&
            (identical(other.companyAddress, companyAddress) ||
                other.companyAddress == companyAddress) &&
            (identical(other.customerRequestId, customerRequestId) ||
                other.customerRequestId == customerRequestId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.nationalId, nationalId) ||
                other.nationalId == nationalId) &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType) &&
            (identical(other.storeCondition, storeCondition) ||
                other.storeCondition == storeCondition) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.destinationCompany, destinationCompany) ||
                other.destinationCompany == destinationCompany) &&
            (identical(other.approvalDate, approvalDate) ||
                other.approvalDate == approvalDate) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.carbonCopy, carbonCopy) ||
                other.carbonCopy == carbonCopy) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.ownershipStatus, ownershipStatus) ||
                other.ownershipStatus == ownershipStatus) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.ownerAddress, ownerAddress) ||
                other.ownerAddress == ownerAddress) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    companyName,
    nationalIdPhoto,
    approvalStatus,
    requestedBy,
    storePhoto,
    companyAddress,
    customerRequestId,
    location,
    nationalId,
    subscriptionType,
    storeCondition,
    ownerName,
    destinationCompany,
    approvalDate,
    phoneNumber,
    customerCode,
    carbonCopy,
    approvedBy,
    date,
    ownershipStatus,
    taxId,
    ownerAddress,
    note,
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
    @JsonKey(name: 'company_name') final ApprovalStatus? companyName,
    @JsonKey(name: 'national_id_photo') final Photo? nationalIdPhoto,
    @JsonKey(name: 'approval_status') final ApprovalStatus? approvalStatus,
    @JsonKey(name: 'requested_by') final ApprovalStatus? requestedBy,
    @JsonKey(name: 'store_photo') final Photo? storePhoto,
    @JsonKey(name: 'company_address') final ApprovalStatus? companyAddress,
    @JsonKey(name: 'customer_request_id')
    final ApprovalStatus? customerRequestId,
    @JsonKey(name: 'location') final Location? location,
    @JsonKey(name: 'national_id') final ApprovalStatus? nationalId,
    @JsonKey(name: 'subscription_type') final ApprovalStatus? subscriptionType,
    @JsonKey(name: 'store_condition') final ApprovalStatus? storeCondition,
    @JsonKey(name: 'owner_name') final ApprovalStatus? ownerName,
    @JsonKey(name: 'destination_company')
    final ApprovalStatus? destinationCompany,
    @JsonKey(name: 'approval_date') final Date? approvalDate,
    @JsonKey(name: 'phone_number') final ApprovalStatus? phoneNumber,
    @JsonKey(name: 'customer_code') final CustomerCode? customerCode,
    @JsonKey(name: 'carbon_copy') final ApprovalStatus? carbonCopy,
    @JsonKey(name: 'approved_by') final ApprovalStatus? approvedBy,
    @JsonKey(name: 'date') final Date? date,
    @JsonKey(name: 'ownership_status') final ApprovalStatus? ownershipStatus,
    @JsonKey(name: 'tax_id') final ApprovalStatus? taxId,
    @JsonKey(name: 'owner_address') final ApprovalStatus? ownerAddress,
    @JsonKey(name: 'note') final ApprovalStatus? note,
  }) = _$FieldsImpl;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$FieldsImpl.fromJson;

  @override
  @JsonKey(name: 'company_name')
  ApprovalStatus? get companyName;
  @override
  @JsonKey(name: 'national_id_photo')
  Photo? get nationalIdPhoto;
  @override
  @JsonKey(name: 'approval_status')
  ApprovalStatus? get approvalStatus;
  @override
  @JsonKey(name: 'requested_by')
  ApprovalStatus? get requestedBy;
  @override
  @JsonKey(name: 'store_photo')
  Photo? get storePhoto;
  @override
  @JsonKey(name: 'company_address')
  ApprovalStatus? get companyAddress;
  @override
  @JsonKey(name: 'customer_request_id')
  ApprovalStatus? get customerRequestId;
  @override
  @JsonKey(name: 'location')
  Location? get location;
  @override
  @JsonKey(name: 'national_id')
  ApprovalStatus? get nationalId;
  @override
  @JsonKey(name: 'subscription_type')
  ApprovalStatus? get subscriptionType;
  @override
  @JsonKey(name: 'store_condition')
  ApprovalStatus? get storeCondition;
  @override
  @JsonKey(name: 'owner_name')
  ApprovalStatus? get ownerName;
  @override
  @JsonKey(name: 'destination_company')
  ApprovalStatus? get destinationCompany;
  @override
  @JsonKey(name: 'approval_date')
  Date? get approvalDate;
  @override
  @JsonKey(name: 'phone_number')
  ApprovalStatus? get phoneNumber;
  @override
  @JsonKey(name: 'customer_code')
  CustomerCode? get customerCode;
  @override
  @JsonKey(name: 'carbon_copy')
  ApprovalStatus? get carbonCopy;
  @override
  @JsonKey(name: 'approved_by')
  ApprovalStatus? get approvedBy;
  @override
  @JsonKey(name: 'date')
  Date? get date;
  @override
  @JsonKey(name: 'ownership_status')
  ApprovalStatus? get ownershipStatus;
  @override
  @JsonKey(name: 'tax_id')
  ApprovalStatus? get taxId;
  @override
  @JsonKey(name: 'owner_address')
  ApprovalStatus? get ownerAddress;
  @override
  @JsonKey(name: 'note')
  ApprovalStatus? get note;

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldsImplCopyWith<_$FieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Date _$DateFromJson(Map<String, dynamic> json) {
  return _Date.fromJson(json);
}

/// @nodoc
mixin _$Date {
  @JsonKey(name: 'timestampValue')
  String? get timestampValue => throw _privateConstructorUsedError;

  /// Serializes this Date to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Date
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateCopyWith<Date> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateCopyWith<$Res> {
  factory $DateCopyWith(Date value, $Res Function(Date) then) =
      _$DateCopyWithImpl<$Res, Date>;
  @useResult
  $Res call({@JsonKey(name: 'timestampValue') String? timestampValue});
}

/// @nodoc
class _$DateCopyWithImpl<$Res, $Val extends Date>
    implements $DateCopyWith<$Res> {
  _$DateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Date
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
abstract class _$$DateImplCopyWith<$Res> implements $DateCopyWith<$Res> {
  factory _$$DateImplCopyWith(
    _$DateImpl value,
    $Res Function(_$DateImpl) then,
  ) = __$$DateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'timestampValue') String? timestampValue});
}

/// @nodoc
class __$$DateImplCopyWithImpl<$Res>
    extends _$DateCopyWithImpl<$Res, _$DateImpl>
    implements _$$DateImplCopyWith<$Res> {
  __$$DateImplCopyWithImpl(_$DateImpl _value, $Res Function(_$DateImpl) _then)
    : super(_value, _then);

  /// Create a copy of Date
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? timestampValue = freezed}) {
    return _then(
      _$DateImpl(
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
class _$DateImpl implements _Date {
  const _$DateImpl({@JsonKey(name: 'timestampValue') this.timestampValue});

  factory _$DateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateImplFromJson(json);

  @override
  @JsonKey(name: 'timestampValue')
  final String? timestampValue;

  @override
  String toString() {
    return 'Date(timestampValue: $timestampValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateImpl &&
            (identical(other.timestampValue, timestampValue) ||
                other.timestampValue == timestampValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timestampValue);

  /// Create a copy of Date
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      __$$DateImplCopyWithImpl<_$DateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateImplToJson(this);
  }
}

abstract class _Date implements Date {
  const factory _Date({
    @JsonKey(name: 'timestampValue') final String? timestampValue,
  }) = _$DateImpl;

  factory _Date.fromJson(Map<String, dynamic> json) = _$DateImpl.fromJson;

  @override
  @JsonKey(name: 'timestampValue')
  String? get timestampValue;

  /// Create a copy of Date
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
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

CustomerCode _$CustomerCodeFromJson(Map<String, dynamic> json) {
  return _CustomerCode.fromJson(json);
}

/// @nodoc
mixin _$CustomerCode {
  @JsonKey(name: 'integerValue')
  String? get integerValue => throw _privateConstructorUsedError;

  /// Serializes this CustomerCode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerCodeCopyWith<CustomerCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCodeCopyWith<$Res> {
  factory $CustomerCodeCopyWith(
    CustomerCode value,
    $Res Function(CustomerCode) then,
  ) = _$CustomerCodeCopyWithImpl<$Res, CustomerCode>;
  @useResult
  $Res call({@JsonKey(name: 'integerValue') String? integerValue});
}

/// @nodoc
class _$CustomerCodeCopyWithImpl<$Res, $Val extends CustomerCode>
    implements $CustomerCodeCopyWith<$Res> {
  _$CustomerCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerCode
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
abstract class _$$CustomerCodeImplCopyWith<$Res>
    implements $CustomerCodeCopyWith<$Res> {
  factory _$$CustomerCodeImplCopyWith(
    _$CustomerCodeImpl value,
    $Res Function(_$CustomerCodeImpl) then,
  ) = __$$CustomerCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'integerValue') String? integerValue});
}

/// @nodoc
class __$$CustomerCodeImplCopyWithImpl<$Res>
    extends _$CustomerCodeCopyWithImpl<$Res, _$CustomerCodeImpl>
    implements _$$CustomerCodeImplCopyWith<$Res> {
  __$$CustomerCodeImplCopyWithImpl(
    _$CustomerCodeImpl _value,
    $Res Function(_$CustomerCodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? integerValue = freezed}) {
    return _then(
      _$CustomerCodeImpl(
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
class _$CustomerCodeImpl implements _CustomerCode {
  const _$CustomerCodeImpl({@JsonKey(name: 'integerValue') this.integerValue});

  factory _$CustomerCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerCodeImplFromJson(json);

  @override
  @JsonKey(name: 'integerValue')
  final String? integerValue;

  @override
  String toString() {
    return 'CustomerCode(integerValue: $integerValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerCodeImpl &&
            (identical(other.integerValue, integerValue) ||
                other.integerValue == integerValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, integerValue);

  /// Create a copy of CustomerCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerCodeImplCopyWith<_$CustomerCodeImpl> get copyWith =>
      __$$CustomerCodeImplCopyWithImpl<_$CustomerCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerCodeImplToJson(this);
  }
}

abstract class _CustomerCode implements CustomerCode {
  const factory _CustomerCode({
    @JsonKey(name: 'integerValue') final String? integerValue,
  }) = _$CustomerCodeImpl;

  factory _CustomerCode.fromJson(Map<String, dynamic> json) =
      _$CustomerCodeImpl.fromJson;

  @override
  @JsonKey(name: 'integerValue')
  String? get integerValue;

  /// Create a copy of CustomerCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerCodeImplCopyWith<_$CustomerCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: 'mapValue')
  MapValue? get mapValue => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({@JsonKey(name: 'mapValue') MapValue? mapValue});

  $MapValueCopyWith<$Res>? get mapValue;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
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

  /// Create a copy of Location
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
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
    _$LocationImpl value,
    $Res Function(_$LocationImpl) then,
  ) = __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'mapValue') MapValue? mapValue});

  @override
  $MapValueCopyWith<$Res>? get mapValue;
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
    _$LocationImpl _value,
    $Res Function(_$LocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? mapValue = freezed}) {
    return _then(
      _$LocationImpl(
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
class _$LocationImpl implements _Location {
  const _$LocationImpl({@JsonKey(name: 'mapValue') this.mapValue});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  @JsonKey(name: 'mapValue')
  final MapValue? mapValue;

  @override
  String toString() {
    return 'Location(mapValue: $mapValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.mapValue, mapValue) ||
                other.mapValue == mapValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mapValue);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(this);
  }
}

abstract class _Location implements Location {
  const factory _Location({
    @JsonKey(name: 'mapValue') final MapValue? mapValue,
  }) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  @JsonKey(name: 'mapValue')
  MapValue? get mapValue;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
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
  Itude? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  Itude? get longitude => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'latitude') Itude? latitude,
    @JsonKey(name: 'longitude') Itude? longitude,
  });

  $AccuracyCopyWith<$Res>? get accuracy;
  $ItudeCopyWith<$Res>? get latitude;
  $ItudeCopyWith<$Res>? get longitude;
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
                        as Itude?,
            longitude:
                freezed == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as Itude?,
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
    @JsonKey(name: 'latitude') Itude? latitude,
    @JsonKey(name: 'longitude') Itude? longitude,
  });

  @override
  $AccuracyCopyWith<$Res>? get accuracy;
  @override
  $ItudeCopyWith<$Res>? get latitude;
  @override
  $ItudeCopyWith<$Res>? get longitude;
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
                    as Itude?,
        longitude:
            freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as Itude?,
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
  final Itude? latitude;
  @override
  @JsonKey(name: 'longitude')
  final Itude? longitude;

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
    @JsonKey(name: 'latitude') final Itude? latitude,
    @JsonKey(name: 'longitude') final Itude? longitude,
  }) = _$MapValueFieldsImpl;

  factory _MapValueFields.fromJson(Map<String, dynamic> json) =
      _$MapValueFieldsImpl.fromJson;

  @override
  @JsonKey(name: 'accuracy')
  Accuracy? get accuracy;
  @override
  @JsonKey(name: 'latitude')
  Itude? get latitude;
  @override
  @JsonKey(name: 'longitude')
  Itude? get longitude;

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

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this Photo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Photo
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
abstract class _$$PhotoImplCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$PhotoImplCopyWith(
    _$PhotoImpl value,
    $Res Function(_$PhotoImpl) then,
  ) = __$$PhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$PhotoImplCopyWithImpl<$Res>
    extends _$PhotoCopyWithImpl<$Res, _$PhotoImpl>
    implements _$$PhotoImplCopyWith<$Res> {
  __$$PhotoImplCopyWithImpl(
    _$PhotoImpl _value,
    $Res Function(_$PhotoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$PhotoImpl(
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
class _$PhotoImpl implements _Photo {
  const _$PhotoImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$PhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'Photo(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      __$$PhotoImplCopyWithImpl<_$PhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoImplToJson(this);
  }
}

abstract class _Photo implements Photo {
  const factory _Photo({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$PhotoImpl;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$PhotoImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
