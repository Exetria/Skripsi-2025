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
  @JsonKey(name: 'created_by')
  CreatedBy? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'visits')
  Visits? get visits => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_date')
  VisitDate? get visitDate => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'created_by') CreatedBy? createdBy,
    @JsonKey(name: 'visits') Visits? visits,
    @JsonKey(name: 'visit_date') VisitDate? visitDate,
  });

  $CreatedByCopyWith<$Res>? get createdBy;
  $VisitsCopyWith<$Res>? get visits;
  $VisitDateCopyWith<$Res>? get visitDate;
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
    Object? createdBy = freezed,
    Object? visits = freezed,
    Object? visitDate = freezed,
  }) {
    return _then(
      _value.copyWith(
            createdBy:
                freezed == createdBy
                    ? _value.createdBy
                    : createdBy // ignore: cast_nullable_to_non_nullable
                        as CreatedBy?,
            visits:
                freezed == visits
                    ? _value.visits
                    : visits // ignore: cast_nullable_to_non_nullable
                        as Visits?,
            visitDate:
                freezed == visitDate
                    ? _value.visitDate
                    : visitDate // ignore: cast_nullable_to_non_nullable
                        as VisitDate?,
          )
          as $Val,
    );
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
  $VisitsCopyWith<$Res>? get visits {
    if (_value.visits == null) {
      return null;
    }

    return $VisitsCopyWith<$Res>(_value.visits!, (value) {
      return _then(_value.copyWith(visits: value) as $Val);
    });
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
    @JsonKey(name: 'created_by') CreatedBy? createdBy,
    @JsonKey(name: 'visits') Visits? visits,
    @JsonKey(name: 'visit_date') VisitDate? visitDate,
  });

  @override
  $CreatedByCopyWith<$Res>? get createdBy;
  @override
  $VisitsCopyWith<$Res>? get visits;
  @override
  $VisitDateCopyWith<$Res>? get visitDate;
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
    Object? createdBy = freezed,
    Object? visits = freezed,
    Object? visitDate = freezed,
  }) {
    return _then(
      _$FieldsImpl(
        createdBy:
            freezed == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                    as CreatedBy?,
        visits:
            freezed == visits
                ? _value.visits
                : visits // ignore: cast_nullable_to_non_nullable
                    as Visits?,
        visitDate:
            freezed == visitDate
                ? _value.visitDate
                : visitDate // ignore: cast_nullable_to_non_nullable
                    as VisitDate?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsImpl implements _Fields {
  const _$FieldsImpl({
    @JsonKey(name: 'created_by') this.createdBy,
    @JsonKey(name: 'visits') this.visits,
    @JsonKey(name: 'visit_date') this.visitDate,
  });

  factory _$FieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsImplFromJson(json);

  @override
  @JsonKey(name: 'created_by')
  final CreatedBy? createdBy;
  @override
  @JsonKey(name: 'visits')
  final Visits? visits;
  @override
  @JsonKey(name: 'visit_date')
  final VisitDate? visitDate;

  @override
  String toString() {
    return 'Fields(createdBy: $createdBy, visits: $visits, visitDate: $visitDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsImpl &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.visits, visits) || other.visits == visits) &&
            (identical(other.visitDate, visitDate) ||
                other.visitDate == visitDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdBy, visits, visitDate);

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
    @JsonKey(name: 'created_by') final CreatedBy? createdBy,
    @JsonKey(name: 'visits') final Visits? visits,
    @JsonKey(name: 'visit_date') final VisitDate? visitDate,
  }) = _$FieldsImpl;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$FieldsImpl.fromJson;

  @override
  @JsonKey(name: 'created_by')
  CreatedBy? get createdBy;
  @override
  @JsonKey(name: 'visits')
  Visits? get visits;
  @override
  @JsonKey(name: 'visit_date')
  VisitDate? get visitDate;

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldsImplCopyWith<_$FieldsImpl> get copyWith =>
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

Visits _$VisitsFromJson(Map<String, dynamic> json) {
  return _Visits.fromJson(json);
}

/// @nodoc
mixin _$Visits {
  @JsonKey(name: 'arrayValue')
  ArrayValue? get arrayValue => throw _privateConstructorUsedError;

  /// Serializes this Visits to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Visits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisitsCopyWith<Visits> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitsCopyWith<$Res> {
  factory $VisitsCopyWith(Visits value, $Res Function(Visits) then) =
      _$VisitsCopyWithImpl<$Res, Visits>;
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') ArrayValue? arrayValue});

  $ArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class _$VisitsCopyWithImpl<$Res, $Val extends Visits>
    implements $VisitsCopyWith<$Res> {
  _$VisitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Visits
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

  /// Create a copy of Visits
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
abstract class _$$VisitsImplCopyWith<$Res> implements $VisitsCopyWith<$Res> {
  factory _$$VisitsImplCopyWith(
    _$VisitsImpl value,
    $Res Function(_$VisitsImpl) then,
  ) = __$$VisitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') ArrayValue? arrayValue});

  @override
  $ArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class __$$VisitsImplCopyWithImpl<$Res>
    extends _$VisitsCopyWithImpl<$Res, _$VisitsImpl>
    implements _$$VisitsImplCopyWith<$Res> {
  __$$VisitsImplCopyWithImpl(
    _$VisitsImpl _value,
    $Res Function(_$VisitsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Visits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? arrayValue = freezed}) {
    return _then(
      _$VisitsImpl(
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
class _$VisitsImpl implements _Visits {
  const _$VisitsImpl({@JsonKey(name: 'arrayValue') this.arrayValue});

  factory _$VisitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisitsImplFromJson(json);

  @override
  @JsonKey(name: 'arrayValue')
  final ArrayValue? arrayValue;

  @override
  String toString() {
    return 'Visits(arrayValue: $arrayValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitsImpl &&
            (identical(other.arrayValue, arrayValue) ||
                other.arrayValue == arrayValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arrayValue);

  /// Create a copy of Visits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitsImplCopyWith<_$VisitsImpl> get copyWith =>
      __$$VisitsImplCopyWithImpl<_$VisitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisitsImplToJson(this);
  }
}

abstract class _Visits implements Visits {
  const factory _Visits({
    @JsonKey(name: 'arrayValue') final ArrayValue? arrayValue,
  }) = _$VisitsImpl;

  factory _Visits.fromJson(Map<String, dynamic> json) = _$VisitsImpl.fromJson;

  @override
  @JsonKey(name: 'arrayValue')
  ArrayValue? get arrayValue;

  /// Create a copy of Visits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisitsImplCopyWith<_$VisitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArrayValue _$ArrayValueFromJson(Map<String, dynamic> json) {
  return _ArrayValue.fromJson(json);
}

/// @nodoc
mixin _$ArrayValue {
  @JsonKey(name: 'values')
  List<Value>? get values => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'values') List<Value>? values});
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
                        as List<Value>?,
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
  $Res call({@JsonKey(name: 'values') List<Value>? values});
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
                    as List<Value>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ArrayValueImpl implements _ArrayValue {
  const _$ArrayValueImpl({@JsonKey(name: 'values') final List<Value>? values})
    : _values = values;

  factory _$ArrayValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArrayValueImplFromJson(json);

  final List<Value>? _values;
  @override
  @JsonKey(name: 'values')
  List<Value>? get values {
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
    @JsonKey(name: 'values') final List<Value>? values,
  }) = _$ArrayValueImpl;

  factory _ArrayValue.fromJson(Map<String, dynamic> json) =
      _$ArrayValueImpl.fromJson;

  @override
  @JsonKey(name: 'values')
  List<Value>? get values;

  /// Create a copy of ArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArrayValueImplCopyWith<_$ArrayValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Value _$ValueFromJson(Map<String, dynamic> json) {
  return _Value.fromJson(json);
}

/// @nodoc
mixin _$Value {
  @JsonKey(name: 'mapValue')
  ValueMapValue? get mapValue => throw _privateConstructorUsedError;

  /// Serializes this Value to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Value
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValueCopyWith<Value> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueCopyWith<$Res> {
  factory $ValueCopyWith(Value value, $Res Function(Value) then) =
      _$ValueCopyWithImpl<$Res, Value>;
  @useResult
  $Res call({@JsonKey(name: 'mapValue') ValueMapValue? mapValue});

  $ValueMapValueCopyWith<$Res>? get mapValue;
}

/// @nodoc
class _$ValueCopyWithImpl<$Res, $Val extends Value>
    implements $ValueCopyWith<$Res> {
  _$ValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Value
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
                        as ValueMapValue?,
          )
          as $Val,
    );
  }

  /// Create a copy of Value
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueMapValueCopyWith<$Res>? get mapValue {
    if (_value.mapValue == null) {
      return null;
    }

    return $ValueMapValueCopyWith<$Res>(_value.mapValue!, (value) {
      return _then(_value.copyWith(mapValue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValueImplCopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory _$$ValueImplCopyWith(
    _$ValueImpl value,
    $Res Function(_$ValueImpl) then,
  ) = __$$ValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'mapValue') ValueMapValue? mapValue});

  @override
  $ValueMapValueCopyWith<$Res>? get mapValue;
}

/// @nodoc
class __$$ValueImplCopyWithImpl<$Res>
    extends _$ValueCopyWithImpl<$Res, _$ValueImpl>
    implements _$$ValueImplCopyWith<$Res> {
  __$$ValueImplCopyWithImpl(
    _$ValueImpl _value,
    $Res Function(_$ValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Value
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? mapValue = freezed}) {
    return _then(
      _$ValueImpl(
        mapValue:
            freezed == mapValue
                ? _value.mapValue
                : mapValue // ignore: cast_nullable_to_non_nullable
                    as ValueMapValue?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ValueImpl implements _Value {
  const _$ValueImpl({@JsonKey(name: 'mapValue') this.mapValue});

  factory _$ValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueImplFromJson(json);

  @override
  @JsonKey(name: 'mapValue')
  final ValueMapValue? mapValue;

  @override
  String toString() {
    return 'Value(mapValue: $mapValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueImpl &&
            (identical(other.mapValue, mapValue) ||
                other.mapValue == mapValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mapValue);

  /// Create a copy of Value
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
      __$$ValueImplCopyWithImpl<_$ValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValueImplToJson(this);
  }
}

abstract class _Value implements Value {
  const factory _Value({
    @JsonKey(name: 'mapValue') final ValueMapValue? mapValue,
  }) = _$ValueImpl;

  factory _Value.fromJson(Map<String, dynamic> json) = _$ValueImpl.fromJson;

  @override
  @JsonKey(name: 'mapValue')
  ValueMapValue? get mapValue;

  /// Create a copy of Value
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValueMapValue _$ValueMapValueFromJson(Map<String, dynamic> json) {
  return _ValueMapValue.fromJson(json);
}

/// @nodoc
mixin _$ValueMapValue {
  @JsonKey(name: 'fields')
  PurpleFields? get fields => throw _privateConstructorUsedError;

  /// Serializes this ValueMapValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValueMapValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValueMapValueCopyWith<ValueMapValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueMapValueCopyWith<$Res> {
  factory $ValueMapValueCopyWith(
    ValueMapValue value,
    $Res Function(ValueMapValue) then,
  ) = _$ValueMapValueCopyWithImpl<$Res, ValueMapValue>;
  @useResult
  $Res call({@JsonKey(name: 'fields') PurpleFields? fields});

  $PurpleFieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class _$ValueMapValueCopyWithImpl<$Res, $Val extends ValueMapValue>
    implements $ValueMapValueCopyWith<$Res> {
  _$ValueMapValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValueMapValue
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
                        as PurpleFields?,
          )
          as $Val,
    );
  }

  /// Create a copy of ValueMapValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PurpleFieldsCopyWith<$Res>? get fields {
    if (_value.fields == null) {
      return null;
    }

    return $PurpleFieldsCopyWith<$Res>(_value.fields!, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValueMapValueImplCopyWith<$Res>
    implements $ValueMapValueCopyWith<$Res> {
  factory _$$ValueMapValueImplCopyWith(
    _$ValueMapValueImpl value,
    $Res Function(_$ValueMapValueImpl) then,
  ) = __$$ValueMapValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'fields') PurpleFields? fields});

  @override
  $PurpleFieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class __$$ValueMapValueImplCopyWithImpl<$Res>
    extends _$ValueMapValueCopyWithImpl<$Res, _$ValueMapValueImpl>
    implements _$$ValueMapValueImplCopyWith<$Res> {
  __$$ValueMapValueImplCopyWithImpl(
    _$ValueMapValueImpl _value,
    $Res Function(_$ValueMapValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ValueMapValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fields = freezed}) {
    return _then(
      _$ValueMapValueImpl(
        fields:
            freezed == fields
                ? _value.fields
                : fields // ignore: cast_nullable_to_non_nullable
                    as PurpleFields?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ValueMapValueImpl implements _ValueMapValue {
  const _$ValueMapValueImpl({@JsonKey(name: 'fields') this.fields});

  factory _$ValueMapValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueMapValueImplFromJson(json);

  @override
  @JsonKey(name: 'fields')
  final PurpleFields? fields;

  @override
  String toString() {
    return 'ValueMapValue(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueMapValueImpl &&
            (identical(other.fields, fields) || other.fields == fields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fields);

  /// Create a copy of ValueMapValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueMapValueImplCopyWith<_$ValueMapValueImpl> get copyWith =>
      __$$ValueMapValueImplCopyWithImpl<_$ValueMapValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValueMapValueImplToJson(this);
  }
}

abstract class _ValueMapValue implements ValueMapValue {
  const factory _ValueMapValue({
    @JsonKey(name: 'fields') final PurpleFields? fields,
  }) = _$ValueMapValueImpl;

  factory _ValueMapValue.fromJson(Map<String, dynamic> json) =
      _$ValueMapValueImpl.fromJson;

  @override
  @JsonKey(name: 'fields')
  PurpleFields? get fields;

  /// Create a copy of ValueMapValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValueMapValueImplCopyWith<_$ValueMapValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurpleFields _$PurpleFieldsFromJson(Map<String, dynamic> json) {
  return _PurpleFields.fromJson(json);
}

/// @nodoc
mixin _$PurpleFields {
  @JsonKey(name: 'customer_id')
  CreatedBy? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_purpose')
  CreatedBy? get visitPurpose => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_status')
  VisitStatus? get visitStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_notes')
  CreatedBy? get visitNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_photo_url')
  VisitPhotoUrl? get visitPhotoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  Location? get location => throw _privateConstructorUsedError;

  /// Serializes this PurpleFields to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurpleFieldsCopyWith<PurpleFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurpleFieldsCopyWith<$Res> {
  factory $PurpleFieldsCopyWith(
    PurpleFields value,
    $Res Function(PurpleFields) then,
  ) = _$PurpleFieldsCopyWithImpl<$Res, PurpleFields>;
  @useResult
  $Res call({
    @JsonKey(name: 'customer_id') CreatedBy? customerId,
    @JsonKey(name: 'visit_purpose') CreatedBy? visitPurpose,
    @JsonKey(name: 'visit_status') VisitStatus? visitStatus,
    @JsonKey(name: 'visit_notes') CreatedBy? visitNotes,
    @JsonKey(name: 'visit_photo_url') VisitPhotoUrl? visitPhotoUrl,
    @JsonKey(name: 'location') Location? location,
  });

  $CreatedByCopyWith<$Res>? get customerId;
  $CreatedByCopyWith<$Res>? get visitPurpose;
  $VisitStatusCopyWith<$Res>? get visitStatus;
  $CreatedByCopyWith<$Res>? get visitNotes;
  $VisitPhotoUrlCopyWith<$Res>? get visitPhotoUrl;
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$PurpleFieldsCopyWithImpl<$Res, $Val extends PurpleFields>
    implements $PurpleFieldsCopyWith<$Res> {
  _$PurpleFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
    Object? visitPurpose = freezed,
    Object? visitStatus = freezed,
    Object? visitNotes = freezed,
    Object? visitPhotoUrl = freezed,
    Object? location = freezed,
  }) {
    return _then(
      _value.copyWith(
            customerId:
                freezed == customerId
                    ? _value.customerId
                    : customerId // ignore: cast_nullable_to_non_nullable
                        as CreatedBy?,
            visitPurpose:
                freezed == visitPurpose
                    ? _value.visitPurpose
                    : visitPurpose // ignore: cast_nullable_to_non_nullable
                        as CreatedBy?,
            visitStatus:
                freezed == visitStatus
                    ? _value.visitStatus
                    : visitStatus // ignore: cast_nullable_to_non_nullable
                        as VisitStatus?,
            visitNotes:
                freezed == visitNotes
                    ? _value.visitNotes
                    : visitNotes // ignore: cast_nullable_to_non_nullable
                        as CreatedBy?,
            visitPhotoUrl:
                freezed == visitPhotoUrl
                    ? _value.visitPhotoUrl
                    : visitPhotoUrl // ignore: cast_nullable_to_non_nullable
                        as VisitPhotoUrl?,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as Location?,
          )
          as $Val,
    );
  }

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<$Res>? get customerId {
    if (_value.customerId == null) {
      return null;
    }

    return $CreatedByCopyWith<$Res>(_value.customerId!, (value) {
      return _then(_value.copyWith(customerId: value) as $Val);
    });
  }

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<$Res>? get visitPurpose {
    if (_value.visitPurpose == null) {
      return null;
    }

    return $CreatedByCopyWith<$Res>(_value.visitPurpose!, (value) {
      return _then(_value.copyWith(visitPurpose: value) as $Val);
    });
  }

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VisitStatusCopyWith<$Res>? get visitStatus {
    if (_value.visitStatus == null) {
      return null;
    }

    return $VisitStatusCopyWith<$Res>(_value.visitStatus!, (value) {
      return _then(_value.copyWith(visitStatus: value) as $Val);
    });
  }

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreatedByCopyWith<$Res>? get visitNotes {
    if (_value.visitNotes == null) {
      return null;
    }

    return $CreatedByCopyWith<$Res>(_value.visitNotes!, (value) {
      return _then(_value.copyWith(visitNotes: value) as $Val);
    });
  }

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VisitPhotoUrlCopyWith<$Res>? get visitPhotoUrl {
    if (_value.visitPhotoUrl == null) {
      return null;
    }

    return $VisitPhotoUrlCopyWith<$Res>(_value.visitPhotoUrl!, (value) {
      return _then(_value.copyWith(visitPhotoUrl: value) as $Val);
    });
  }

  /// Create a copy of PurpleFields
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
abstract class _$$PurpleFieldsImplCopyWith<$Res>
    implements $PurpleFieldsCopyWith<$Res> {
  factory _$$PurpleFieldsImplCopyWith(
    _$PurpleFieldsImpl value,
    $Res Function(_$PurpleFieldsImpl) then,
  ) = __$$PurpleFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'customer_id') CreatedBy? customerId,
    @JsonKey(name: 'visit_purpose') CreatedBy? visitPurpose,
    @JsonKey(name: 'visit_status') VisitStatus? visitStatus,
    @JsonKey(name: 'visit_notes') CreatedBy? visitNotes,
    @JsonKey(name: 'visit_photo_url') VisitPhotoUrl? visitPhotoUrl,
    @JsonKey(name: 'location') Location? location,
  });

  @override
  $CreatedByCopyWith<$Res>? get customerId;
  @override
  $CreatedByCopyWith<$Res>? get visitPurpose;
  @override
  $VisitStatusCopyWith<$Res>? get visitStatus;
  @override
  $CreatedByCopyWith<$Res>? get visitNotes;
  @override
  $VisitPhotoUrlCopyWith<$Res>? get visitPhotoUrl;
  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$PurpleFieldsImplCopyWithImpl<$Res>
    extends _$PurpleFieldsCopyWithImpl<$Res, _$PurpleFieldsImpl>
    implements _$$PurpleFieldsImplCopyWith<$Res> {
  __$$PurpleFieldsImplCopyWithImpl(
    _$PurpleFieldsImpl _value,
    $Res Function(_$PurpleFieldsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
    Object? visitPurpose = freezed,
    Object? visitStatus = freezed,
    Object? visitNotes = freezed,
    Object? visitPhotoUrl = freezed,
    Object? location = freezed,
  }) {
    return _then(
      _$PurpleFieldsImpl(
        customerId:
            freezed == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                    as CreatedBy?,
        visitPurpose:
            freezed == visitPurpose
                ? _value.visitPurpose
                : visitPurpose // ignore: cast_nullable_to_non_nullable
                    as CreatedBy?,
        visitStatus:
            freezed == visitStatus
                ? _value.visitStatus
                : visitStatus // ignore: cast_nullable_to_non_nullable
                    as VisitStatus?,
        visitNotes:
            freezed == visitNotes
                ? _value.visitNotes
                : visitNotes // ignore: cast_nullable_to_non_nullable
                    as CreatedBy?,
        visitPhotoUrl:
            freezed == visitPhotoUrl
                ? _value.visitPhotoUrl
                : visitPhotoUrl // ignore: cast_nullable_to_non_nullable
                    as VisitPhotoUrl?,
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
class _$PurpleFieldsImpl implements _PurpleFields {
  const _$PurpleFieldsImpl({
    @JsonKey(name: 'customer_id') this.customerId,
    @JsonKey(name: 'visit_purpose') this.visitPurpose,
    @JsonKey(name: 'visit_status') this.visitStatus,
    @JsonKey(name: 'visit_notes') this.visitNotes,
    @JsonKey(name: 'visit_photo_url') this.visitPhotoUrl,
    @JsonKey(name: 'location') this.location,
  });

  factory _$PurpleFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurpleFieldsImplFromJson(json);

  @override
  @JsonKey(name: 'customer_id')
  final CreatedBy? customerId;
  @override
  @JsonKey(name: 'visit_purpose')
  final CreatedBy? visitPurpose;
  @override
  @JsonKey(name: 'visit_status')
  final VisitStatus? visitStatus;
  @override
  @JsonKey(name: 'visit_notes')
  final CreatedBy? visitNotes;
  @override
  @JsonKey(name: 'visit_photo_url')
  final VisitPhotoUrl? visitPhotoUrl;
  @override
  @JsonKey(name: 'location')
  final Location? location;

  @override
  String toString() {
    return 'PurpleFields(customerId: $customerId, visitPurpose: $visitPurpose, visitStatus: $visitStatus, visitNotes: $visitNotes, visitPhotoUrl: $visitPhotoUrl, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurpleFieldsImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.visitPurpose, visitPurpose) ||
                other.visitPurpose == visitPurpose) &&
            (identical(other.visitStatus, visitStatus) ||
                other.visitStatus == visitStatus) &&
            (identical(other.visitNotes, visitNotes) ||
                other.visitNotes == visitNotes) &&
            (identical(other.visitPhotoUrl, visitPhotoUrl) ||
                other.visitPhotoUrl == visitPhotoUrl) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    customerId,
    visitPurpose,
    visitStatus,
    visitNotes,
    visitPhotoUrl,
    location,
  );

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurpleFieldsImplCopyWith<_$PurpleFieldsImpl> get copyWith =>
      __$$PurpleFieldsImplCopyWithImpl<_$PurpleFieldsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurpleFieldsImplToJson(this);
  }
}

abstract class _PurpleFields implements PurpleFields {
  const factory _PurpleFields({
    @JsonKey(name: 'customer_id') final CreatedBy? customerId,
    @JsonKey(name: 'visit_purpose') final CreatedBy? visitPurpose,
    @JsonKey(name: 'visit_status') final VisitStatus? visitStatus,
    @JsonKey(name: 'visit_notes') final CreatedBy? visitNotes,
    @JsonKey(name: 'visit_photo_url') final VisitPhotoUrl? visitPhotoUrl,
    @JsonKey(name: 'location') final Location? location,
  }) = _$PurpleFieldsImpl;

  factory _PurpleFields.fromJson(Map<String, dynamic> json) =
      _$PurpleFieldsImpl.fromJson;

  @override
  @JsonKey(name: 'customer_id')
  CreatedBy? get customerId;
  @override
  @JsonKey(name: 'visit_purpose')
  CreatedBy? get visitPurpose;
  @override
  @JsonKey(name: 'visit_status')
  VisitStatus? get visitStatus;
  @override
  @JsonKey(name: 'visit_notes')
  CreatedBy? get visitNotes;
  @override
  @JsonKey(name: 'visit_photo_url')
  VisitPhotoUrl? get visitPhotoUrl;
  @override
  @JsonKey(name: 'location')
  Location? get location;

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurpleFieldsImplCopyWith<_$PurpleFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: 'mapValue')
  LocationMapValue? get mapValue => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'mapValue') LocationMapValue? mapValue});

  $LocationMapValueCopyWith<$Res>? get mapValue;
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
                        as LocationMapValue?,
          )
          as $Val,
    );
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationMapValueCopyWith<$Res>? get mapValue {
    if (_value.mapValue == null) {
      return null;
    }

    return $LocationMapValueCopyWith<$Res>(_value.mapValue!, (value) {
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
  $Res call({@JsonKey(name: 'mapValue') LocationMapValue? mapValue});

  @override
  $LocationMapValueCopyWith<$Res>? get mapValue;
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
                    as LocationMapValue?,
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
  final LocationMapValue? mapValue;

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
    @JsonKey(name: 'mapValue') final LocationMapValue? mapValue,
  }) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  @JsonKey(name: 'mapValue')
  LocationMapValue? get mapValue;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationMapValue _$LocationMapValueFromJson(Map<String, dynamic> json) {
  return _LocationMapValue.fromJson(json);
}

/// @nodoc
mixin _$LocationMapValue {
  @JsonKey(name: 'fields')
  FluffyFields? get fields => throw _privateConstructorUsedError;

  /// Serializes this LocationMapValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationMapValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationMapValueCopyWith<LocationMapValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationMapValueCopyWith<$Res> {
  factory $LocationMapValueCopyWith(
    LocationMapValue value,
    $Res Function(LocationMapValue) then,
  ) = _$LocationMapValueCopyWithImpl<$Res, LocationMapValue>;
  @useResult
  $Res call({@JsonKey(name: 'fields') FluffyFields? fields});

  $FluffyFieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class _$LocationMapValueCopyWithImpl<$Res, $Val extends LocationMapValue>
    implements $LocationMapValueCopyWith<$Res> {
  _$LocationMapValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationMapValue
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
                        as FluffyFields?,
          )
          as $Val,
    );
  }

  /// Create a copy of LocationMapValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FluffyFieldsCopyWith<$Res>? get fields {
    if (_value.fields == null) {
      return null;
    }

    return $FluffyFieldsCopyWith<$Res>(_value.fields!, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationMapValueImplCopyWith<$Res>
    implements $LocationMapValueCopyWith<$Res> {
  factory _$$LocationMapValueImplCopyWith(
    _$LocationMapValueImpl value,
    $Res Function(_$LocationMapValueImpl) then,
  ) = __$$LocationMapValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'fields') FluffyFields? fields});

  @override
  $FluffyFieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class __$$LocationMapValueImplCopyWithImpl<$Res>
    extends _$LocationMapValueCopyWithImpl<$Res, _$LocationMapValueImpl>
    implements _$$LocationMapValueImplCopyWith<$Res> {
  __$$LocationMapValueImplCopyWithImpl(
    _$LocationMapValueImpl _value,
    $Res Function(_$LocationMapValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationMapValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fields = freezed}) {
    return _then(
      _$LocationMapValueImpl(
        fields:
            freezed == fields
                ? _value.fields
                : fields // ignore: cast_nullable_to_non_nullable
                    as FluffyFields?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationMapValueImpl implements _LocationMapValue {
  const _$LocationMapValueImpl({@JsonKey(name: 'fields') this.fields});

  factory _$LocationMapValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationMapValueImplFromJson(json);

  @override
  @JsonKey(name: 'fields')
  final FluffyFields? fields;

  @override
  String toString() {
    return 'LocationMapValue(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationMapValueImpl &&
            (identical(other.fields, fields) || other.fields == fields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fields);

  /// Create a copy of LocationMapValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationMapValueImplCopyWith<_$LocationMapValueImpl> get copyWith =>
      __$$LocationMapValueImplCopyWithImpl<_$LocationMapValueImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationMapValueImplToJson(this);
  }
}

abstract class _LocationMapValue implements LocationMapValue {
  const factory _LocationMapValue({
    @JsonKey(name: 'fields') final FluffyFields? fields,
  }) = _$LocationMapValueImpl;

  factory _LocationMapValue.fromJson(Map<String, dynamic> json) =
      _$LocationMapValueImpl.fromJson;

  @override
  @JsonKey(name: 'fields')
  FluffyFields? get fields;

  /// Create a copy of LocationMapValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationMapValueImplCopyWith<_$LocationMapValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FluffyFields _$FluffyFieldsFromJson(Map<String, dynamic> json) {
  return _FluffyFields.fromJson(json);
}

/// @nodoc
mixin _$FluffyFields {
  @JsonKey(name: 'latitude')
  Itude? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  Itude? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'accuracy')
  Accuracy? get accuracy => throw _privateConstructorUsedError;

  /// Serializes this FluffyFields to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FluffyFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FluffyFieldsCopyWith<FluffyFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FluffyFieldsCopyWith<$Res> {
  factory $FluffyFieldsCopyWith(
    FluffyFields value,
    $Res Function(FluffyFields) then,
  ) = _$FluffyFieldsCopyWithImpl<$Res, FluffyFields>;
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
class _$FluffyFieldsCopyWithImpl<$Res, $Val extends FluffyFields>
    implements $FluffyFieldsCopyWith<$Res> {
  _$FluffyFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FluffyFields
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

  /// Create a copy of FluffyFields
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

  /// Create a copy of FluffyFields
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

  /// Create a copy of FluffyFields
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
abstract class _$$FluffyFieldsImplCopyWith<$Res>
    implements $FluffyFieldsCopyWith<$Res> {
  factory _$$FluffyFieldsImplCopyWith(
    _$FluffyFieldsImpl value,
    $Res Function(_$FluffyFieldsImpl) then,
  ) = __$$FluffyFieldsImplCopyWithImpl<$Res>;
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
class __$$FluffyFieldsImplCopyWithImpl<$Res>
    extends _$FluffyFieldsCopyWithImpl<$Res, _$FluffyFieldsImpl>
    implements _$$FluffyFieldsImplCopyWith<$Res> {
  __$$FluffyFieldsImplCopyWithImpl(
    _$FluffyFieldsImpl _value,
    $Res Function(_$FluffyFieldsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FluffyFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? accuracy = freezed,
  }) {
    return _then(
      _$FluffyFieldsImpl(
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
class _$FluffyFieldsImpl implements _FluffyFields {
  const _$FluffyFieldsImpl({
    @JsonKey(name: 'latitude') this.latitude,
    @JsonKey(name: 'longitude') this.longitude,
    @JsonKey(name: 'accuracy') this.accuracy,
  });

  factory _$FluffyFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FluffyFieldsImplFromJson(json);

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
    return 'FluffyFields(latitude: $latitude, longitude: $longitude, accuracy: $accuracy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FluffyFieldsImpl &&
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

  /// Create a copy of FluffyFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FluffyFieldsImplCopyWith<_$FluffyFieldsImpl> get copyWith =>
      __$$FluffyFieldsImplCopyWithImpl<_$FluffyFieldsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FluffyFieldsImplToJson(this);
  }
}

abstract class _FluffyFields implements FluffyFields {
  const factory _FluffyFields({
    @JsonKey(name: 'latitude') final Itude? latitude,
    @JsonKey(name: 'longitude') final Itude? longitude,
    @JsonKey(name: 'accuracy') final Accuracy? accuracy,
  }) = _$FluffyFieldsImpl;

  factory _FluffyFields.fromJson(Map<String, dynamic> json) =
      _$FluffyFieldsImpl.fromJson;

  @override
  @JsonKey(name: 'latitude')
  Itude? get latitude;
  @override
  @JsonKey(name: 'longitude')
  Itude? get longitude;
  @override
  @JsonKey(name: 'accuracy')
  Accuracy? get accuracy;

  /// Create a copy of FluffyFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FluffyFieldsImplCopyWith<_$FluffyFieldsImpl> get copyWith =>
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

VisitPhotoUrl _$VisitPhotoUrlFromJson(Map<String, dynamic> json) {
  return _VisitPhotoUrl.fromJson(json);
}

/// @nodoc
mixin _$VisitPhotoUrl {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this VisitPhotoUrl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisitPhotoUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisitPhotoUrlCopyWith<VisitPhotoUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitPhotoUrlCopyWith<$Res> {
  factory $VisitPhotoUrlCopyWith(
    VisitPhotoUrl value,
    $Res Function(VisitPhotoUrl) then,
  ) = _$VisitPhotoUrlCopyWithImpl<$Res, VisitPhotoUrl>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$VisitPhotoUrlCopyWithImpl<$Res, $Val extends VisitPhotoUrl>
    implements $VisitPhotoUrlCopyWith<$Res> {
  _$VisitPhotoUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisitPhotoUrl
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
abstract class _$$VisitPhotoUrlImplCopyWith<$Res>
    implements $VisitPhotoUrlCopyWith<$Res> {
  factory _$$VisitPhotoUrlImplCopyWith(
    _$VisitPhotoUrlImpl value,
    $Res Function(_$VisitPhotoUrlImpl) then,
  ) = __$$VisitPhotoUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$VisitPhotoUrlImplCopyWithImpl<$Res>
    extends _$VisitPhotoUrlCopyWithImpl<$Res, _$VisitPhotoUrlImpl>
    implements _$$VisitPhotoUrlImplCopyWith<$Res> {
  __$$VisitPhotoUrlImplCopyWithImpl(
    _$VisitPhotoUrlImpl _value,
    $Res Function(_$VisitPhotoUrlImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VisitPhotoUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$VisitPhotoUrlImpl(
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
class _$VisitPhotoUrlImpl implements _VisitPhotoUrl {
  const _$VisitPhotoUrlImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$VisitPhotoUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisitPhotoUrlImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'VisitPhotoUrl(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitPhotoUrlImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of VisitPhotoUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitPhotoUrlImplCopyWith<_$VisitPhotoUrlImpl> get copyWith =>
      __$$VisitPhotoUrlImplCopyWithImpl<_$VisitPhotoUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisitPhotoUrlImplToJson(this);
  }
}

abstract class _VisitPhotoUrl implements VisitPhotoUrl {
  const factory _VisitPhotoUrl({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$VisitPhotoUrlImpl;

  factory _VisitPhotoUrl.fromJson(Map<String, dynamic> json) =
      _$VisitPhotoUrlImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of VisitPhotoUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisitPhotoUrlImplCopyWith<_$VisitPhotoUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VisitStatus _$VisitStatusFromJson(Map<String, dynamic> json) {
  return _VisitStatus.fromJson(json);
}

/// @nodoc
mixin _$VisitStatus {
  @JsonKey(name: 'integerValue')
  String? get integerValue => throw _privateConstructorUsedError;

  /// Serializes this VisitStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisitStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisitStatusCopyWith<VisitStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitStatusCopyWith<$Res> {
  factory $VisitStatusCopyWith(
    VisitStatus value,
    $Res Function(VisitStatus) then,
  ) = _$VisitStatusCopyWithImpl<$Res, VisitStatus>;
  @useResult
  $Res call({@JsonKey(name: 'integerValue') String? integerValue});
}

/// @nodoc
class _$VisitStatusCopyWithImpl<$Res, $Val extends VisitStatus>
    implements $VisitStatusCopyWith<$Res> {
  _$VisitStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisitStatus
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
abstract class _$$VisitStatusImplCopyWith<$Res>
    implements $VisitStatusCopyWith<$Res> {
  factory _$$VisitStatusImplCopyWith(
    _$VisitStatusImpl value,
    $Res Function(_$VisitStatusImpl) then,
  ) = __$$VisitStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'integerValue') String? integerValue});
}

/// @nodoc
class __$$VisitStatusImplCopyWithImpl<$Res>
    extends _$VisitStatusCopyWithImpl<$Res, _$VisitStatusImpl>
    implements _$$VisitStatusImplCopyWith<$Res> {
  __$$VisitStatusImplCopyWithImpl(
    _$VisitStatusImpl _value,
    $Res Function(_$VisitStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VisitStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? integerValue = freezed}) {
    return _then(
      _$VisitStatusImpl(
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
class _$VisitStatusImpl implements _VisitStatus {
  const _$VisitStatusImpl({@JsonKey(name: 'integerValue') this.integerValue});

  factory _$VisitStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisitStatusImplFromJson(json);

  @override
  @JsonKey(name: 'integerValue')
  final String? integerValue;

  @override
  String toString() {
    return 'VisitStatus(integerValue: $integerValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitStatusImpl &&
            (identical(other.integerValue, integerValue) ||
                other.integerValue == integerValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, integerValue);

  /// Create a copy of VisitStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitStatusImplCopyWith<_$VisitStatusImpl> get copyWith =>
      __$$VisitStatusImplCopyWithImpl<_$VisitStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisitStatusImplToJson(this);
  }
}

abstract class _VisitStatus implements VisitStatus {
  const factory _VisitStatus({
    @JsonKey(name: 'integerValue') final String? integerValue,
  }) = _$VisitStatusImpl;

  factory _VisitStatus.fromJson(Map<String, dynamic> json) =
      _$VisitStatusImpl.fromJson;

  @override
  @JsonKey(name: 'integerValue')
  String? get integerValue;

  /// Create a copy of VisitStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisitStatusImplCopyWith<_$VisitStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
