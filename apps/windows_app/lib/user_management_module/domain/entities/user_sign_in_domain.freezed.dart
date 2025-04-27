// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_sign_in_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SignInDomain _$SignInDomainFromJson(Map<String, dynamic> json) {
  return _SignInDomain.fromJson(json);
}

/// @nodoc
mixin _$SignInDomain {
  @JsonKey(name: 'kind')
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'localId')
  String? get localId => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayName')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'idToken')
  String? get idToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'registered')
  bool? get registered => throw _privateConstructorUsedError;
  @JsonKey(name: 'refreshToken')
  String? get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiresIn')
  String? get expiresIn => throw _privateConstructorUsedError;

  /// Serializes this SignInDomain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignInDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInDomainCopyWith<SignInDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInDomainCopyWith<$Res> {
  factory $SignInDomainCopyWith(
    SignInDomain value,
    $Res Function(SignInDomain) then,
  ) = _$SignInDomainCopyWithImpl<$Res, SignInDomain>;
  @useResult
  $Res call({
    @JsonKey(name: 'kind') String? kind,
    @JsonKey(name: 'localId') String? localId,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'displayName') String? displayName,
    @JsonKey(name: 'idToken') String? idToken,
    @JsonKey(name: 'registered') bool? registered,
    @JsonKey(name: 'refreshToken') String? refreshToken,
    @JsonKey(name: 'expiresIn') String? expiresIn,
  });
}

/// @nodoc
class _$SignInDomainCopyWithImpl<$Res, $Val extends SignInDomain>
    implements $SignInDomainCopyWith<$Res> {
  _$SignInDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInDomain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? localId = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? idToken = freezed,
    Object? registered = freezed,
    Object? refreshToken = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(
      _value.copyWith(
            kind:
                freezed == kind
                    ? _value.kind
                    : kind // ignore: cast_nullable_to_non_nullable
                        as String?,
            localId:
                freezed == localId
                    ? _value.localId
                    : localId // ignore: cast_nullable_to_non_nullable
                        as String?,
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String?,
            displayName:
                freezed == displayName
                    ? _value.displayName
                    : displayName // ignore: cast_nullable_to_non_nullable
                        as String?,
            idToken:
                freezed == idToken
                    ? _value.idToken
                    : idToken // ignore: cast_nullable_to_non_nullable
                        as String?,
            registered:
                freezed == registered
                    ? _value.registered
                    : registered // ignore: cast_nullable_to_non_nullable
                        as bool?,
            refreshToken:
                freezed == refreshToken
                    ? _value.refreshToken
                    : refreshToken // ignore: cast_nullable_to_non_nullable
                        as String?,
            expiresIn:
                freezed == expiresIn
                    ? _value.expiresIn
                    : expiresIn // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignInDomainImplCopyWith<$Res>
    implements $SignInDomainCopyWith<$Res> {
  factory _$$SignInDomainImplCopyWith(
    _$SignInDomainImpl value,
    $Res Function(_$SignInDomainImpl) then,
  ) = __$$SignInDomainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'kind') String? kind,
    @JsonKey(name: 'localId') String? localId,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'displayName') String? displayName,
    @JsonKey(name: 'idToken') String? idToken,
    @JsonKey(name: 'registered') bool? registered,
    @JsonKey(name: 'refreshToken') String? refreshToken,
    @JsonKey(name: 'expiresIn') String? expiresIn,
  });
}

/// @nodoc
class __$$SignInDomainImplCopyWithImpl<$Res>
    extends _$SignInDomainCopyWithImpl<$Res, _$SignInDomainImpl>
    implements _$$SignInDomainImplCopyWith<$Res> {
  __$$SignInDomainImplCopyWithImpl(
    _$SignInDomainImpl _value,
    $Res Function(_$SignInDomainImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignInDomain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? localId = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? idToken = freezed,
    Object? registered = freezed,
    Object? refreshToken = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(
      _$SignInDomainImpl(
        kind:
            freezed == kind
                ? _value.kind
                : kind // ignore: cast_nullable_to_non_nullable
                    as String?,
        localId:
            freezed == localId
                ? _value.localId
                : localId // ignore: cast_nullable_to_non_nullable
                    as String?,
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
        displayName:
            freezed == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                    as String?,
        idToken:
            freezed == idToken
                ? _value.idToken
                : idToken // ignore: cast_nullable_to_non_nullable
                    as String?,
        registered:
            freezed == registered
                ? _value.registered
                : registered // ignore: cast_nullable_to_non_nullable
                    as bool?,
        refreshToken:
            freezed == refreshToken
                ? _value.refreshToken
                : refreshToken // ignore: cast_nullable_to_non_nullable
                    as String?,
        expiresIn:
            freezed == expiresIn
                ? _value.expiresIn
                : expiresIn // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInDomainImpl implements _SignInDomain {
  const _$SignInDomainImpl({
    @JsonKey(name: 'kind') this.kind,
    @JsonKey(name: 'localId') this.localId,
    @JsonKey(name: 'email') this.email,
    @JsonKey(name: 'displayName') this.displayName,
    @JsonKey(name: 'idToken') this.idToken,
    @JsonKey(name: 'registered') this.registered,
    @JsonKey(name: 'refreshToken') this.refreshToken,
    @JsonKey(name: 'expiresIn') this.expiresIn,
  });

  factory _$SignInDomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInDomainImplFromJson(json);

  @override
  @JsonKey(name: 'kind')
  final String? kind;
  @override
  @JsonKey(name: 'localId')
  final String? localId;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'displayName')
  final String? displayName;
  @override
  @JsonKey(name: 'idToken')
  final String? idToken;
  @override
  @JsonKey(name: 'registered')
  final bool? registered;
  @override
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  @override
  @JsonKey(name: 'expiresIn')
  final String? expiresIn;

  @override
  String toString() {
    return 'SignInDomain(kind: $kind, localId: $localId, email: $email, displayName: $displayName, idToken: $idToken, registered: $registered, refreshToken: $refreshToken, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInDomainImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.localId, localId) || other.localId == localId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.registered, registered) ||
                other.registered == registered) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    kind,
    localId,
    email,
    displayName,
    idToken,
    registered,
    refreshToken,
    expiresIn,
  );

  /// Create a copy of SignInDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInDomainImplCopyWith<_$SignInDomainImpl> get copyWith =>
      __$$SignInDomainImplCopyWithImpl<_$SignInDomainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInDomainImplToJson(this);
  }
}

abstract class _SignInDomain implements SignInDomain {
  const factory _SignInDomain({
    @JsonKey(name: 'kind') final String? kind,
    @JsonKey(name: 'localId') final String? localId,
    @JsonKey(name: 'email') final String? email,
    @JsonKey(name: 'displayName') final String? displayName,
    @JsonKey(name: 'idToken') final String? idToken,
    @JsonKey(name: 'registered') final bool? registered,
    @JsonKey(name: 'refreshToken') final String? refreshToken,
    @JsonKey(name: 'expiresIn') final String? expiresIn,
  }) = _$SignInDomainImpl;

  factory _SignInDomain.fromJson(Map<String, dynamic> json) =
      _$SignInDomainImpl.fromJson;

  @override
  @JsonKey(name: 'kind')
  String? get kind;
  @override
  @JsonKey(name: 'localId')
  String? get localId;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'displayName')
  String? get displayName;
  @override
  @JsonKey(name: 'idToken')
  String? get idToken;
  @override
  @JsonKey(name: 'registered')
  bool? get registered;
  @override
  @JsonKey(name: 'refreshToken')
  String? get refreshToken;
  @override
  @JsonKey(name: 'expiresIn')
  String? get expiresIn;

  /// Create a copy of SignInDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInDomainImplCopyWith<_$SignInDomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
