// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visit_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VisitDomain _$VisitDomainFromJson(Map<String, dynamic> json) {
  return _VisitDomain.fromJson(json);
}

/// @nodoc
mixin _$VisitDomain {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'fields')
  Fields? get fields => throw _privateConstructorUsedError;
  @JsonKey(name: 'createTime')
  String? get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateTime')
  String? get updateTime => throw _privateConstructorUsedError;

  /// Serializes this VisitDomain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisitDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisitDomainCopyWith<VisitDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitDomainCopyWith<$Res> {
  factory $VisitDomainCopyWith(
    VisitDomain value,
    $Res Function(VisitDomain) then,
  ) = _$VisitDomainCopyWithImpl<$Res, VisitDomain>;
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
class _$VisitDomainCopyWithImpl<$Res, $Val extends VisitDomain>
    implements $VisitDomainCopyWith<$Res> {
  _$VisitDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisitDomain
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

  /// Create a copy of VisitDomain
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
abstract class _$$VisitDomainImplCopyWith<$Res>
    implements $VisitDomainCopyWith<$Res> {
  factory _$$VisitDomainImplCopyWith(
    _$VisitDomainImpl value,
    $Res Function(_$VisitDomainImpl) then,
  ) = __$$VisitDomainImplCopyWithImpl<$Res>;
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
class __$$VisitDomainImplCopyWithImpl<$Res>
    extends _$VisitDomainCopyWithImpl<$Res, _$VisitDomainImpl>
    implements _$$VisitDomainImplCopyWith<$Res> {
  __$$VisitDomainImplCopyWithImpl(
    _$VisitDomainImpl _value,
    $Res Function(_$VisitDomainImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VisitDomain
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
      _$VisitDomainImpl(
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
class _$VisitDomainImpl implements _VisitDomain {
  const _$VisitDomainImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'fields') this.fields,
    @JsonKey(name: 'createTime') this.createTime,
    @JsonKey(name: 'updateTime') this.updateTime,
  });

  factory _$VisitDomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisitDomainImplFromJson(json);

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
    return 'VisitDomain(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitDomainImpl &&
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

  /// Create a copy of VisitDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitDomainImplCopyWith<_$VisitDomainImpl> get copyWith =>
      __$$VisitDomainImplCopyWithImpl<_$VisitDomainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisitDomainImplToJson(this);
  }
}

abstract class _VisitDomain implements VisitDomain {
  const factory _VisitDomain({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'fields') final Fields? fields,
    @JsonKey(name: 'createTime') final String? createTime,
    @JsonKey(name: 'updateTime') final String? updateTime,
  }) = _$VisitDomainImpl;

  factory _VisitDomain.fromJson(Map<String, dynamic> json) =
      _$VisitDomainImpl.fromJson;

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

  /// Create a copy of VisitDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisitDomainImplCopyWith<_$VisitDomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return _Fields.fromJson(json);
}

/// @nodoc
mixin _$Fields {
  @JsonKey(name: 'visit_date')
  VisitDate? get visitDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_purpose')
  CustomerId? get visitPurpose => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_notes')
  CustomerId? get visitNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_status')
  CustomerId? get visitStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_id')
  CustomerId? get salesId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  CustomerId? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  Location? get location => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'visit_date') VisitDate? visitDate,
    @JsonKey(name: 'visit_purpose') CustomerId? visitPurpose,
    @JsonKey(name: 'visit_notes') CustomerId? visitNotes,
    @JsonKey(name: 'visit_status') CustomerId? visitStatus,
    @JsonKey(name: 'sales_id') CustomerId? salesId,
    @JsonKey(name: 'customer_id') CustomerId? customerId,
    @JsonKey(name: 'location') Location? location,
  });

  $VisitDateCopyWith<$Res>? get visitDate;
  $CustomerIdCopyWith<$Res>? get visitPurpose;
  $CustomerIdCopyWith<$Res>? get visitNotes;
  $CustomerIdCopyWith<$Res>? get visitStatus;
  $CustomerIdCopyWith<$Res>? get salesId;
  $CustomerIdCopyWith<$Res>? get customerId;
  $LocationCopyWith<$Res>? get location;
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
    Object? visitDate = freezed,
    Object? visitPurpose = freezed,
    Object? visitNotes = freezed,
    Object? visitStatus = freezed,
    Object? salesId = freezed,
    Object? customerId = freezed,
    Object? location = freezed,
  }) {
    return _then(
      _value.copyWith(
            visitDate:
                freezed == visitDate
                    ? _value.visitDate
                    : visitDate // ignore: cast_nullable_to_non_nullable
                        as VisitDate?,
            visitPurpose:
                freezed == visitPurpose
                    ? _value.visitPurpose
                    : visitPurpose // ignore: cast_nullable_to_non_nullable
                        as CustomerId?,
            visitNotes:
                freezed == visitNotes
                    ? _value.visitNotes
                    : visitNotes // ignore: cast_nullable_to_non_nullable
                        as CustomerId?,
            visitStatus:
                freezed == visitStatus
                    ? _value.visitStatus
                    : visitStatus // ignore: cast_nullable_to_non_nullable
                        as CustomerId?,
            salesId:
                freezed == salesId
                    ? _value.salesId
                    : salesId // ignore: cast_nullable_to_non_nullable
                        as CustomerId?,
            customerId:
                freezed == customerId
                    ? _value.customerId
                    : customerId // ignore: cast_nullable_to_non_nullable
                        as CustomerId?,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as Location?,
          )
          as $Val,
    );
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VisitDateCopyWith<$Res>? get visitDate {
    if (_value.visitDate == null) {
      return null;
    }

    return $VisitDateCopyWith<$Res>(_value.visitDate!, (value) {
      return _then(_value.copyWith(visitDate: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerIdCopyWith<$Res>? get visitPurpose {
    if (_value.visitPurpose == null) {
      return null;
    }

    return $CustomerIdCopyWith<$Res>(_value.visitPurpose!, (value) {
      return _then(_value.copyWith(visitPurpose: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerIdCopyWith<$Res>? get visitNotes {
    if (_value.visitNotes == null) {
      return null;
    }

    return $CustomerIdCopyWith<$Res>(_value.visitNotes!, (value) {
      return _then(_value.copyWith(visitNotes: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerIdCopyWith<$Res>? get visitStatus {
    if (_value.visitStatus == null) {
      return null;
    }

    return $CustomerIdCopyWith<$Res>(_value.visitStatus!, (value) {
      return _then(_value.copyWith(visitStatus: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerIdCopyWith<$Res>? get salesId {
    if (_value.salesId == null) {
      return null;
    }

    return $CustomerIdCopyWith<$Res>(_value.salesId!, (value) {
      return _then(_value.copyWith(salesId: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerIdCopyWith<$Res>? get customerId {
    if (_value.customerId == null) {
      return null;
    }

    return $CustomerIdCopyWith<$Res>(_value.customerId!, (value) {
      return _then(_value.copyWith(customerId: value) as $Val);
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
    @JsonKey(name: 'visit_date') VisitDate? visitDate,
    @JsonKey(name: 'visit_purpose') CustomerId? visitPurpose,
    @JsonKey(name: 'visit_notes') CustomerId? visitNotes,
    @JsonKey(name: 'visit_status') CustomerId? visitStatus,
    @JsonKey(name: 'sales_id') CustomerId? salesId,
    @JsonKey(name: 'customer_id') CustomerId? customerId,
    @JsonKey(name: 'location') Location? location,
  });

  @override
  $VisitDateCopyWith<$Res>? get visitDate;
  @override
  $CustomerIdCopyWith<$Res>? get visitPurpose;
  @override
  $CustomerIdCopyWith<$Res>? get visitNotes;
  @override
  $CustomerIdCopyWith<$Res>? get visitStatus;
  @override
  $CustomerIdCopyWith<$Res>? get salesId;
  @override
  $CustomerIdCopyWith<$Res>? get customerId;
  @override
  $LocationCopyWith<$Res>? get location;
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
    Object? visitDate = freezed,
    Object? visitPurpose = freezed,
    Object? visitNotes = freezed,
    Object? visitStatus = freezed,
    Object? salesId = freezed,
    Object? customerId = freezed,
    Object? location = freezed,
  }) {
    return _then(
      _$FieldsImpl(
        visitDate:
            freezed == visitDate
                ? _value.visitDate
                : visitDate // ignore: cast_nullable_to_non_nullable
                    as VisitDate?,
        visitPurpose:
            freezed == visitPurpose
                ? _value.visitPurpose
                : visitPurpose // ignore: cast_nullable_to_non_nullable
                    as CustomerId?,
        visitNotes:
            freezed == visitNotes
                ? _value.visitNotes
                : visitNotes // ignore: cast_nullable_to_non_nullable
                    as CustomerId?,
        visitStatus:
            freezed == visitStatus
                ? _value.visitStatus
                : visitStatus // ignore: cast_nullable_to_non_nullable
                    as CustomerId?,
        salesId:
            freezed == salesId
                ? _value.salesId
                : salesId // ignore: cast_nullable_to_non_nullable
                    as CustomerId?,
        customerId:
            freezed == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                    as CustomerId?,
        location:
            freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as Location?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsImpl implements _Fields {
  const _$FieldsImpl({
    @JsonKey(name: 'visit_date') this.visitDate,
    @JsonKey(name: 'visit_purpose') this.visitPurpose,
    @JsonKey(name: 'visit_notes') this.visitNotes,
    @JsonKey(name: 'visit_status') this.visitStatus,
    @JsonKey(name: 'sales_id') this.salesId,
    @JsonKey(name: 'customer_id') this.customerId,
    @JsonKey(name: 'location') this.location,
  });

  factory _$FieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsImplFromJson(json);

  @override
  @JsonKey(name: 'visit_date')
  final VisitDate? visitDate;
  @override
  @JsonKey(name: 'visit_purpose')
  final CustomerId? visitPurpose;
  @override
  @JsonKey(name: 'visit_notes')
  final CustomerId? visitNotes;
  @override
  @JsonKey(name: 'visit_status')
  final CustomerId? visitStatus;
  @override
  @JsonKey(name: 'sales_id')
  final CustomerId? salesId;
  @override
  @JsonKey(name: 'customer_id')
  final CustomerId? customerId;
  @override
  @JsonKey(name: 'location')
  final Location? location;

  @override
  String toString() {
    return 'Fields(visitDate: $visitDate, visitPurpose: $visitPurpose, visitNotes: $visitNotes, visitStatus: $visitStatus, salesId: $salesId, customerId: $customerId, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsImpl &&
            (identical(other.visitDate, visitDate) ||
                other.visitDate == visitDate) &&
            (identical(other.visitPurpose, visitPurpose) ||
                other.visitPurpose == visitPurpose) &&
            (identical(other.visitNotes, visitNotes) ||
                other.visitNotes == visitNotes) &&
            (identical(other.visitStatus, visitStatus) ||
                other.visitStatus == visitStatus) &&
            (identical(other.salesId, salesId) || other.salesId == salesId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    visitDate,
    visitPurpose,
    visitNotes,
    visitStatus,
    salesId,
    customerId,
    location,
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
    @JsonKey(name: 'visit_date') final VisitDate? visitDate,
    @JsonKey(name: 'visit_purpose') final CustomerId? visitPurpose,
    @JsonKey(name: 'visit_notes') final CustomerId? visitNotes,
    @JsonKey(name: 'visit_status') final CustomerId? visitStatus,
    @JsonKey(name: 'sales_id') final CustomerId? salesId,
    @JsonKey(name: 'customer_id') final CustomerId? customerId,
    @JsonKey(name: 'location') final Location? location,
  }) = _$FieldsImpl;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$FieldsImpl.fromJson;

  @override
  @JsonKey(name: 'visit_date')
  VisitDate? get visitDate;
  @override
  @JsonKey(name: 'visit_purpose')
  CustomerId? get visitPurpose;
  @override
  @JsonKey(name: 'visit_notes')
  CustomerId? get visitNotes;
  @override
  @JsonKey(name: 'visit_status')
  CustomerId? get visitStatus;
  @override
  @JsonKey(name: 'sales_id')
  CustomerId? get salesId;
  @override
  @JsonKey(name: 'customer_id')
  CustomerId? get customerId;
  @override
  @JsonKey(name: 'location')
  Location? get location;

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldsImplCopyWith<_$FieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerId _$CustomerIdFromJson(Map<String, dynamic> json) {
  return _CustomerId.fromJson(json);
}

/// @nodoc
mixin _$CustomerId {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this CustomerId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerIdCopyWith<CustomerId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerIdCopyWith<$Res> {
  factory $CustomerIdCopyWith(
    CustomerId value,
    $Res Function(CustomerId) then,
  ) = _$CustomerIdCopyWithImpl<$Res, CustomerId>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$CustomerIdCopyWithImpl<$Res, $Val extends CustomerId>
    implements $CustomerIdCopyWith<$Res> {
  _$CustomerIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerId
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
abstract class _$$CustomerIdImplCopyWith<$Res>
    implements $CustomerIdCopyWith<$Res> {
  factory _$$CustomerIdImplCopyWith(
    _$CustomerIdImpl value,
    $Res Function(_$CustomerIdImpl) then,
  ) = __$$CustomerIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$CustomerIdImplCopyWithImpl<$Res>
    extends _$CustomerIdCopyWithImpl<$Res, _$CustomerIdImpl>
    implements _$$CustomerIdImplCopyWith<$Res> {
  __$$CustomerIdImplCopyWithImpl(
    _$CustomerIdImpl _value,
    $Res Function(_$CustomerIdImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$CustomerIdImpl(
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
class _$CustomerIdImpl implements _CustomerId {
  const _$CustomerIdImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$CustomerIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerIdImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'CustomerId(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerIdImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of CustomerId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerIdImplCopyWith<_$CustomerIdImpl> get copyWith =>
      __$$CustomerIdImplCopyWithImpl<_$CustomerIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerIdImplToJson(this);
  }
}

abstract class _CustomerId implements CustomerId {
  const factory _CustomerId({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$CustomerIdImpl;

  factory _CustomerId.fromJson(Map<String, dynamic> json) =
      _$CustomerIdImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of CustomerId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerIdImplCopyWith<_$CustomerIdImpl> get copyWith =>
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

VisitDate _$VisitDateFromJson(Map<String, dynamic> json) {
  return _VisitDate.fromJson(json);
}

/// @nodoc
mixin _$VisitDate {
  @JsonKey(name: 'timestampValue')
  String? get timestampValue => throw _privateConstructorUsedError;

  /// Serializes this VisitDate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisitDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisitDateCopyWith<VisitDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitDateCopyWith<$Res> {
  factory $VisitDateCopyWith(VisitDate value, $Res Function(VisitDate) then) =
      _$VisitDateCopyWithImpl<$Res, VisitDate>;
  @useResult
  $Res call({@JsonKey(name: 'timestampValue') String? timestampValue});
}

/// @nodoc
class _$VisitDateCopyWithImpl<$Res, $Val extends VisitDate>
    implements $VisitDateCopyWith<$Res> {
  _$VisitDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisitDate
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
abstract class _$$VisitDateImplCopyWith<$Res>
    implements $VisitDateCopyWith<$Res> {
  factory _$$VisitDateImplCopyWith(
    _$VisitDateImpl value,
    $Res Function(_$VisitDateImpl) then,
  ) = __$$VisitDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'timestampValue') String? timestampValue});
}

/// @nodoc
class __$$VisitDateImplCopyWithImpl<$Res>
    extends _$VisitDateCopyWithImpl<$Res, _$VisitDateImpl>
    implements _$$VisitDateImplCopyWith<$Res> {
  __$$VisitDateImplCopyWithImpl(
    _$VisitDateImpl _value,
    $Res Function(_$VisitDateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VisitDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? timestampValue = freezed}) {
    return _then(
      _$VisitDateImpl(
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
class _$VisitDateImpl implements _VisitDate {
  const _$VisitDateImpl({@JsonKey(name: 'timestampValue') this.timestampValue});

  factory _$VisitDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisitDateImplFromJson(json);

  @override
  @JsonKey(name: 'timestampValue')
  final String? timestampValue;

  @override
  String toString() {
    return 'VisitDate(timestampValue: $timestampValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitDateImpl &&
            (identical(other.timestampValue, timestampValue) ||
                other.timestampValue == timestampValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timestampValue);

  /// Create a copy of VisitDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitDateImplCopyWith<_$VisitDateImpl> get copyWith =>
      __$$VisitDateImplCopyWithImpl<_$VisitDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisitDateImplToJson(this);
  }
}

abstract class _VisitDate implements VisitDate {
  const factory _VisitDate({
    @JsonKey(name: 'timestampValue') final String? timestampValue,
  }) = _$VisitDateImpl;

  factory _VisitDate.fromJson(Map<String, dynamic> json) =
      _$VisitDateImpl.fromJson;

  @override
  @JsonKey(name: 'timestampValue')
  String? get timestampValue;

  /// Create a copy of VisitDate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisitDateImplCopyWith<_$VisitDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
