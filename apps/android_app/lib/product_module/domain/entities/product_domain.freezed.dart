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
  @JsonKey(name: 'product_images')
  ProductImages? get productImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  AddedBy? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  AddedBy? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'available')
  Available? get available => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  AddedBy? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'sizes')
  Sizes? get sizes => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  MinimumOrder? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_order')
  MinimumOrder? get minimumOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit')
  AddedBy? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity_per_box')
  MinimumOrder? get quantityPerBox => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_by')
  AddedBy? get addedBy => throw _privateConstructorUsedError;
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
    @JsonKey(name: 'product_images') ProductImages? productImages,
    @JsonKey(name: 'product_name') AddedBy? productName,
    @JsonKey(name: 'category') AddedBy? category,
    @JsonKey(name: 'available') Available? available,
    @JsonKey(name: 'description') AddedBy? description,
    @JsonKey(name: 'sizes') Sizes? sizes,
    @JsonKey(name: 'price') MinimumOrder? price,
    @JsonKey(name: 'minimum_order') MinimumOrder? minimumOrder,
    @JsonKey(name: 'unit') AddedBy? unit,
    @JsonKey(name: 'quantity_per_box') MinimumOrder? quantityPerBox,
    @JsonKey(name: 'added_by') AddedBy? addedBy,
    @JsonKey(name: 'brand') AddedBy? brand,
  });

  $ProductImagesCopyWith<$Res>? get productImages;
  $AddedByCopyWith<$Res>? get productName;
  $AddedByCopyWith<$Res>? get category;
  $AvailableCopyWith<$Res>? get available;
  $AddedByCopyWith<$Res>? get description;
  $SizesCopyWith<$Res>? get sizes;
  $MinimumOrderCopyWith<$Res>? get price;
  $MinimumOrderCopyWith<$Res>? get minimumOrder;
  $AddedByCopyWith<$Res>? get unit;
  $MinimumOrderCopyWith<$Res>? get quantityPerBox;
  $AddedByCopyWith<$Res>? get addedBy;
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
    Object? productImages = freezed,
    Object? productName = freezed,
    Object? category = freezed,
    Object? available = freezed,
    Object? description = freezed,
    Object? sizes = freezed,
    Object? price = freezed,
    Object? minimumOrder = freezed,
    Object? unit = freezed,
    Object? quantityPerBox = freezed,
    Object? addedBy = freezed,
    Object? brand = freezed,
  }) {
    return _then(
      _value.copyWith(
            productImages:
                freezed == productImages
                    ? _value.productImages
                    : productImages // ignore: cast_nullable_to_non_nullable
                        as ProductImages?,
            productName:
                freezed == productName
                    ? _value.productName
                    : productName // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
            category:
                freezed == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
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
            sizes:
                freezed == sizes
                    ? _value.sizes
                    : sizes // ignore: cast_nullable_to_non_nullable
                        as Sizes?,
            price:
                freezed == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as MinimumOrder?,
            minimumOrder:
                freezed == minimumOrder
                    ? _value.minimumOrder
                    : minimumOrder // ignore: cast_nullable_to_non_nullable
                        as MinimumOrder?,
            unit:
                freezed == unit
                    ? _value.unit
                    : unit // ignore: cast_nullable_to_non_nullable
                        as AddedBy?,
            quantityPerBox:
                freezed == quantityPerBox
                    ? _value.quantityPerBox
                    : quantityPerBox // ignore: cast_nullable_to_non_nullable
                        as MinimumOrder?,
            addedBy:
                freezed == addedBy
                    ? _value.addedBy
                    : addedBy // ignore: cast_nullable_to_non_nullable
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
  $ProductImagesCopyWith<$Res>? get productImages {
    if (_value.productImages == null) {
      return null;
    }

    return $ProductImagesCopyWith<$Res>(_value.productImages!, (value) {
      return _then(_value.copyWith(productImages: value) as $Val);
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
  $AddedByCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $AddedByCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
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
  $SizesCopyWith<$Res>? get sizes {
    if (_value.sizes == null) {
      return null;
    }

    return $SizesCopyWith<$Res>(_value.sizes!, (value) {
      return _then(_value.copyWith(sizes: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinimumOrderCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $MinimumOrderCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinimumOrderCopyWith<$Res>? get minimumOrder {
    if (_value.minimumOrder == null) {
      return null;
    }

    return $MinimumOrderCopyWith<$Res>(_value.minimumOrder!, (value) {
      return _then(_value.copyWith(minimumOrder: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddedByCopyWith<$Res>? get unit {
    if (_value.unit == null) {
      return null;
    }

    return $AddedByCopyWith<$Res>(_value.unit!, (value) {
      return _then(_value.copyWith(unit: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MinimumOrderCopyWith<$Res>? get quantityPerBox {
    if (_value.quantityPerBox == null) {
      return null;
    }

    return $MinimumOrderCopyWith<$Res>(_value.quantityPerBox!, (value) {
      return _then(_value.copyWith(quantityPerBox: value) as $Val);
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
    @JsonKey(name: 'product_images') ProductImages? productImages,
    @JsonKey(name: 'product_name') AddedBy? productName,
    @JsonKey(name: 'category') AddedBy? category,
    @JsonKey(name: 'available') Available? available,
    @JsonKey(name: 'description') AddedBy? description,
    @JsonKey(name: 'sizes') Sizes? sizes,
    @JsonKey(name: 'price') MinimumOrder? price,
    @JsonKey(name: 'minimum_order') MinimumOrder? minimumOrder,
    @JsonKey(name: 'unit') AddedBy? unit,
    @JsonKey(name: 'quantity_per_box') MinimumOrder? quantityPerBox,
    @JsonKey(name: 'added_by') AddedBy? addedBy,
    @JsonKey(name: 'brand') AddedBy? brand,
  });

  @override
  $ProductImagesCopyWith<$Res>? get productImages;
  @override
  $AddedByCopyWith<$Res>? get productName;
  @override
  $AddedByCopyWith<$Res>? get category;
  @override
  $AvailableCopyWith<$Res>? get available;
  @override
  $AddedByCopyWith<$Res>? get description;
  @override
  $SizesCopyWith<$Res>? get sizes;
  @override
  $MinimumOrderCopyWith<$Res>? get price;
  @override
  $MinimumOrderCopyWith<$Res>? get minimumOrder;
  @override
  $AddedByCopyWith<$Res>? get unit;
  @override
  $MinimumOrderCopyWith<$Res>? get quantityPerBox;
  @override
  $AddedByCopyWith<$Res>? get addedBy;
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
    Object? productImages = freezed,
    Object? productName = freezed,
    Object? category = freezed,
    Object? available = freezed,
    Object? description = freezed,
    Object? sizes = freezed,
    Object? price = freezed,
    Object? minimumOrder = freezed,
    Object? unit = freezed,
    Object? quantityPerBox = freezed,
    Object? addedBy = freezed,
    Object? brand = freezed,
  }) {
    return _then(
      _$FieldsImpl(
        productImages:
            freezed == productImages
                ? _value.productImages
                : productImages // ignore: cast_nullable_to_non_nullable
                    as ProductImages?,
        productName:
            freezed == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
        category:
            freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
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
        sizes:
            freezed == sizes
                ? _value.sizes
                : sizes // ignore: cast_nullable_to_non_nullable
                    as Sizes?,
        price:
            freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as MinimumOrder?,
        minimumOrder:
            freezed == minimumOrder
                ? _value.minimumOrder
                : minimumOrder // ignore: cast_nullable_to_non_nullable
                    as MinimumOrder?,
        unit:
            freezed == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                    as AddedBy?,
        quantityPerBox:
            freezed == quantityPerBox
                ? _value.quantityPerBox
                : quantityPerBox // ignore: cast_nullable_to_non_nullable
                    as MinimumOrder?,
        addedBy:
            freezed == addedBy
                ? _value.addedBy
                : addedBy // ignore: cast_nullable_to_non_nullable
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
    @JsonKey(name: 'product_images') this.productImages,
    @JsonKey(name: 'product_name') this.productName,
    @JsonKey(name: 'category') this.category,
    @JsonKey(name: 'available') this.available,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'sizes') this.sizes,
    @JsonKey(name: 'price') this.price,
    @JsonKey(name: 'minimum_order') this.minimumOrder,
    @JsonKey(name: 'unit') this.unit,
    @JsonKey(name: 'quantity_per_box') this.quantityPerBox,
    @JsonKey(name: 'added_by') this.addedBy,
    @JsonKey(name: 'brand') this.brand,
  });

  factory _$FieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsImplFromJson(json);

  @override
  @JsonKey(name: 'product_images')
  final ProductImages? productImages;
  @override
  @JsonKey(name: 'product_name')
  final AddedBy? productName;
  @override
  @JsonKey(name: 'category')
  final AddedBy? category;
  @override
  @JsonKey(name: 'available')
  final Available? available;
  @override
  @JsonKey(name: 'description')
  final AddedBy? description;
  @override
  @JsonKey(name: 'sizes')
  final Sizes? sizes;
  @override
  @JsonKey(name: 'price')
  final MinimumOrder? price;
  @override
  @JsonKey(name: 'minimum_order')
  final MinimumOrder? minimumOrder;
  @override
  @JsonKey(name: 'unit')
  final AddedBy? unit;
  @override
  @JsonKey(name: 'quantity_per_box')
  final MinimumOrder? quantityPerBox;
  @override
  @JsonKey(name: 'added_by')
  final AddedBy? addedBy;
  @override
  @JsonKey(name: 'brand')
  final AddedBy? brand;

  @override
  String toString() {
    return 'Fields(productImages: $productImages, productName: $productName, category: $category, available: $available, description: $description, sizes: $sizes, price: $price, minimumOrder: $minimumOrder, unit: $unit, quantityPerBox: $quantityPerBox, addedBy: $addedBy, brand: $brand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsImpl &&
            (identical(other.productImages, productImages) ||
                other.productImages == productImages) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sizes, sizes) || other.sizes == sizes) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.minimumOrder, minimumOrder) ||
                other.minimumOrder == minimumOrder) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.quantityPerBox, quantityPerBox) ||
                other.quantityPerBox == quantityPerBox) &&
            (identical(other.addedBy, addedBy) || other.addedBy == addedBy) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productImages,
    productName,
    category,
    available,
    description,
    sizes,
    price,
    minimumOrder,
    unit,
    quantityPerBox,
    addedBy,
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
    @JsonKey(name: 'product_images') final ProductImages? productImages,
    @JsonKey(name: 'product_name') final AddedBy? productName,
    @JsonKey(name: 'category') final AddedBy? category,
    @JsonKey(name: 'available') final Available? available,
    @JsonKey(name: 'description') final AddedBy? description,
    @JsonKey(name: 'sizes') final Sizes? sizes,
    @JsonKey(name: 'price') final MinimumOrder? price,
    @JsonKey(name: 'minimum_order') final MinimumOrder? minimumOrder,
    @JsonKey(name: 'unit') final AddedBy? unit,
    @JsonKey(name: 'quantity_per_box') final MinimumOrder? quantityPerBox,
    @JsonKey(name: 'added_by') final AddedBy? addedBy,
    @JsonKey(name: 'brand') final AddedBy? brand,
  }) = _$FieldsImpl;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$FieldsImpl.fromJson;

  @override
  @JsonKey(name: 'product_images')
  ProductImages? get productImages;
  @override
  @JsonKey(name: 'product_name')
  AddedBy? get productName;
  @override
  @JsonKey(name: 'category')
  AddedBy? get category;
  @override
  @JsonKey(name: 'available')
  Available? get available;
  @override
  @JsonKey(name: 'description')
  AddedBy? get description;
  @override
  @JsonKey(name: 'sizes')
  Sizes? get sizes;
  @override
  @JsonKey(name: 'price')
  MinimumOrder? get price;
  @override
  @JsonKey(name: 'minimum_order')
  MinimumOrder? get minimumOrder;
  @override
  @JsonKey(name: 'unit')
  AddedBy? get unit;
  @override
  @JsonKey(name: 'quantity_per_box')
  MinimumOrder? get quantityPerBox;
  @override
  @JsonKey(name: 'added_by')
  AddedBy? get addedBy;
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

MinimumOrder _$MinimumOrderFromJson(Map<String, dynamic> json) {
  return _MinimumOrder.fromJson(json);
}

/// @nodoc
mixin _$MinimumOrder {
  @JsonKey(name: 'integerValue')
  String? get integerValue => throw _privateConstructorUsedError;

  /// Serializes this MinimumOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MinimumOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MinimumOrderCopyWith<MinimumOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinimumOrderCopyWith<$Res> {
  factory $MinimumOrderCopyWith(
    MinimumOrder value,
    $Res Function(MinimumOrder) then,
  ) = _$MinimumOrderCopyWithImpl<$Res, MinimumOrder>;
  @useResult
  $Res call({@JsonKey(name: 'integerValue') String? integerValue});
}

/// @nodoc
class _$MinimumOrderCopyWithImpl<$Res, $Val extends MinimumOrder>
    implements $MinimumOrderCopyWith<$Res> {
  _$MinimumOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MinimumOrder
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
abstract class _$$MinimumOrderImplCopyWith<$Res>
    implements $MinimumOrderCopyWith<$Res> {
  factory _$$MinimumOrderImplCopyWith(
    _$MinimumOrderImpl value,
    $Res Function(_$MinimumOrderImpl) then,
  ) = __$$MinimumOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'integerValue') String? integerValue});
}

/// @nodoc
class __$$MinimumOrderImplCopyWithImpl<$Res>
    extends _$MinimumOrderCopyWithImpl<$Res, _$MinimumOrderImpl>
    implements _$$MinimumOrderImplCopyWith<$Res> {
  __$$MinimumOrderImplCopyWithImpl(
    _$MinimumOrderImpl _value,
    $Res Function(_$MinimumOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MinimumOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? integerValue = freezed}) {
    return _then(
      _$MinimumOrderImpl(
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
class _$MinimumOrderImpl implements _MinimumOrder {
  const _$MinimumOrderImpl({@JsonKey(name: 'integerValue') this.integerValue});

  factory _$MinimumOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinimumOrderImplFromJson(json);

  @override
  @JsonKey(name: 'integerValue')
  final String? integerValue;

  @override
  String toString() {
    return 'MinimumOrder(integerValue: $integerValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinimumOrderImpl &&
            (identical(other.integerValue, integerValue) ||
                other.integerValue == integerValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, integerValue);

  /// Create a copy of MinimumOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MinimumOrderImplCopyWith<_$MinimumOrderImpl> get copyWith =>
      __$$MinimumOrderImplCopyWithImpl<_$MinimumOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MinimumOrderImplToJson(this);
  }
}

abstract class _MinimumOrder implements MinimumOrder {
  const factory _MinimumOrder({
    @JsonKey(name: 'integerValue') final String? integerValue,
  }) = _$MinimumOrderImpl;

  factory _MinimumOrder.fromJson(Map<String, dynamic> json) =
      _$MinimumOrderImpl.fromJson;

  @override
  @JsonKey(name: 'integerValue')
  String? get integerValue;

  /// Create a copy of MinimumOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MinimumOrderImplCopyWith<_$MinimumOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductImages _$ProductImagesFromJson(Map<String, dynamic> json) {
  return _ProductImages.fromJson(json);
}

/// @nodoc
mixin _$ProductImages {
  @JsonKey(name: 'arrayValue')
  ProductImagesArrayValue? get arrayValue => throw _privateConstructorUsedError;

  /// Serializes this ProductImages to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImagesCopyWith<ProductImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImagesCopyWith<$Res> {
  factory $ProductImagesCopyWith(
    ProductImages value,
    $Res Function(ProductImages) then,
  ) = _$ProductImagesCopyWithImpl<$Res, ProductImages>;
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') ProductImagesArrayValue? arrayValue});

  $ProductImagesArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class _$ProductImagesCopyWithImpl<$Res, $Val extends ProductImages>
    implements $ProductImagesCopyWith<$Res> {
  _$ProductImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImages
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
                        as ProductImagesArrayValue?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductImages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductImagesArrayValueCopyWith<$Res>? get arrayValue {
    if (_value.arrayValue == null) {
      return null;
    }

    return $ProductImagesArrayValueCopyWith<$Res>(_value.arrayValue!, (value) {
      return _then(_value.copyWith(arrayValue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImagesImplCopyWith<$Res>
    implements $ProductImagesCopyWith<$Res> {
  factory _$$ProductImagesImplCopyWith(
    _$ProductImagesImpl value,
    $Res Function(_$ProductImagesImpl) then,
  ) = __$$ProductImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') ProductImagesArrayValue? arrayValue});

  @override
  $ProductImagesArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class __$$ProductImagesImplCopyWithImpl<$Res>
    extends _$ProductImagesCopyWithImpl<$Res, _$ProductImagesImpl>
    implements _$$ProductImagesImplCopyWith<$Res> {
  __$$ProductImagesImplCopyWithImpl(
    _$ProductImagesImpl _value,
    $Res Function(_$ProductImagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductImages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? arrayValue = freezed}) {
    return _then(
      _$ProductImagesImpl(
        arrayValue:
            freezed == arrayValue
                ? _value.arrayValue
                : arrayValue // ignore: cast_nullable_to_non_nullable
                    as ProductImagesArrayValue?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImagesImpl implements _ProductImages {
  const _$ProductImagesImpl({@JsonKey(name: 'arrayValue') this.arrayValue});

  factory _$ProductImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImagesImplFromJson(json);

  @override
  @JsonKey(name: 'arrayValue')
  final ProductImagesArrayValue? arrayValue;

  @override
  String toString() {
    return 'ProductImages(arrayValue: $arrayValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImagesImpl &&
            (identical(other.arrayValue, arrayValue) ||
                other.arrayValue == arrayValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arrayValue);

  /// Create a copy of ProductImages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImagesImplCopyWith<_$ProductImagesImpl> get copyWith =>
      __$$ProductImagesImplCopyWithImpl<_$ProductImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImagesImplToJson(this);
  }
}

abstract class _ProductImages implements ProductImages {
  const factory _ProductImages({
    @JsonKey(name: 'arrayValue') final ProductImagesArrayValue? arrayValue,
  }) = _$ProductImagesImpl;

  factory _ProductImages.fromJson(Map<String, dynamic> json) =
      _$ProductImagesImpl.fromJson;

  @override
  @JsonKey(name: 'arrayValue')
  ProductImagesArrayValue? get arrayValue;

  /// Create a copy of ProductImages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImagesImplCopyWith<_$ProductImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductImagesArrayValue _$ProductImagesArrayValueFromJson(
  Map<String, dynamic> json,
) {
  return _ProductImagesArrayValue.fromJson(json);
}

/// @nodoc
mixin _$ProductImagesArrayValue {
  @JsonKey(name: 'values')
  List<Value>? get values => throw _privateConstructorUsedError;

  /// Serializes this ProductImagesArrayValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImagesArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImagesArrayValueCopyWith<ProductImagesArrayValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImagesArrayValueCopyWith<$Res> {
  factory $ProductImagesArrayValueCopyWith(
    ProductImagesArrayValue value,
    $Res Function(ProductImagesArrayValue) then,
  ) = _$ProductImagesArrayValueCopyWithImpl<$Res, ProductImagesArrayValue>;
  @useResult
  $Res call({@JsonKey(name: 'values') List<Value>? values});
}

/// @nodoc
class _$ProductImagesArrayValueCopyWithImpl<
  $Res,
  $Val extends ProductImagesArrayValue
>
    implements $ProductImagesArrayValueCopyWith<$Res> {
  _$ProductImagesArrayValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImagesArrayValue
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
abstract class _$$ProductImagesArrayValueImplCopyWith<$Res>
    implements $ProductImagesArrayValueCopyWith<$Res> {
  factory _$$ProductImagesArrayValueImplCopyWith(
    _$ProductImagesArrayValueImpl value,
    $Res Function(_$ProductImagesArrayValueImpl) then,
  ) = __$$ProductImagesArrayValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'values') List<Value>? values});
}

/// @nodoc
class __$$ProductImagesArrayValueImplCopyWithImpl<$Res>
    extends
        _$ProductImagesArrayValueCopyWithImpl<
          $Res,
          _$ProductImagesArrayValueImpl
        >
    implements _$$ProductImagesArrayValueImplCopyWith<$Res> {
  __$$ProductImagesArrayValueImplCopyWithImpl(
    _$ProductImagesArrayValueImpl _value,
    $Res Function(_$ProductImagesArrayValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductImagesArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? values = freezed}) {
    return _then(
      _$ProductImagesArrayValueImpl(
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
class _$ProductImagesArrayValueImpl implements _ProductImagesArrayValue {
  const _$ProductImagesArrayValueImpl({
    @JsonKey(name: 'values') final List<Value>? values,
  }) : _values = values;

  factory _$ProductImagesArrayValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImagesArrayValueImplFromJson(json);

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
    return 'ProductImagesArrayValue(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImagesArrayValueImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  /// Create a copy of ProductImagesArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImagesArrayValueImplCopyWith<_$ProductImagesArrayValueImpl>
  get copyWith => __$$ProductImagesArrayValueImplCopyWithImpl<
    _$ProductImagesArrayValueImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImagesArrayValueImplToJson(this);
  }
}

abstract class _ProductImagesArrayValue implements ProductImagesArrayValue {
  const factory _ProductImagesArrayValue({
    @JsonKey(name: 'values') final List<Value>? values,
  }) = _$ProductImagesArrayValueImpl;

  factory _ProductImagesArrayValue.fromJson(Map<String, dynamic> json) =
      _$ProductImagesArrayValueImpl.fromJson;

  @override
  @JsonKey(name: 'values')
  List<Value>? get values;

  /// Create a copy of ProductImagesArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImagesArrayValueImplCopyWith<_$ProductImagesArrayValueImpl>
  get copyWith => throw _privateConstructorUsedError;
}

Value _$ValueFromJson(Map<String, dynamic> json) {
  return _Value.fromJson(json);
}

/// @nodoc
mixin _$Value {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
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
abstract class _$$ValueImplCopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory _$$ValueImplCopyWith(
    _$ValueImpl value,
    $Res Function(_$ValueImpl) then,
  ) = __$$ValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
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
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$ValueImpl(
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
class _$ValueImpl implements _Value {
  const _$ValueImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$ValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'Value(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

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
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$ValueImpl;

  factory _Value.fromJson(Map<String, dynamic> json) = _$ValueImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of Value
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sizes _$SizesFromJson(Map<String, dynamic> json) {
  return _Sizes.fromJson(json);
}

/// @nodoc
mixin _$Sizes {
  @JsonKey(name: 'arrayValue')
  SizesArrayValue? get arrayValue => throw _privateConstructorUsedError;

  /// Serializes this Sizes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sizes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SizesCopyWith<Sizes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizesCopyWith<$Res> {
  factory $SizesCopyWith(Sizes value, $Res Function(Sizes) then) =
      _$SizesCopyWithImpl<$Res, Sizes>;
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') SizesArrayValue? arrayValue});

  $SizesArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class _$SizesCopyWithImpl<$Res, $Val extends Sizes>
    implements $SizesCopyWith<$Res> {
  _$SizesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sizes
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
                        as SizesArrayValue?,
          )
          as $Val,
    );
  }

  /// Create a copy of Sizes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SizesArrayValueCopyWith<$Res>? get arrayValue {
    if (_value.arrayValue == null) {
      return null;
    }

    return $SizesArrayValueCopyWith<$Res>(_value.arrayValue!, (value) {
      return _then(_value.copyWith(arrayValue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SizesImplCopyWith<$Res> implements $SizesCopyWith<$Res> {
  factory _$$SizesImplCopyWith(
    _$SizesImpl value,
    $Res Function(_$SizesImpl) then,
  ) = __$$SizesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') SizesArrayValue? arrayValue});

  @override
  $SizesArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class __$$SizesImplCopyWithImpl<$Res>
    extends _$SizesCopyWithImpl<$Res, _$SizesImpl>
    implements _$$SizesImplCopyWith<$Res> {
  __$$SizesImplCopyWithImpl(
    _$SizesImpl _value,
    $Res Function(_$SizesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Sizes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? arrayValue = freezed}) {
    return _then(
      _$SizesImpl(
        arrayValue:
            freezed == arrayValue
                ? _value.arrayValue
                : arrayValue // ignore: cast_nullable_to_non_nullable
                    as SizesArrayValue?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SizesImpl implements _Sizes {
  const _$SizesImpl({@JsonKey(name: 'arrayValue') this.arrayValue});

  factory _$SizesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizesImplFromJson(json);

  @override
  @JsonKey(name: 'arrayValue')
  final SizesArrayValue? arrayValue;

  @override
  String toString() {
    return 'Sizes(arrayValue: $arrayValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizesImpl &&
            (identical(other.arrayValue, arrayValue) ||
                other.arrayValue == arrayValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arrayValue);

  /// Create a copy of Sizes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizesImplCopyWith<_$SizesImpl> get copyWith =>
      __$$SizesImplCopyWithImpl<_$SizesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizesImplToJson(this);
  }
}

abstract class _Sizes implements Sizes {
  const factory _Sizes({
    @JsonKey(name: 'arrayValue') final SizesArrayValue? arrayValue,
  }) = _$SizesImpl;

  factory _Sizes.fromJson(Map<String, dynamic> json) = _$SizesImpl.fromJson;

  @override
  @JsonKey(name: 'arrayValue')
  SizesArrayValue? get arrayValue;

  /// Create a copy of Sizes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizesImplCopyWith<_$SizesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SizesArrayValue _$SizesArrayValueFromJson(Map<String, dynamic> json) {
  return _SizesArrayValue.fromJson(json);
}

/// @nodoc
mixin _$SizesArrayValue {
  @JsonKey(name: 'values')
  List<AddedBy>? get values => throw _privateConstructorUsedError;

  /// Serializes this SizesArrayValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SizesArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SizesArrayValueCopyWith<SizesArrayValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizesArrayValueCopyWith<$Res> {
  factory $SizesArrayValueCopyWith(
    SizesArrayValue value,
    $Res Function(SizesArrayValue) then,
  ) = _$SizesArrayValueCopyWithImpl<$Res, SizesArrayValue>;
  @useResult
  $Res call({@JsonKey(name: 'values') List<AddedBy>? values});
}

/// @nodoc
class _$SizesArrayValueCopyWithImpl<$Res, $Val extends SizesArrayValue>
    implements $SizesArrayValueCopyWith<$Res> {
  _$SizesArrayValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SizesArrayValue
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
                        as List<AddedBy>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SizesArrayValueImplCopyWith<$Res>
    implements $SizesArrayValueCopyWith<$Res> {
  factory _$$SizesArrayValueImplCopyWith(
    _$SizesArrayValueImpl value,
    $Res Function(_$SizesArrayValueImpl) then,
  ) = __$$SizesArrayValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'values') List<AddedBy>? values});
}

/// @nodoc
class __$$SizesArrayValueImplCopyWithImpl<$Res>
    extends _$SizesArrayValueCopyWithImpl<$Res, _$SizesArrayValueImpl>
    implements _$$SizesArrayValueImplCopyWith<$Res> {
  __$$SizesArrayValueImplCopyWithImpl(
    _$SizesArrayValueImpl _value,
    $Res Function(_$SizesArrayValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SizesArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? values = freezed}) {
    return _then(
      _$SizesArrayValueImpl(
        values:
            freezed == values
                ? _value._values
                : values // ignore: cast_nullable_to_non_nullable
                    as List<AddedBy>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SizesArrayValueImpl implements _SizesArrayValue {
  const _$SizesArrayValueImpl({
    @JsonKey(name: 'values') final List<AddedBy>? values,
  }) : _values = values;

  factory _$SizesArrayValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizesArrayValueImplFromJson(json);

  final List<AddedBy>? _values;
  @override
  @JsonKey(name: 'values')
  List<AddedBy>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SizesArrayValue(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizesArrayValueImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  /// Create a copy of SizesArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizesArrayValueImplCopyWith<_$SizesArrayValueImpl> get copyWith =>
      __$$SizesArrayValueImplCopyWithImpl<_$SizesArrayValueImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SizesArrayValueImplToJson(this);
  }
}

abstract class _SizesArrayValue implements SizesArrayValue {
  const factory _SizesArrayValue({
    @JsonKey(name: 'values') final List<AddedBy>? values,
  }) = _$SizesArrayValueImpl;

  factory _SizesArrayValue.fromJson(Map<String, dynamic> json) =
      _$SizesArrayValueImpl.fromJson;

  @override
  @JsonKey(name: 'values')
  List<AddedBy>? get values;

  /// Create a copy of SizesArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizesArrayValueImplCopyWith<_$SizesArrayValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
