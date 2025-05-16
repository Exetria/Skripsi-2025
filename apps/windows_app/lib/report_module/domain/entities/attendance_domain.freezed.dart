// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttendanceDomain _$AttendanceDomainFromJson(Map<String, dynamic> json) {
  return _AttendanceDomain.fromJson(json);
}

/// @nodoc
mixin _$AttendanceDomain {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'fields')
  Fields? get fields => throw _privateConstructorUsedError;
  @JsonKey(name: 'createTime')
  String? get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateTime')
  String? get updateTime => throw _privateConstructorUsedError;

  /// Serializes this AttendanceDomain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceDomainCopyWith<AttendanceDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceDomainCopyWith<$Res> {
  factory $AttendanceDomainCopyWith(
    AttendanceDomain value,
    $Res Function(AttendanceDomain) then,
  ) = _$AttendanceDomainCopyWithImpl<$Res, AttendanceDomain>;
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
class _$AttendanceDomainCopyWithImpl<$Res, $Val extends AttendanceDomain>
    implements $AttendanceDomainCopyWith<$Res> {
  _$AttendanceDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceDomain
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

  /// Create a copy of AttendanceDomain
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
abstract class _$$AttendanceDomainImplCopyWith<$Res>
    implements $AttendanceDomainCopyWith<$Res> {
  factory _$$AttendanceDomainImplCopyWith(
    _$AttendanceDomainImpl value,
    $Res Function(_$AttendanceDomainImpl) then,
  ) = __$$AttendanceDomainImplCopyWithImpl<$Res>;
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
class __$$AttendanceDomainImplCopyWithImpl<$Res>
    extends _$AttendanceDomainCopyWithImpl<$Res, _$AttendanceDomainImpl>
    implements _$$AttendanceDomainImplCopyWith<$Res> {
  __$$AttendanceDomainImplCopyWithImpl(
    _$AttendanceDomainImpl _value,
    $Res Function(_$AttendanceDomainImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceDomain
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
      _$AttendanceDomainImpl(
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
class _$AttendanceDomainImpl implements _AttendanceDomain {
  const _$AttendanceDomainImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'fields') this.fields,
    @JsonKey(name: 'createTime') this.createTime,
    @JsonKey(name: 'updateTime') this.updateTime,
  });

  factory _$AttendanceDomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceDomainImplFromJson(json);

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
    return 'AttendanceDomain(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceDomainImpl &&
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

  /// Create a copy of AttendanceDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceDomainImplCopyWith<_$AttendanceDomainImpl> get copyWith =>
      __$$AttendanceDomainImplCopyWithImpl<_$AttendanceDomainImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceDomainImplToJson(this);
  }
}

abstract class _AttendanceDomain implements AttendanceDomain {
  const factory _AttendanceDomain({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'fields') final Fields? fields,
    @JsonKey(name: 'createTime') final String? createTime,
    @JsonKey(name: 'updateTime') final String? updateTime,
  }) = _$AttendanceDomainImpl;

  factory _AttendanceDomain.fromJson(Map<String, dynamic> json) =
      _$AttendanceDomainImpl.fromJson;

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

  /// Create a copy of AttendanceDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceDomainImplCopyWith<_$AttendanceDomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return _Fields.fromJson(json);
}

/// @nodoc
mixin _$Fields {
  @JsonKey(name: 'checkin_time')
  CheckTime? get checkinTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkin_location')
  CheckLocation? get checkinLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  CreatedBy? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkout_location')
  CheckLocation? get checkoutLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkout_time')
  CheckTime? get checkoutTime => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'checkin_time') CheckTime? checkinTime,
    @JsonKey(name: 'checkin_location') CheckLocation? checkinLocation,
    @JsonKey(name: 'created_by') CreatedBy? createdBy,
    @JsonKey(name: 'checkout_location') CheckLocation? checkoutLocation,
    @JsonKey(name: 'checkout_time') CheckTime? checkoutTime,
  });

  $CheckTimeCopyWith<$Res>? get checkinTime;
  $CheckLocationCopyWith<$Res>? get checkinLocation;
  $CreatedByCopyWith<$Res>? get createdBy;
  $CheckLocationCopyWith<$Res>? get checkoutLocation;
  $CheckTimeCopyWith<$Res>? get checkoutTime;
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
    Object? checkinTime = freezed,
    Object? checkinLocation = freezed,
    Object? createdBy = freezed,
    Object? checkoutLocation = freezed,
    Object? checkoutTime = freezed,
  }) {
    return _then(
      _value.copyWith(
            checkinTime:
                freezed == checkinTime
                    ? _value.checkinTime
                    : checkinTime // ignore: cast_nullable_to_non_nullable
                        as CheckTime?,
            checkinLocation:
                freezed == checkinLocation
                    ? _value.checkinLocation
                    : checkinLocation // ignore: cast_nullable_to_non_nullable
                        as CheckLocation?,
            createdBy:
                freezed == createdBy
                    ? _value.createdBy
                    : createdBy // ignore: cast_nullable_to_non_nullable
                        as CreatedBy?,
            checkoutLocation:
                freezed == checkoutLocation
                    ? _value.checkoutLocation
                    : checkoutLocation // ignore: cast_nullable_to_non_nullable
                        as CheckLocation?,
            checkoutTime:
                freezed == checkoutTime
                    ? _value.checkoutTime
                    : checkoutTime // ignore: cast_nullable_to_non_nullable
                        as CheckTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckTimeCopyWith<$Res>? get checkinTime {
    if (_value.checkinTime == null) {
      return null;
    }

    return $CheckTimeCopyWith<$Res>(_value.checkinTime!, (value) {
      return _then(_value.copyWith(checkinTime: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckLocationCopyWith<$Res>? get checkinLocation {
    if (_value.checkinLocation == null) {
      return null;
    }

    return $CheckLocationCopyWith<$Res>(_value.checkinLocation!, (value) {
      return _then(_value.copyWith(checkinLocation: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $CreatedByCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckLocationCopyWith<$Res>? get checkoutLocation {
    if (_value.checkoutLocation == null) {
      return null;
    }

    return $CheckLocationCopyWith<$Res>(_value.checkoutLocation!, (value) {
      return _then(_value.copyWith(checkoutLocation: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckTimeCopyWith<$Res>? get checkoutTime {
    if (_value.checkoutTime == null) {
      return null;
    }

    return $CheckTimeCopyWith<$Res>(_value.checkoutTime!, (value) {
      return _then(_value.copyWith(checkoutTime: value) as $Val);
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
    @JsonKey(name: 'checkin_time') CheckTime? checkinTime,
    @JsonKey(name: 'checkin_location') CheckLocation? checkinLocation,
    @JsonKey(name: 'created_by') CreatedBy? createdBy,
    @JsonKey(name: 'checkout_location') CheckLocation? checkoutLocation,
    @JsonKey(name: 'checkout_time') CheckTime? checkoutTime,
  });

  @override
  $CheckTimeCopyWith<$Res>? get checkinTime;
  @override
  $CheckLocationCopyWith<$Res>? get checkinLocation;
  @override
  $CreatedByCopyWith<$Res>? get createdBy;
  @override
  $CheckLocationCopyWith<$Res>? get checkoutLocation;
  @override
  $CheckTimeCopyWith<$Res>? get checkoutTime;
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
    Object? checkinTime = freezed,
    Object? checkinLocation = freezed,
    Object? createdBy = freezed,
    Object? checkoutLocation = freezed,
    Object? checkoutTime = freezed,
  }) {
    return _then(
      _$FieldsImpl(
        checkinTime:
            freezed == checkinTime
                ? _value.checkinTime
                : checkinTime // ignore: cast_nullable_to_non_nullable
                    as CheckTime?,
        checkinLocation:
            freezed == checkinLocation
                ? _value.checkinLocation
                : checkinLocation // ignore: cast_nullable_to_non_nullable
                    as CheckLocation?,
        createdBy:
            freezed == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                    as CreatedBy?,
        checkoutLocation:
            freezed == checkoutLocation
                ? _value.checkoutLocation
                : checkoutLocation // ignore: cast_nullable_to_non_nullable
                    as CheckLocation?,
        checkoutTime:
            freezed == checkoutTime
                ? _value.checkoutTime
                : checkoutTime // ignore: cast_nullable_to_non_nullable
                    as CheckTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsImpl implements _Fields {
  const _$FieldsImpl({
    @JsonKey(name: 'checkin_time') this.checkinTime,
    @JsonKey(name: 'checkin_location') this.checkinLocation,
    @JsonKey(name: 'created_by') this.createdBy,
    @JsonKey(name: 'checkout_location') this.checkoutLocation,
    @JsonKey(name: 'checkout_time') this.checkoutTime,
  });

  factory _$FieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsImplFromJson(json);

  @override
  @JsonKey(name: 'checkin_time')
  final CheckTime? checkinTime;
  @override
  @JsonKey(name: 'checkin_location')
  final CheckLocation? checkinLocation;
  @override
  @JsonKey(name: 'created_by')
  final CreatedBy? createdBy;
  @override
  @JsonKey(name: 'checkout_location')
  final CheckLocation? checkoutLocation;
  @override
  @JsonKey(name: 'checkout_time')
  final CheckTime? checkoutTime;

  @override
  String toString() {
    return 'Fields(checkinTime: $checkinTime, checkinLocation: $checkinLocation, createdBy: $createdBy, checkoutLocation: $checkoutLocation, checkoutTime: $checkoutTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsImpl &&
            (identical(other.checkinTime, checkinTime) ||
                other.checkinTime == checkinTime) &&
            (identical(other.checkinLocation, checkinLocation) ||
                other.checkinLocation == checkinLocation) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.checkoutLocation, checkoutLocation) ||
                other.checkoutLocation == checkoutLocation) &&
            (identical(other.checkoutTime, checkoutTime) ||
                other.checkoutTime == checkoutTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    checkinTime,
    checkinLocation,
    createdBy,
    checkoutLocation,
    checkoutTime,
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
    @JsonKey(name: 'checkin_time') final CheckTime? checkinTime,
    @JsonKey(name: 'checkin_location') final CheckLocation? checkinLocation,
    @JsonKey(name: 'created_by') final CreatedBy? createdBy,
    @JsonKey(name: 'checkout_location') final CheckLocation? checkoutLocation,
    @JsonKey(name: 'checkout_time') final CheckTime? checkoutTime,
  }) = _$FieldsImpl;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$FieldsImpl.fromJson;

  @override
  @JsonKey(name: 'checkin_time')
  CheckTime? get checkinTime;
  @override
  @JsonKey(name: 'checkin_location')
  CheckLocation? get checkinLocation;
  @override
  @JsonKey(name: 'created_by')
  CreatedBy? get createdBy;
  @override
  @JsonKey(name: 'checkout_location')
  CheckLocation? get checkoutLocation;
  @override
  @JsonKey(name: 'checkout_time')
  CheckTime? get checkoutTime;

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldsImplCopyWith<_$FieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckLocation _$CheckLocationFromJson(Map<String, dynamic> json) {
  return _CheckLocation.fromJson(json);
}

/// @nodoc
mixin _$CheckLocation {
  @JsonKey(name: 'mapValue')
  MapValue? get mapValue => throw _privateConstructorUsedError;

  /// Serializes this CheckLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckLocationCopyWith<CheckLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckLocationCopyWith<$Res> {
  factory $CheckLocationCopyWith(
    CheckLocation value,
    $Res Function(CheckLocation) then,
  ) = _$CheckLocationCopyWithImpl<$Res, CheckLocation>;
  @useResult
  $Res call({@JsonKey(name: 'mapValue') MapValue? mapValue});

  $MapValueCopyWith<$Res>? get mapValue;
}

/// @nodoc
class _$CheckLocationCopyWithImpl<$Res, $Val extends CheckLocation>
    implements $CheckLocationCopyWith<$Res> {
  _$CheckLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckLocation
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

  /// Create a copy of CheckLocation
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
abstract class _$$CheckLocationImplCopyWith<$Res>
    implements $CheckLocationCopyWith<$Res> {
  factory _$$CheckLocationImplCopyWith(
    _$CheckLocationImpl value,
    $Res Function(_$CheckLocationImpl) then,
  ) = __$$CheckLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'mapValue') MapValue? mapValue});

  @override
  $MapValueCopyWith<$Res>? get mapValue;
}

/// @nodoc
class __$$CheckLocationImplCopyWithImpl<$Res>
    extends _$CheckLocationCopyWithImpl<$Res, _$CheckLocationImpl>
    implements _$$CheckLocationImplCopyWith<$Res> {
  __$$CheckLocationImplCopyWithImpl(
    _$CheckLocationImpl _value,
    $Res Function(_$CheckLocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CheckLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? mapValue = freezed}) {
    return _then(
      _$CheckLocationImpl(
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
class _$CheckLocationImpl implements _CheckLocation {
  const _$CheckLocationImpl({@JsonKey(name: 'mapValue') this.mapValue});

  factory _$CheckLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckLocationImplFromJson(json);

  @override
  @JsonKey(name: 'mapValue')
  final MapValue? mapValue;

  @override
  String toString() {
    return 'CheckLocation(mapValue: $mapValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckLocationImpl &&
            (identical(other.mapValue, mapValue) ||
                other.mapValue == mapValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mapValue);

  /// Create a copy of CheckLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckLocationImplCopyWith<_$CheckLocationImpl> get copyWith =>
      __$$CheckLocationImplCopyWithImpl<_$CheckLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckLocationImplToJson(this);
  }
}

abstract class _CheckLocation implements CheckLocation {
  const factory _CheckLocation({
    @JsonKey(name: 'mapValue') final MapValue? mapValue,
  }) = _$CheckLocationImpl;

  factory _CheckLocation.fromJson(Map<String, dynamic> json) =
      _$CheckLocationImpl.fromJson;

  @override
  @JsonKey(name: 'mapValue')
  MapValue? get mapValue;

  /// Create a copy of CheckLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckLocationImplCopyWith<_$CheckLocationImpl> get copyWith =>
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

CheckTime _$CheckTimeFromJson(Map<String, dynamic> json) {
  return _CheckTime.fromJson(json);
}

/// @nodoc
mixin _$CheckTime {
  @JsonKey(name: 'timestampValue')
  String? get timestampValue => throw _privateConstructorUsedError;

  /// Serializes this CheckTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckTimeCopyWith<CheckTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckTimeCopyWith<$Res> {
  factory $CheckTimeCopyWith(CheckTime value, $Res Function(CheckTime) then) =
      _$CheckTimeCopyWithImpl<$Res, CheckTime>;
  @useResult
  $Res call({@JsonKey(name: 'timestampValue') String? timestampValue});
}

/// @nodoc
class _$CheckTimeCopyWithImpl<$Res, $Val extends CheckTime>
    implements $CheckTimeCopyWith<$Res> {
  _$CheckTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckTime
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
abstract class _$$CheckTimeImplCopyWith<$Res>
    implements $CheckTimeCopyWith<$Res> {
  factory _$$CheckTimeImplCopyWith(
    _$CheckTimeImpl value,
    $Res Function(_$CheckTimeImpl) then,
  ) = __$$CheckTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'timestampValue') String? timestampValue});
}

/// @nodoc
class __$$CheckTimeImplCopyWithImpl<$Res>
    extends _$CheckTimeCopyWithImpl<$Res, _$CheckTimeImpl>
    implements _$$CheckTimeImplCopyWith<$Res> {
  __$$CheckTimeImplCopyWithImpl(
    _$CheckTimeImpl _value,
    $Res Function(_$CheckTimeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CheckTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? timestampValue = freezed}) {
    return _then(
      _$CheckTimeImpl(
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
class _$CheckTimeImpl implements _CheckTime {
  const _$CheckTimeImpl({@JsonKey(name: 'timestampValue') this.timestampValue});

  factory _$CheckTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckTimeImplFromJson(json);

  @override
  @JsonKey(name: 'timestampValue')
  final String? timestampValue;

  @override
  String toString() {
    return 'CheckTime(timestampValue: $timestampValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckTimeImpl &&
            (identical(other.timestampValue, timestampValue) ||
                other.timestampValue == timestampValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timestampValue);

  /// Create a copy of CheckTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckTimeImplCopyWith<_$CheckTimeImpl> get copyWith =>
      __$$CheckTimeImplCopyWithImpl<_$CheckTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckTimeImplToJson(this);
  }
}

abstract class _CheckTime implements CheckTime {
  const factory _CheckTime({
    @JsonKey(name: 'timestampValue') final String? timestampValue,
  }) = _$CheckTimeImpl;

  factory _CheckTime.fromJson(Map<String, dynamic> json) =
      _$CheckTimeImpl.fromJson;

  @override
  @JsonKey(name: 'timestampValue')
  String? get timestampValue;

  /// Create a copy of CheckTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckTimeImplCopyWith<_$CheckTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatedBy _$CreatedByFromJson(Map<String, dynamic> json) {
  return _CreatedBy.fromJson(json);
}

/// @nodoc
mixin _$CreatedBy {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this CreatedBy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatedByCopyWith<CreatedBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedByCopyWith<$Res> {
  factory $CreatedByCopyWith(CreatedBy value, $Res Function(CreatedBy) then) =
      _$CreatedByCopyWithImpl<$Res, CreatedBy>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$CreatedByCopyWithImpl<$Res, $Val extends CreatedBy>
    implements $CreatedByCopyWith<$Res> {
  _$CreatedByCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatedBy
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
abstract class _$$CreatedByImplCopyWith<$Res>
    implements $CreatedByCopyWith<$Res> {
  factory _$$CreatedByImplCopyWith(
    _$CreatedByImpl value,
    $Res Function(_$CreatedByImpl) then,
  ) = __$$CreatedByImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$CreatedByImplCopyWithImpl<$Res>
    extends _$CreatedByCopyWithImpl<$Res, _$CreatedByImpl>
    implements _$$CreatedByImplCopyWith<$Res> {
  __$$CreatedByImplCopyWithImpl(
    _$CreatedByImpl _value,
    $Res Function(_$CreatedByImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$CreatedByImpl(
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
class _$CreatedByImpl implements _CreatedBy {
  const _$CreatedByImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$CreatedByImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatedByImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'CreatedBy(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedByImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of CreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedByImplCopyWith<_$CreatedByImpl> get copyWith =>
      __$$CreatedByImplCopyWithImpl<_$CreatedByImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatedByImplToJson(this);
  }
}

abstract class _CreatedBy implements CreatedBy {
  const factory _CreatedBy({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$CreatedByImpl;

  factory _CreatedBy.fromJson(Map<String, dynamic> json) =
      _$CreatedByImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of CreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedByImplCopyWith<_$CreatedByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
