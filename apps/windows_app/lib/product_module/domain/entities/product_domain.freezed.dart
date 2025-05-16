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
  Fields? get fields => throw _privateConstructorUsedError;
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
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  });

  $FieldsCopyWith<$Res>? get fields;
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

  /// Create a copy of ProductDomain
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
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  });

  @override
  $FieldsCopyWith<$Res>? get fields;
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
  final Fields? fields;
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
    @JsonKey(name: 'fields') final Fields? fields,
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
  Fields? get fields;
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

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return _Fields.fromJson(json);
}

/// @nodoc
mixin _$Fields {
  @JsonKey(name: 'units_per_package')
  Price? get unitsPerPackage => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_by')
  AddedBy? get addedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_code')
  AddedBy? get companyCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_image')
  ProductImage? get productImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  Price? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'available')
  Available? get available => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  AddedBy? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributes')
  Attributes? get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  AddedBy? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  AddedBy? get brand => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'units_per_package') Price? unitsPerPackage,
    @JsonKey(name: 'added_by') AddedBy? addedBy,
    @JsonKey(name: 'company_code') AddedBy? companyCode,
    @JsonKey(name: 'product_image') ProductImage? productImage,
    @JsonKey(name: 'price') Price? price,
    @JsonKey(name: 'available') Available? available,
    @JsonKey(name: 'description') AddedBy? description,
    @JsonKey(name: 'attributes') Attributes? attributes,
    @JsonKey(name: 'product_name') AddedBy? productName,
    @JsonKey(name: 'brand') AddedBy? brand,
  });

  $PriceCopyWith<$Res>? get unitsPerPackage;
  $AddedByCopyWith<$Res>? get addedBy;
  $AddedByCopyWith<$Res>? get companyCode;
  $ProductImageCopyWith<$Res>? get productImage;
  $PriceCopyWith<$Res>? get price;
  $AvailableCopyWith<$Res>? get available;
  $AddedByCopyWith<$Res>? get description;
  $AttributesCopyWith<$Res>? get attributes;
  $AddedByCopyWith<$Res>? get productName;
  $AddedByCopyWith<$Res>? get brand;
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
    Object? unitsPerPackage = freezed,
    Object? addedBy = freezed,
    Object? companyCode = freezed,
    Object? productImage = freezed,
    Object? price = freezed,
    Object? available = freezed,
    Object? description = freezed,
    Object? attributes = freezed,
    Object? productName = freezed,
    Object? brand = freezed,
  }) {
    return _then(
      _value.copyWith(
            unitsPerPackage:
                freezed == unitsPerPackage
                    ? _value.unitsPerPackage
                    : unitsPerPackage // ignore: cast_nullable_to_non_nullable
                        as Price?,
            addedBy:
                freezed == addedBy
                    ? _value.addedBy
                    : addedBy // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
            companyCode:
                freezed == companyCode
                    ? _value.companyCode
                    : companyCode // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
            productImage:
                freezed == productImage
                    ? _value.productImage
                    : productImage // ignore: cast_nullable_to_non_nullable
                        as ProductImage?,
            price:
                freezed == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as Price?,
            available:
                freezed == available
                    ? _value.available
                    : available // ignore: cast_nullable_to_non_nullable
                        as Available?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
            attributes:
                freezed == attributes
                    ? _value.attributes
                    : attributes // ignore: cast_nullable_to_non_nullable
                        as Attributes?,
            productName:
                freezed == productName
                    ? _value.productName
                    : productName // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
            brand:
                freezed == brand
                    ? _value.brand
                    : brand // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
          )
          as $Val,
    );
  }

  /// Create a copy of Fields
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

  /// Create a copy of Fields
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

  /// Create a copy of Fields
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductImageCopyWith<$Res>? get productImage {
    if (_value.productImage == null) {
      return null;
    }

    return $ProductImageCopyWith<$Res>(_value.productImage!, (value) {
      return _then(_value.copyWith(productImage: value) as $Val);
    });
  }

  /// Create a copy of Fields
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

  /// Create a copy of Fields
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

  /// Create a copy of Fields
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

  /// Create a copy of Fields
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

  /// Create a copy of Fields
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

  /// Create a copy of Fields
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
    @JsonKey(name: 'units_per_package') Price? unitsPerPackage,
    @JsonKey(name: 'added_by') AddedBy? addedBy,
    @JsonKey(name: 'company_code') AddedBy? companyCode,
    @JsonKey(name: 'product_image') ProductImage? productImage,
    @JsonKey(name: 'price') Price? price,
    @JsonKey(name: 'available') Available? available,
    @JsonKey(name: 'description') AddedBy? description,
    @JsonKey(name: 'attributes') Attributes? attributes,
    @JsonKey(name: 'product_name') AddedBy? productName,
    @JsonKey(name: 'brand') AddedBy? brand,
  });

  @override
  $PriceCopyWith<$Res>? get unitsPerPackage;
  @override
  $AddedByCopyWith<$Res>? get addedBy;
  @override
  $AddedByCopyWith<$Res>? get companyCode;
  @override
  $ProductImageCopyWith<$Res>? get productImage;
  @override
  $PriceCopyWith<$Res>? get price;
  @override
  $AvailableCopyWith<$Res>? get available;
  @override
  $AddedByCopyWith<$Res>? get description;
  @override
  $AttributesCopyWith<$Res>? get attributes;
  @override
  $AddedByCopyWith<$Res>? get productName;
  @override
  $AddedByCopyWith<$Res>? get brand;
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
    Object? unitsPerPackage = freezed,
    Object? addedBy = freezed,
    Object? companyCode = freezed,
    Object? productImage = freezed,
    Object? price = freezed,
    Object? available = freezed,
    Object? description = freezed,
    Object? attributes = freezed,
    Object? productName = freezed,
    Object? brand = freezed,
  }) {
    return _then(
      _$FieldsImpl(
        unitsPerPackage:
            freezed == unitsPerPackage
                ? _value.unitsPerPackage
                : unitsPerPackage // ignore: cast_nullable_to_non_nullable
                    as Price?,
        addedBy:
            freezed == addedBy
                ? _value.addedBy
                : addedBy // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
        companyCode:
            freezed == companyCode
                ? _value.companyCode
                : companyCode // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
        productImage:
            freezed == productImage
                ? _value.productImage
                : productImage // ignore: cast_nullable_to_non_nullable
                    as ProductImage?,
        price:
            freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as Price?,
        available:
            freezed == available
                ? _value.available
                : available // ignore: cast_nullable_to_non_nullable
                    as Available?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
        attributes:
            freezed == attributes
                ? _value.attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                    as Attributes?,
        productName:
            freezed == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
        brand:
            freezed == brand
                ? _value.brand
                : brand // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsImpl implements _Fields {
  const _$FieldsImpl({
    @JsonKey(name: 'units_per_package') this.unitsPerPackage,
    @JsonKey(name: 'added_by') this.addedBy,
    @JsonKey(name: 'company_code') this.companyCode,
    @JsonKey(name: 'product_image') this.productImage,
    @JsonKey(name: 'price') this.price,
    @JsonKey(name: 'available') this.available,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'attributes') this.attributes,
    @JsonKey(name: 'product_name') this.productName,
    @JsonKey(name: 'brand') this.brand,
  });

  factory _$FieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsImplFromJson(json);

  @override
  @JsonKey(name: 'units_per_package')
  final Price? unitsPerPackage;
  @override
  @JsonKey(name: 'added_by')
  final AddedBy? addedBy;
  @override
  @JsonKey(name: 'company_code')
  final AddedBy? companyCode;
  @override
  @JsonKey(name: 'product_image')
  final ProductImage? productImage;
  @override
  @JsonKey(name: 'price')
  final Price? price;
  @override
  @JsonKey(name: 'available')
  final Available? available;
  @override
  @JsonKey(name: 'description')
  final AddedBy? description;
  @override
  @JsonKey(name: 'attributes')
  final Attributes? attributes;
  @override
  @JsonKey(name: 'product_name')
  final AddedBy? productName;
  @override
  @JsonKey(name: 'brand')
  final AddedBy? brand;

  @override
  String toString() {
    return 'Fields(unitsPerPackage: $unitsPerPackage, addedBy: $addedBy, companyCode: $companyCode, productImage: $productImage, price: $price, available: $available, description: $description, attributes: $attributes, productName: $productName, brand: $brand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsImpl &&
            (identical(other.unitsPerPackage, unitsPerPackage) ||
                other.unitsPerPackage == unitsPerPackage) &&
            (identical(other.addedBy, addedBy) || other.addedBy == addedBy) &&
            (identical(other.companyCode, companyCode) ||
                other.companyCode == companyCode) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    unitsPerPackage,
    addedBy,
    companyCode,
    productImage,
    price,
    available,
    description,
    attributes,
    productName,
    brand,
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
    @JsonKey(name: 'units_per_package') final Price? unitsPerPackage,
    @JsonKey(name: 'added_by') final AddedBy? addedBy,
    @JsonKey(name: 'company_code') final AddedBy? companyCode,
    @JsonKey(name: 'product_image') final ProductImage? productImage,
    @JsonKey(name: 'price') final Price? price,
    @JsonKey(name: 'available') final Available? available,
    @JsonKey(name: 'description') final AddedBy? description,
    @JsonKey(name: 'attributes') final Attributes? attributes,
    @JsonKey(name: 'product_name') final AddedBy? productName,
    @JsonKey(name: 'brand') final AddedBy? brand,
  }) = _$FieldsImpl;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$FieldsImpl.fromJson;

  @override
  @JsonKey(name: 'units_per_package')
  Price? get unitsPerPackage;
  @override
  @JsonKey(name: 'added_by')
  AddedBy? get addedBy;
  @override
  @JsonKey(name: 'company_code')
  AddedBy? get companyCode;
  @override
  @JsonKey(name: 'product_image')
  ProductImage? get productImage;
  @override
  @JsonKey(name: 'price')
  Price? get price;
  @override
  @JsonKey(name: 'available')
  Available? get available;
  @override
  @JsonKey(name: 'description')
  AddedBy? get description;
  @override
  @JsonKey(name: 'attributes')
  Attributes? get attributes;
  @override
  @JsonKey(name: 'product_name')
  AddedBy? get productName;
  @override
  @JsonKey(name: 'brand')
  AddedBy? get brand;

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldsImplCopyWith<_$FieldsImpl> get copyWith =>
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

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
mixin _$Attributes {
  @JsonKey(name: 'mapValue')
  MapValue? get mapValue => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'mapValue') MapValue? mapValue});

  $MapValueCopyWith<$Res>? get mapValue;
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
                        as MapValue?,
          )
          as $Val,
    );
  }

  /// Create a copy of Attributes
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
abstract class _$$AttributesImplCopyWith<$Res>
    implements $AttributesCopyWith<$Res> {
  factory _$$AttributesImplCopyWith(
    _$AttributesImpl value,
    $Res Function(_$AttributesImpl) then,
  ) = __$$AttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'mapValue') MapValue? mapValue});

  @override
  $MapValueCopyWith<$Res>? get mapValue;
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
                ? _value.mapValue
                : mapValue // ignore: cast_nullable_to_non_nullable
                    as MapValue?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributesImpl implements _Attributes {
  const _$AttributesImpl({@JsonKey(name: 'mapValue') this.mapValue});

  factory _$AttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributesImplFromJson(json);

  @override
  @JsonKey(name: 'mapValue')
  final MapValue? mapValue;

  @override
  String toString() {
    return 'Attributes(mapValue: $mapValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesImpl &&
            (identical(other.mapValue, mapValue) ||
                other.mapValue == mapValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mapValue);

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
    @JsonKey(name: 'mapValue') final MapValue? mapValue,
  }) = _$AttributesImpl;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$AttributesImpl.fromJson;

  @override
  @JsonKey(name: 'mapValue')
  MapValue? get mapValue;

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapValue _$MapValueFromJson(Map<String, dynamic> json) {
  return _MapValue.fromJson(json);
}

/// @nodoc
mixin _$MapValue {
  @JsonKey(name: 'fields')
  Map<String, dynamic>? get fields => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'fields') Map<String, dynamic>? fields});
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
                        as Map<String, dynamic>?,
          )
          as $Val,
    );
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
  $Res call({@JsonKey(name: 'fields') Map<String, dynamic>? fields});
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
                ? _value._fields
                : fields // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MapValueImpl implements _MapValue {
  const _$MapValueImpl({
    @JsonKey(name: 'fields') final Map<String, dynamic>? fields,
  }) : _fields = fields;

  factory _$MapValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapValueImplFromJson(json);

  final Map<String, dynamic>? _fields;
  @override
  @JsonKey(name: 'fields')
  Map<String, dynamic>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableMapView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MapValue(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapValueImpl &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fields));

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
    @JsonKey(name: 'fields') final Map<String, dynamic>? fields,
  }) = _$MapValueImpl;

  factory _MapValue.fromJson(Map<String, dynamic> json) =
      _$MapValueImpl.fromJson;

  @override
  @JsonKey(name: 'fields')
  Map<String, dynamic>? get fields;

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
  @JsonKey(name: 'Color')
  AddedBy? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'Material')
  AddedBy? get material => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'Color') AddedBy? color,
    @JsonKey(name: 'Material') AddedBy? material,
  });

  $AddedByCopyWith<$Res>? get color;
  $AddedByCopyWith<$Res>? get material;
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
  $Res call({Object? color = freezed, Object? material = freezed}) {
    return _then(
      _value.copyWith(
            color:
                freezed == color
                    ? _value.color
                    : color // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
            material:
                freezed == material
                    ? _value.material
                    : material // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
          )
          as $Val,
    );
  }

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddedByCopyWith<$Res>? get color {
    if (_value.color == null) {
      return null;
    }

    return $AddedByCopyWith<$Res>(_value.color!, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddedByCopyWith<$Res>? get material {
    if (_value.material == null) {
      return null;
    }

    return $AddedByCopyWith<$Res>(_value.material!, (value) {
      return _then(_value.copyWith(material: value) as $Val);
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
    @JsonKey(name: 'Color') AddedBy? color,
    @JsonKey(name: 'Material') AddedBy? material,
  });

  @override
  $AddedByCopyWith<$Res>? get color;
  @override
  $AddedByCopyWith<$Res>? get material;
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
  $Res call({Object? color = freezed, Object? material = freezed}) {
    return _then(
      _$MapValueFieldsImpl(
        color:
            freezed == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
        material:
            freezed == material
                ? _value.material
                : material // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MapValueFieldsImpl implements _MapValueFields {
  const _$MapValueFieldsImpl({
    @JsonKey(name: 'Color') this.color,
    @JsonKey(name: 'Material') this.material,
  });

  factory _$MapValueFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapValueFieldsImplFromJson(json);

  @override
  @JsonKey(name: 'Color')
  final AddedBy? color;
  @override
  @JsonKey(name: 'Material')
  final AddedBy? material;

  @override
  String toString() {
    return 'MapValueFields(color: $color, material: $material)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapValueFieldsImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.material, material) ||
                other.material == material));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, color, material);

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
    @JsonKey(name: 'Color') final AddedBy? color,
    @JsonKey(name: 'Material') final AddedBy? material,
  }) = _$MapValueFieldsImpl;

  factory _MapValueFields.fromJson(Map<String, dynamic> json) =
      _$MapValueFieldsImpl.fromJson;

  @override
  @JsonKey(name: 'Color')
  AddedBy? get color;
  @override
  @JsonKey(name: 'Material')
  AddedBy? get material;

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapValueFieldsImplCopyWith<_$MapValueFieldsImpl> get copyWith =>
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

ProductImage _$ProductImageFromJson(Map<String, dynamic> json) {
  return _ProductImage.fromJson(json);
}

/// @nodoc
mixin _$ProductImage {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this ProductImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImageCopyWith<ProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageCopyWith<$Res> {
  factory $ProductImageCopyWith(
    ProductImage value,
    $Res Function(ProductImage) then,
  ) = _$ProductImageCopyWithImpl<$Res, ProductImage>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$ProductImageCopyWithImpl<$Res, $Val extends ProductImage>
    implements $ProductImageCopyWith<$Res> {
  _$ProductImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImage
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
abstract class _$$ProductImageImplCopyWith<$Res>
    implements $ProductImageCopyWith<$Res> {
  factory _$$ProductImageImplCopyWith(
    _$ProductImageImpl value,
    $Res Function(_$ProductImageImpl) then,
  ) = __$$ProductImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$ProductImageImplCopyWithImpl<$Res>
    extends _$ProductImageCopyWithImpl<$Res, _$ProductImageImpl>
    implements _$$ProductImageImplCopyWith<$Res> {
  __$$ProductImageImplCopyWithImpl(
    _$ProductImageImpl _value,
    $Res Function(_$ProductImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$ProductImageImpl(
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
class _$ProductImageImpl implements _ProductImage {
  const _$ProductImageImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$ProductImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImageImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'ProductImage(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageImplCopyWith<_$ProductImageImpl> get copyWith =>
      __$$ProductImageImplCopyWithImpl<_$ProductImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageImplToJson(this);
  }
}

abstract class _ProductImage implements ProductImage {
  const factory _ProductImage({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$ProductImageImpl;

  factory _ProductImage.fromJson(Map<String, dynamic> json) =
      _$ProductImageImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImageImplCopyWith<_$ProductImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
