// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductDomain _$ProductDomainFromJson(Map<String, dynamic> json) {
  return _ProductDomain.fromJson(json);
}

/// @nodoc
mixin _$ProductDomain {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'fields')
  ProductDomainFields? get fields => throw _privateConstructorUsedError;
  @JsonKey(name: 'createTime')
  String? get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateTime')
  String? get updateTime => throw _privateConstructorUsedError;

  /// Serializes this ProductDomain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDomainCopyWith<ProductDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDomainCopyWith<$Res> {
  factory $ProductDomainCopyWith(
    ProductDomain value,
    $Res Function(ProductDomain) then,
  ) = _$ProductDomainCopyWithImpl<$Res, ProductDomain>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') ProductDomainFields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  });

  $ProductDomainFieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class _$ProductDomainCopyWithImpl<$Res, $Val extends ProductDomain>
    implements $ProductDomainCopyWith<$Res> {
  _$ProductDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDomain
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
                        as ProductDomainFields?,
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

  /// Create a copy of ProductDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDomainFieldsCopyWith<$Res>? get fields {
    if (_value.fields == null) {
      return null;
    }

    return $ProductDomainFieldsCopyWith<$Res>(_value.fields!, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDomainImplCopyWith<$Res>
    implements $ProductDomainCopyWith<$Res> {
  factory _$$ProductDomainImplCopyWith(
    _$ProductDomainImpl value,
    $Res Function(_$ProductDomainImpl) then,
  ) = __$$ProductDomainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') ProductDomainFields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  });

  @override
  $ProductDomainFieldsCopyWith<$Res>? get fields;
}

/// @nodoc
class __$$ProductDomainImplCopyWithImpl<$Res>
    extends _$ProductDomainCopyWithImpl<$Res, _$ProductDomainImpl>
    implements _$$ProductDomainImplCopyWith<$Res> {
  __$$ProductDomainImplCopyWithImpl(
    _$ProductDomainImpl _value,
    $Res Function(_$ProductDomainImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDomain
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
      _$ProductDomainImpl(
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        fields:
            freezed == fields
                ? _value.fields
                : fields // ignore: cast_nullable_to_non_nullable
                    as ProductDomainFields?,
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
class _$ProductDomainImpl implements _ProductDomain {
  const _$ProductDomainImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'fields') this.fields,
    @JsonKey(name: 'createTime') this.createTime,
    @JsonKey(name: 'updateTime') this.updateTime,
  });

  factory _$ProductDomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDomainImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'fields')
  final ProductDomainFields? fields;
  @override
  @JsonKey(name: 'createTime')
  final String? createTime;
  @override
  @JsonKey(name: 'updateTime')
  final String? updateTime;

  @override
  String toString() {
    return 'ProductDomain(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDomainImpl &&
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

  /// Create a copy of ProductDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDomainImplCopyWith<_$ProductDomainImpl> get copyWith =>
      __$$ProductDomainImplCopyWithImpl<_$ProductDomainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDomainImplToJson(this);
  }
}

abstract class _ProductDomain implements ProductDomain {
  const factory _ProductDomain({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'fields') final ProductDomainFields? fields,
    @JsonKey(name: 'createTime') final String? createTime,
    @JsonKey(name: 'updateTime') final String? updateTime,
  }) = _$ProductDomainImpl;

  factory _ProductDomain.fromJson(Map<String, dynamic> json) =
      _$ProductDomainImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'fields')
  ProductDomainFields? get fields;
  @override
  @JsonKey(name: 'createTime')
  String? get createTime;
  @override
  @JsonKey(name: 'updateTime')
  String? get updateTime;

  /// Create a copy of ProductDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDomainImplCopyWith<_$ProductDomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDomainFields _$ProductDomainFieldsFromJson(Map<String, dynamic> json) {
  return _ProductDomainFields.fromJson(json);
}

/// @nodoc
mixin _$ProductDomainFields {
  @JsonKey(name: 'brand')
  AddedBy? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  AddedBy? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_code')
  AddedBy? get companyCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  AddedBy? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_by')
  AddedBy? get addedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'variants')
  Variants? get variants => throw _privateConstructorUsedError;

  /// Serializes this ProductDomainFields to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDomainFieldsCopyWith<ProductDomainFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDomainFieldsCopyWith<$Res> {
  factory $ProductDomainFieldsCopyWith(
    ProductDomainFields value,
    $Res Function(ProductDomainFields) then,
  ) = _$ProductDomainFieldsCopyWithImpl<$Res, ProductDomainFields>;
  @useResult
  $Res call({
    @JsonKey(name: 'brand') AddedBy? brand,
    @JsonKey(name: 'product_name') AddedBy? productName,
    @JsonKey(name: 'company_code') AddedBy? companyCode,
    @JsonKey(name: 'description') AddedBy? description,
    @JsonKey(name: 'added_by') AddedBy? addedBy,
    @JsonKey(name: 'variants') Variants? variants,
  });

  $AddedByCopyWith<$Res>? get brand;
  $AddedByCopyWith<$Res>? get productName;
  $AddedByCopyWith<$Res>? get companyCode;
  $AddedByCopyWith<$Res>? get description;
  $AddedByCopyWith<$Res>? get addedBy;
  $VariantsCopyWith<$Res>? get variants;
}

/// @nodoc
class _$ProductDomainFieldsCopyWithImpl<$Res, $Val extends ProductDomainFields>
    implements $ProductDomainFieldsCopyWith<$Res> {
  _$ProductDomainFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? productName = freezed,
    Object? companyCode = freezed,
    Object? description = freezed,
    Object? addedBy = freezed,
    Object? variants = freezed,
  }) {
    return _then(
      _value.copyWith(
            brand:
                freezed == brand
                    ? _value.brand
                    : brand // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
            productName:
                freezed == productName
                    ? _value.productName
                    : productName // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
            companyCode:
                freezed == companyCode
                    ? _value.companyCode
                    : companyCode // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
            addedBy:
                freezed == addedBy
                    ? _value.addedBy
                    : addedBy // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
            variants:
                freezed == variants
                    ? _value.variants
                    : variants // ignore: cast_nullable_to_non_nullable
                        as Variants?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddedByCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $AddedByCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }

  /// Create a copy of ProductDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddedByCopyWith<$Res>? get productName {
    if (_value.productName == null) {
      return null;
    }

    return $AddedByCopyWith<$Res>(_value.productName!, (value) {
      return _then(_value.copyWith(productName: value) as $Val);
    });
  }

  /// Create a copy of ProductDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddedByCopyWith<$Res>? get companyCode {
    if (_value.companyCode == null) {
      return null;
    }

    return $AddedByCopyWith<$Res>(_value.companyCode!, (value) {
      return _then(_value.copyWith(companyCode: value) as $Val);
    });
  }

  /// Create a copy of ProductDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddedByCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $AddedByCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }

  /// Create a copy of ProductDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddedByCopyWith<$Res>? get addedBy {
    if (_value.addedBy == null) {
      return null;
    }

    return $AddedByCopyWith<$Res>(_value.addedBy!, (value) {
      return _then(_value.copyWith(addedBy: value) as $Val);
    });
  }

  /// Create a copy of ProductDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VariantsCopyWith<$Res>? get variants {
    if (_value.variants == null) {
      return null;
    }

    return $VariantsCopyWith<$Res>(_value.variants!, (value) {
      return _then(_value.copyWith(variants: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDomainFieldsImplCopyWith<$Res>
    implements $ProductDomainFieldsCopyWith<$Res> {
  factory _$$ProductDomainFieldsImplCopyWith(
    _$ProductDomainFieldsImpl value,
    $Res Function(_$ProductDomainFieldsImpl) then,
  ) = __$$ProductDomainFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'brand') AddedBy? brand,
    @JsonKey(name: 'product_name') AddedBy? productName,
    @JsonKey(name: 'company_code') AddedBy? companyCode,
    @JsonKey(name: 'description') AddedBy? description,
    @JsonKey(name: 'added_by') AddedBy? addedBy,
    @JsonKey(name: 'variants') Variants? variants,
  });

  @override
  $AddedByCopyWith<$Res>? get brand;
  @override
  $AddedByCopyWith<$Res>? get productName;
  @override
  $AddedByCopyWith<$Res>? get companyCode;
  @override
  $AddedByCopyWith<$Res>? get description;
  @override
  $AddedByCopyWith<$Res>? get addedBy;
  @override
  $VariantsCopyWith<$Res>? get variants;
}

/// @nodoc
class __$$ProductDomainFieldsImplCopyWithImpl<$Res>
    extends _$ProductDomainFieldsCopyWithImpl<$Res, _$ProductDomainFieldsImpl>
    implements _$$ProductDomainFieldsImplCopyWith<$Res> {
  __$$ProductDomainFieldsImplCopyWithImpl(
    _$ProductDomainFieldsImpl _value,
    $Res Function(_$ProductDomainFieldsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? productName = freezed,
    Object? companyCode = freezed,
    Object? description = freezed,
    Object? addedBy = freezed,
    Object? variants = freezed,
  }) {
    return _then(
      _$ProductDomainFieldsImpl(
        brand:
            freezed == brand
                ? _value.brand
                : brand // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
        productName:
            freezed == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
        companyCode:
            freezed == companyCode
                ? _value.companyCode
                : companyCode // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
        addedBy:
            freezed == addedBy
                ? _value.addedBy
                : addedBy // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
        variants:
            freezed == variants
                ? _value.variants
                : variants // ignore: cast_nullable_to_non_nullable
                    as Variants?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDomainFieldsImpl implements _ProductDomainFields {
  const _$ProductDomainFieldsImpl({
    @JsonKey(name: 'brand') this.brand,
    @JsonKey(name: 'product_name') this.productName,
    @JsonKey(name: 'company_code') this.companyCode,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'added_by') this.addedBy,
    @JsonKey(name: 'variants') this.variants,
  });

  factory _$ProductDomainFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDomainFieldsImplFromJson(json);

  @override
  @JsonKey(name: 'brand')
  final AddedBy? brand;
  @override
  @JsonKey(name: 'product_name')
  final AddedBy? productName;
  @override
  @JsonKey(name: 'company_code')
  final AddedBy? companyCode;
  @override
  @JsonKey(name: 'description')
  final AddedBy? description;
  @override
  @JsonKey(name: 'added_by')
  final AddedBy? addedBy;
  @override
  @JsonKey(name: 'variants')
  final Variants? variants;

  @override
  String toString() {
    return 'ProductDomainFields(brand: $brand, productName: $productName, companyCode: $companyCode, description: $description, addedBy: $addedBy, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDomainFieldsImpl &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.companyCode, companyCode) ||
                other.companyCode == companyCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.addedBy, addedBy) || other.addedBy == addedBy) &&
            (identical(other.variants, variants) ||
                other.variants == variants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    brand,
    productName,
    companyCode,
    description,
    addedBy,
    variants,
  );

  /// Create a copy of ProductDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDomainFieldsImplCopyWith<_$ProductDomainFieldsImpl> get copyWith =>
      __$$ProductDomainFieldsImplCopyWithImpl<_$ProductDomainFieldsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDomainFieldsImplToJson(this);
  }
}

abstract class _ProductDomainFields implements ProductDomainFields {
  const factory _ProductDomainFields({
    @JsonKey(name: 'brand') final AddedBy? brand,
    @JsonKey(name: 'product_name') final AddedBy? productName,
    @JsonKey(name: 'company_code') final AddedBy? companyCode,
    @JsonKey(name: 'description') final AddedBy? description,
    @JsonKey(name: 'added_by') final AddedBy? addedBy,
    @JsonKey(name: 'variants') final Variants? variants,
  }) = _$ProductDomainFieldsImpl;

  factory _ProductDomainFields.fromJson(Map<String, dynamic> json) =
      _$ProductDomainFieldsImpl.fromJson;

  @override
  @JsonKey(name: 'brand')
  AddedBy? get brand;
  @override
  @JsonKey(name: 'product_name')
  AddedBy? get productName;
  @override
  @JsonKey(name: 'company_code')
  AddedBy? get companyCode;
  @override
  @JsonKey(name: 'description')
  AddedBy? get description;
  @override
  @JsonKey(name: 'added_by')
  AddedBy? get addedBy;
  @override
  @JsonKey(name: 'variants')
  Variants? get variants;

  /// Create a copy of ProductDomainFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDomainFieldsImplCopyWith<_$ProductDomainFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddedBy _$AddedByFromJson(Map<String, dynamic> json) {
  return _AddedBy.fromJson(json);
}

/// @nodoc
mixin _$AddedBy {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this AddedBy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddedBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddedByCopyWith<AddedBy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddedByCopyWith<$Res> {
  factory $AddedByCopyWith(AddedBy value, $Res Function(AddedBy) then) =
      _$AddedByCopyWithImpl<$Res, AddedBy>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$AddedByCopyWithImpl<$Res, $Val extends AddedBy>
    implements $AddedByCopyWith<$Res> {
  _$AddedByCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddedBy
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
abstract class _$$AddedByImplCopyWith<$Res> implements $AddedByCopyWith<$Res> {
  factory _$$AddedByImplCopyWith(
    _$AddedByImpl value,
    $Res Function(_$AddedByImpl) then,
  ) = __$$AddedByImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$AddedByImplCopyWithImpl<$Res>
    extends _$AddedByCopyWithImpl<$Res, _$AddedByImpl>
    implements _$$AddedByImplCopyWith<$Res> {
  __$$AddedByImplCopyWithImpl(
    _$AddedByImpl _value,
    $Res Function(_$AddedByImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddedBy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$AddedByImpl(
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
class _$AddedByImpl implements _AddedBy {
  const _$AddedByImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$AddedByImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddedByImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'AddedBy(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedByImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of AddedBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedByImplCopyWith<_$AddedByImpl> get copyWith =>
      __$$AddedByImplCopyWithImpl<_$AddedByImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddedByImplToJson(this);
  }
}

abstract class _AddedBy implements AddedBy {
  const factory _AddedBy({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$AddedByImpl;

  factory _AddedBy.fromJson(Map<String, dynamic> json) = _$AddedByImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of AddedBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddedByImplCopyWith<_$AddedByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Variants _$VariantsFromJson(Map<String, dynamic> json) {
  return _Variants.fromJson(json);
}

/// @nodoc
mixin _$Variants {
  @JsonKey(name: 'arrayValue')
  ArrayValue? get arrayValue => throw _privateConstructorUsedError;

  /// Serializes this Variants to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Variants
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VariantsCopyWith<Variants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantsCopyWith<$Res> {
  factory $VariantsCopyWith(Variants value, $Res Function(Variants) then) =
      _$VariantsCopyWithImpl<$Res, Variants>;
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') ArrayValue? arrayValue});

  $ArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class _$VariantsCopyWithImpl<$Res, $Val extends Variants>
    implements $VariantsCopyWith<$Res> {
  _$VariantsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Variants
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

  /// Create a copy of Variants
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
abstract class _$$VariantsImplCopyWith<$Res>
    implements $VariantsCopyWith<$Res> {
  factory _$$VariantsImplCopyWith(
    _$VariantsImpl value,
    $Res Function(_$VariantsImpl) then,
  ) = __$$VariantsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') ArrayValue? arrayValue});

  @override
  $ArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class __$$VariantsImplCopyWithImpl<$Res>
    extends _$VariantsCopyWithImpl<$Res, _$VariantsImpl>
    implements _$$VariantsImplCopyWith<$Res> {
  __$$VariantsImplCopyWithImpl(
    _$VariantsImpl _value,
    $Res Function(_$VariantsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Variants
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? arrayValue = freezed}) {
    return _then(
      _$VariantsImpl(
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
class _$VariantsImpl implements _Variants {
  const _$VariantsImpl({@JsonKey(name: 'arrayValue') this.arrayValue});

  factory _$VariantsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantsImplFromJson(json);

  @override
  @JsonKey(name: 'arrayValue')
  final ArrayValue? arrayValue;

  @override
  String toString() {
    return 'Variants(arrayValue: $arrayValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantsImpl &&
            (identical(other.arrayValue, arrayValue) ||
                other.arrayValue == arrayValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arrayValue);

  /// Create a copy of Variants
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantsImplCopyWith<_$VariantsImpl> get copyWith =>
      __$$VariantsImplCopyWithImpl<_$VariantsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantsImplToJson(this);
  }
}

abstract class _Variants implements Variants {
  const factory _Variants({
    @JsonKey(name: 'arrayValue') final ArrayValue? arrayValue,
  }) = _$VariantsImpl;

  factory _Variants.fromJson(Map<String, dynamic> json) =
      _$VariantsImpl.fromJson;

  @override
  @JsonKey(name: 'arrayValue')
  ArrayValue? get arrayValue;

  /// Create a copy of Variants
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariantsImplCopyWith<_$VariantsImpl> get copyWith =>
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
  @JsonKey(name: 'price')
  Price? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributes')
  Attributes? get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'variant_image')
  Image? get variantImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'variant_name')
  AddedBy? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: 'units_per_package')
  Price? get unitsPerPackage => throw _privateConstructorUsedError;
  @JsonKey(name: 'available')
  Available? get available => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  Image? get image => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'price') Price? price,
    @JsonKey(name: 'attributes') Attributes? attributes,
    @JsonKey(name: 'variant_image') Image? variantImage,
    @JsonKey(name: 'variant_name') AddedBy? variantName,
    @JsonKey(name: 'units_per_package') Price? unitsPerPackage,
    @JsonKey(name: 'available') Available? available,
    @JsonKey(name: 'image') Image? image,
  });

  $PriceCopyWith<$Res>? get price;
  $AttributesCopyWith<$Res>? get attributes;
  $ImageCopyWith<$Res>? get variantImage;
  $AddedByCopyWith<$Res>? get variantName;
  $PriceCopyWith<$Res>? get unitsPerPackage;
  $AvailableCopyWith<$Res>? get available;
  $ImageCopyWith<$Res>? get image;
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
    Object? price = freezed,
    Object? attributes = freezed,
    Object? variantImage = freezed,
    Object? variantName = freezed,
    Object? unitsPerPackage = freezed,
    Object? available = freezed,
    Object? image = freezed,
  }) {
    return _then(
      _value.copyWith(
            price:
                freezed == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as Price?,
            attributes:
                freezed == attributes
                    ? _value.attributes
                    : attributes // ignore: cast_nullable_to_non_nullable
                        as Attributes?,
            variantImage:
                freezed == variantImage
                    ? _value.variantImage
                    : variantImage // ignore: cast_nullable_to_non_nullable
                        as Image?,
            variantName:
                freezed == variantName
                    ? _value.variantName
                    : variantName // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
            unitsPerPackage:
                freezed == unitsPerPackage
                    ? _value.unitsPerPackage
                    : unitsPerPackage // ignore: cast_nullable_to_non_nullable
                        as Price?,
            available:
                freezed == available
                    ? _value.available
                    : available // ignore: cast_nullable_to_non_nullable
                        as Available?,
            image:
                freezed == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as Image?,
          )
          as $Val,
    );
  }

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $AttributesCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res>? get variantImage {
    if (_value.variantImage == null) {
      return null;
    }

    return $ImageCopyWith<$Res>(_value.variantImage!, (value) {
      return _then(_value.copyWith(variantImage: value) as $Val);
    });
  }

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddedByCopyWith<$Res>? get variantName {
    if (_value.variantName == null) {
      return null;
    }

    return $AddedByCopyWith<$Res>(_value.variantName!, (value) {
      return _then(_value.copyWith(variantName: value) as $Val);
    });
  }

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res>? get unitsPerPackage {
    if (_value.unitsPerPackage == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.unitsPerPackage!, (value) {
      return _then(_value.copyWith(unitsPerPackage: value) as $Val);
    });
  }

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AvailableCopyWith<$Res>? get available {
    if (_value.available == null) {
      return null;
    }

    return $AvailableCopyWith<$Res>(_value.available!, (value) {
      return _then(_value.copyWith(available: value) as $Val);
    });
  }

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
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
    @JsonKey(name: 'price') Price? price,
    @JsonKey(name: 'attributes') Attributes? attributes,
    @JsonKey(name: 'variant_image') Image? variantImage,
    @JsonKey(name: 'variant_name') AddedBy? variantName,
    @JsonKey(name: 'units_per_package') Price? unitsPerPackage,
    @JsonKey(name: 'available') Available? available,
    @JsonKey(name: 'image') Image? image,
  });

  @override
  $PriceCopyWith<$Res>? get price;
  @override
  $AttributesCopyWith<$Res>? get attributes;
  @override
  $ImageCopyWith<$Res>? get variantImage;
  @override
  $AddedByCopyWith<$Res>? get variantName;
  @override
  $PriceCopyWith<$Res>? get unitsPerPackage;
  @override
  $AvailableCopyWith<$Res>? get available;
  @override
  $ImageCopyWith<$Res>? get image;
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
    Object? price = freezed,
    Object? attributes = freezed,
    Object? variantImage = freezed,
    Object? variantName = freezed,
    Object? unitsPerPackage = freezed,
    Object? available = freezed,
    Object? image = freezed,
  }) {
    return _then(
      _$PurpleFieldsImpl(
        price:
            freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as Price?,
        attributes:
            freezed == attributes
                ? _value.attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                    as Attributes?,
        variantImage:
            freezed == variantImage
                ? _value.variantImage
                : variantImage // ignore: cast_nullable_to_non_nullable
                    as Image?,
        variantName:
            freezed == variantName
                ? _value.variantName
                : variantName // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
        unitsPerPackage:
            freezed == unitsPerPackage
                ? _value.unitsPerPackage
                : unitsPerPackage // ignore: cast_nullable_to_non_nullable
                    as Price?,
        available:
            freezed == available
                ? _value.available
                : available // ignore: cast_nullable_to_non_nullable
                    as Available?,
        image:
            freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as Image?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PurpleFieldsImpl implements _PurpleFields {
  const _$PurpleFieldsImpl({
    @JsonKey(name: 'price') this.price,
    @JsonKey(name: 'attributes') this.attributes,
    @JsonKey(name: 'variant_image') this.variantImage,
    @JsonKey(name: 'variant_name') this.variantName,
    @JsonKey(name: 'units_per_package') this.unitsPerPackage,
    @JsonKey(name: 'available') this.available,
    @JsonKey(name: 'image') this.image,
  });

  factory _$PurpleFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurpleFieldsImplFromJson(json);

  @override
  @JsonKey(name: 'price')
  final Price? price;
  @override
  @JsonKey(name: 'attributes')
  final Attributes? attributes;
  @override
  @JsonKey(name: 'variant_image')
  final Image? variantImage;
  @override
  @JsonKey(name: 'variant_name')
  final AddedBy? variantName;
  @override
  @JsonKey(name: 'units_per_package')
  final Price? unitsPerPackage;
  @override
  @JsonKey(name: 'available')
  final Available? available;
  @override
  @JsonKey(name: 'image')
  final Image? image;

  @override
  String toString() {
    return 'PurpleFields(price: $price, attributes: $attributes, variantImage: $variantImage, variantName: $variantName, unitsPerPackage: $unitsPerPackage, available: $available, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurpleFieldsImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.variantImage, variantImage) ||
                other.variantImage == variantImage) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.unitsPerPackage, unitsPerPackage) ||
                other.unitsPerPackage == unitsPerPackage) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    price,
    attributes,
    variantImage,
    variantName,
    unitsPerPackage,
    available,
    image,
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
    @JsonKey(name: 'price') final Price? price,
    @JsonKey(name: 'attributes') final Attributes? attributes,
    @JsonKey(name: 'variant_image') final Image? variantImage,
    @JsonKey(name: 'variant_name') final AddedBy? variantName,
    @JsonKey(name: 'units_per_package') final Price? unitsPerPackage,
    @JsonKey(name: 'available') final Available? available,
    @JsonKey(name: 'image') final Image? image,
  }) = _$PurpleFieldsImpl;

  factory _PurpleFields.fromJson(Map<String, dynamic> json) =
      _$PurpleFieldsImpl.fromJson;

  @override
  @JsonKey(name: 'price')
  Price? get price;
  @override
  @JsonKey(name: 'attributes')
  Attributes? get attributes;
  @override
  @JsonKey(name: 'variant_image')
  Image? get variantImage;
  @override
  @JsonKey(name: 'variant_name')
  AddedBy? get variantName;
  @override
  @JsonKey(name: 'units_per_package')
  Price? get unitsPerPackage;
  @override
  @JsonKey(name: 'available')
  Available? get available;
  @override
  @JsonKey(name: 'image')
  Image? get image;

  /// Create a copy of PurpleFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurpleFieldsImplCopyWith<_$PurpleFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
mixin _$Attributes {
  @JsonKey(name: 'mapValue')
  Map<String, dynamic>? get mapValue => throw _privateConstructorUsedError;

  /// Serializes this Attributes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
    Attributes value,
    $Res Function(Attributes) then,
  ) = _$AttributesCopyWithImpl<$Res, Attributes>;
  @useResult
  $Res call({@JsonKey(name: 'mapValue') Map<String, dynamic>? mapValue});
}

/// @nodoc
class _$AttributesCopyWithImpl<$Res, $Val extends Attributes>
    implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attributes
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
                        as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttributesImplCopyWith<$Res>
    implements $AttributesCopyWith<$Res> {
  factory _$$AttributesImplCopyWith(
    _$AttributesImpl value,
    $Res Function(_$AttributesImpl) then,
  ) = __$$AttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'mapValue') Map<String, dynamic>? mapValue});
}

/// @nodoc
class __$$AttributesImplCopyWithImpl<$Res>
    extends _$AttributesCopyWithImpl<$Res, _$AttributesImpl>
    implements _$$AttributesImplCopyWith<$Res> {
  __$$AttributesImplCopyWithImpl(
    _$AttributesImpl _value,
    $Res Function(_$AttributesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? mapValue = freezed}) {
    return _then(
      _$AttributesImpl(
        mapValue:
            freezed == mapValue
                ? _value._mapValue
                : mapValue // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributesImpl implements _Attributes {
  const _$AttributesImpl({
    @JsonKey(name: 'mapValue') final Map<String, dynamic>? mapValue,
  }) : _mapValue = mapValue;

  factory _$AttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributesImplFromJson(json);

  final Map<String, dynamic>? _mapValue;
  @override
  @JsonKey(name: 'mapValue')
  Map<String, dynamic>? get mapValue {
    final value = _mapValue;
    if (value == null) return null;
    if (_mapValue is EqualUnmodifiableMapView) return _mapValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Attributes(mapValue: $mapValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesImpl &&
            const DeepCollectionEquality().equals(other._mapValue, _mapValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_mapValue));

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      __$$AttributesImplCopyWithImpl<_$AttributesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributesImplToJson(this);
  }
}

abstract class _Attributes implements Attributes {
  const factory _Attributes({
    @JsonKey(name: 'mapValue') final Map<String, dynamic>? mapValue,
  }) = _$AttributesImpl;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$AttributesImpl.fromJson;

  @override
  @JsonKey(name: 'mapValue')
  Map<String, dynamic>? get mapValue;

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Available _$AvailableFromJson(Map<String, dynamic> json) {
  return _Available.fromJson(json);
}

/// @nodoc
mixin _$Available {
  @JsonKey(name: 'booleanValue')
  bool? get booleanValue => throw _privateConstructorUsedError;

  /// Serializes this Available to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Available
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailableCopyWith<Available> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableCopyWith<$Res> {
  factory $AvailableCopyWith(Available value, $Res Function(Available) then) =
      _$AvailableCopyWithImpl<$Res, Available>;
  @useResult
  $Res call({@JsonKey(name: 'booleanValue') bool? booleanValue});
}

/// @nodoc
class _$AvailableCopyWithImpl<$Res, $Val extends Available>
    implements $AvailableCopyWith<$Res> {
  _$AvailableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Available
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
abstract class _$$AvailableImplCopyWith<$Res>
    implements $AvailableCopyWith<$Res> {
  factory _$$AvailableImplCopyWith(
    _$AvailableImpl value,
    $Res Function(_$AvailableImpl) then,
  ) = __$$AvailableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'booleanValue') bool? booleanValue});
}

/// @nodoc
class __$$AvailableImplCopyWithImpl<$Res>
    extends _$AvailableCopyWithImpl<$Res, _$AvailableImpl>
    implements _$$AvailableImplCopyWith<$Res> {
  __$$AvailableImplCopyWithImpl(
    _$AvailableImpl _value,
    $Res Function(_$AvailableImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Available
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? booleanValue = freezed}) {
    return _then(
      _$AvailableImpl(
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
class _$AvailableImpl implements _Available {
  const _$AvailableImpl({@JsonKey(name: 'booleanValue') this.booleanValue});

  factory _$AvailableImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableImplFromJson(json);

  @override
  @JsonKey(name: 'booleanValue')
  final bool? booleanValue;

  @override
  String toString() {
    return 'Available(booleanValue: $booleanValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableImpl &&
            (identical(other.booleanValue, booleanValue) ||
                other.booleanValue == booleanValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, booleanValue);

  /// Create a copy of Available
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableImplCopyWith<_$AvailableImpl> get copyWith =>
      __$$AvailableImplCopyWithImpl<_$AvailableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableImplToJson(this);
  }
}

abstract class _Available implements Available {
  const factory _Available({
    @JsonKey(name: 'booleanValue') final bool? booleanValue,
  }) = _$AvailableImpl;

  factory _Available.fromJson(Map<String, dynamic> json) =
      _$AvailableImpl.fromJson;

  @override
  @JsonKey(name: 'booleanValue')
  bool? get booleanValue;

  /// Create a copy of Available
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailableImplCopyWith<_$AvailableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this Image to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Image
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
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
    _$ImageImpl value,
    $Res Function(_$ImageImpl) then,
  ) = __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
    _$ImageImpl _value,
    $Res Function(_$ImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$ImageImpl(
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
class _$ImageImpl implements _Image {
  const _$ImageImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'Image(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(this);
  }
}

abstract class _Image implements Image {
  const factory _Image({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  @JsonKey(name: 'integerValue')
  String? get integerValue => throw _privateConstructorUsedError;

  /// Serializes this Price to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call({@JsonKey(name: 'integerValue') String? integerValue});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Price
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
abstract class _$$PriceImplCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$PriceImplCopyWith(
    _$PriceImpl value,
    $Res Function(_$PriceImpl) then,
  ) = __$$PriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'integerValue') String? integerValue});
}

/// @nodoc
class __$$PriceImplCopyWithImpl<$Res>
    extends _$PriceCopyWithImpl<$Res, _$PriceImpl>
    implements _$$PriceImplCopyWith<$Res> {
  __$$PriceImplCopyWithImpl(
    _$PriceImpl _value,
    $Res Function(_$PriceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? integerValue = freezed}) {
    return _then(
      _$PriceImpl(
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
class _$PriceImpl implements _Price {
  const _$PriceImpl({@JsonKey(name: 'integerValue') this.integerValue});

  factory _$PriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceImplFromJson(json);

  @override
  @JsonKey(name: 'integerValue')
  final String? integerValue;

  @override
  String toString() {
    return 'Price(integerValue: $integerValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceImpl &&
            (identical(other.integerValue, integerValue) ||
                other.integerValue == integerValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, integerValue);

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      __$$PriceImplCopyWithImpl<_$PriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceImplToJson(this);
  }
}

abstract class _Price implements Price {
  const factory _Price({
    @JsonKey(name: 'integerValue') final String? integerValue,
  }) = _$PriceImpl;

  factory _Price.fromJson(Map<String, dynamic> json) = _$PriceImpl.fromJson;

  @override
  @JsonKey(name: 'integerValue')
  String? get integerValue;

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
