// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AnnouncementDomain _$AnnouncementDomainFromJson(Map<String, dynamic> json) {
  return _AnnouncementDomain.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementDomain {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'fields')
  Fields? get fields => throw _privateConstructorUsedError;
  @JsonKey(name: 'createTime')
  String? get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateTime')
  String? get updateTime => throw _privateConstructorUsedError;

  /// Serializes this AnnouncementDomain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnouncementDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementDomainCopyWith<AnnouncementDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementDomainCopyWith<$Res> {
  factory $AnnouncementDomainCopyWith(
    AnnouncementDomain value,
    $Res Function(AnnouncementDomain) then,
  ) = _$AnnouncementDomainCopyWithImpl<$Res, AnnouncementDomain>;
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
class _$AnnouncementDomainCopyWithImpl<$Res, $Val extends AnnouncementDomain>
    implements $AnnouncementDomainCopyWith<$Res> {
  _$AnnouncementDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementDomain
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

  /// Create a copy of AnnouncementDomain
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
abstract class _$$AnnouncementDomainImplCopyWith<$Res>
    implements $AnnouncementDomainCopyWith<$Res> {
  factory _$$AnnouncementDomainImplCopyWith(
    _$AnnouncementDomainImpl value,
    $Res Function(_$AnnouncementDomainImpl) then,
  ) = __$$AnnouncementDomainImplCopyWithImpl<$Res>;
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
class __$$AnnouncementDomainImplCopyWithImpl<$Res>
    extends _$AnnouncementDomainCopyWithImpl<$Res, _$AnnouncementDomainImpl>
    implements _$$AnnouncementDomainImplCopyWith<$Res> {
  __$$AnnouncementDomainImplCopyWithImpl(
    _$AnnouncementDomainImpl _value,
    $Res Function(_$AnnouncementDomainImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AnnouncementDomain
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
      _$AnnouncementDomainImpl(
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
class _$AnnouncementDomainImpl implements _AnnouncementDomain {
  const _$AnnouncementDomainImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'fields') this.fields,
    @JsonKey(name: 'createTime') this.createTime,
    @JsonKey(name: 'updateTime') this.updateTime,
  });

  factory _$AnnouncementDomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementDomainImplFromJson(json);

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
    return 'AnnouncementDomain(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementDomainImpl &&
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

  /// Create a copy of AnnouncementDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementDomainImplCopyWith<_$AnnouncementDomainImpl> get copyWith =>
      __$$AnnouncementDomainImplCopyWithImpl<_$AnnouncementDomainImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementDomainImplToJson(this);
  }
}

abstract class _AnnouncementDomain implements AnnouncementDomain {
  const factory _AnnouncementDomain({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'fields') final Fields? fields,
    @JsonKey(name: 'createTime') final String? createTime,
    @JsonKey(name: 'updateTime') final String? updateTime,
  }) = _$AnnouncementDomainImpl;

  factory _AnnouncementDomain.fromJson(Map<String, dynamic> json) =
      _$AnnouncementDomainImpl.fromJson;

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

  /// Create a copy of AnnouncementDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementDomainImplCopyWith<_$AnnouncementDomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return _Fields.fromJson(json);
}

/// @nodoc
mixin _$Fields {
  @JsonKey(name: 'title')
  Content? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  Content? get content => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'title') Content? title,
    @JsonKey(name: 'content') Content? content,
  });

  $ContentCopyWith<$Res>? get title;
  $ContentCopyWith<$Res>? get content;
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
  $Res call({Object? title = freezed, Object? content = freezed}) {
    return _then(
      _value.copyWith(
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as Content?,
            content:
                freezed == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as Content?,
          )
          as $Val,
    );
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get title {
    if (_value.title == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_value.title!, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get content {
    if (_value.content == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_value.content!, (value) {
      return _then(_value.copyWith(content: value) as $Val);
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
    @JsonKey(name: 'title') Content? title,
    @JsonKey(name: 'content') Content? content,
  });

  @override
  $ContentCopyWith<$Res>? get title;
  @override
  $ContentCopyWith<$Res>? get content;
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
  $Res call({Object? title = freezed, Object? content = freezed}) {
    return _then(
      _$FieldsImpl(
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as Content?,
        content:
            freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as Content?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsImpl implements _Fields {
  const _$FieldsImpl({
    @JsonKey(name: 'title') this.title,
    @JsonKey(name: 'content') this.content,
  });

  factory _$FieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final Content? title;
  @override
  @JsonKey(name: 'content')
  final Content? content;

  @override
  String toString() {
    return 'Fields(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

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
    @JsonKey(name: 'title') final Content? title,
    @JsonKey(name: 'content') final Content? content,
  }) = _$FieldsImpl;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$FieldsImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  Content? get title;
  @override
  @JsonKey(name: 'content')
  Content? get content;

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldsImplCopyWith<_$FieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
mixin _$Content {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this Content to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res, Content>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res, $Val extends Content>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Content
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
abstract class _$$ContentImplCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
    _$ContentImpl value,
    $Res Function(_$ContentImpl) then,
  ) = __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
    _$ContentImpl _value,
    $Res Function(_$ContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$ContentImpl(
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
class _$ContentImpl implements _Content {
  const _$ContentImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$ContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'Content(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentImplToJson(this);
  }
}

abstract class _Content implements Content {
  const factory _Content({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$ContentImpl;

  factory _Content.fromJson(Map<String, dynamic> json) = _$ContentImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
