// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderDomain _$OrderDomainFromJson(Map<String, dynamic> json) {
  return _OrderDomain.fromJson(json);
}

/// @nodoc
mixin _$OrderDomain {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'fields')
  Fields? get fields => throw _privateConstructorUsedError;
  @JsonKey(name: 'createTime')
  String? get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateTime')
  String? get updateTime => throw _privateConstructorUsedError;

  /// Serializes this OrderDomain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDomainCopyWith<OrderDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDomainCopyWith<$Res> {
  factory $OrderDomainCopyWith(
    OrderDomain value,
    $Res Function(OrderDomain) then,
  ) = _$OrderDomainCopyWithImpl<$Res, OrderDomain>;
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
class _$OrderDomainCopyWithImpl<$Res, $Val extends OrderDomain>
    implements $OrderDomainCopyWith<$Res> {
  _$OrderDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDomain
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

  /// Create a copy of OrderDomain
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
abstract class _$$OrderDomainImplCopyWith<$Res>
    implements $OrderDomainCopyWith<$Res> {
  factory _$$OrderDomainImplCopyWith(
    _$OrderDomainImpl value,
    $Res Function(_$OrderDomainImpl) then,
  ) = __$$OrderDomainImplCopyWithImpl<$Res>;
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
class __$$OrderDomainImplCopyWithImpl<$Res>
    extends _$OrderDomainCopyWithImpl<$Res, _$OrderDomainImpl>
    implements _$$OrderDomainImplCopyWith<$Res> {
  __$$OrderDomainImplCopyWithImpl(
    _$OrderDomainImpl _value,
    $Res Function(_$OrderDomainImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderDomain
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
      _$OrderDomainImpl(
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
class _$OrderDomainImpl implements _OrderDomain {
  const _$OrderDomainImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'fields') this.fields,
    @JsonKey(name: 'createTime') this.createTime,
    @JsonKey(name: 'updateTime') this.updateTime,
  });

  factory _$OrderDomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDomainImplFromJson(json);

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
    return 'OrderDomain(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDomainImpl &&
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

  /// Create a copy of OrderDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDomainImplCopyWith<_$OrderDomainImpl> get copyWith =>
      __$$OrderDomainImplCopyWithImpl<_$OrderDomainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDomainImplToJson(this);
  }
}

abstract class _OrderDomain implements OrderDomain {
  const factory _OrderDomain({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'fields') final Fields? fields,
    @JsonKey(name: 'createTime') final String? createTime,
    @JsonKey(name: 'updateTime') final String? updateTime,
  }) = _$OrderDomainImpl;

  factory _OrderDomain.fromJson(Map<String, dynamic> json) =
      _$OrderDomainImpl.fromJson;

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

  /// Create a copy of OrderDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDomainImplCopyWith<_$OrderDomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return _Fields.fromJson(json);
}

/// @nodoc
mixin _$Fields {
  @JsonKey(name: 'total_price')
  SubtotalPrice? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_date')
  DeliveryDate? get deliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  CustomerId? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  CustomerId? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtotal_price')
  SubtotalPrice? get subtotalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  CustomerId? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_id')
  CustomerId? get salesId => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  CustomerId? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  CustomerId? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  Products? get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_discount')
  SubtotalPrice? get totalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_status')
  CustomerId? get deliveryStatus => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'total_price') SubtotalPrice? totalPrice,
    @JsonKey(name: 'delivery_date') DeliveryDate? deliveryDate,
    @JsonKey(name: 'order_status') CustomerId? orderStatus,
    @JsonKey(name: 'customer_id') CustomerId? customerId,
    @JsonKey(name: 'subtotal_price') SubtotalPrice? subtotalPrice,
    @JsonKey(name: 'payment_status') CustomerId? paymentStatus,
    @JsonKey(name: 'sales_id') CustomerId? salesId,
    @JsonKey(name: 'notes') CustomerId? notes,
    @JsonKey(name: 'payment_method') CustomerId? paymentMethod,
    @JsonKey(name: 'products') Products? products,
    @JsonKey(name: 'total_discount') SubtotalPrice? totalDiscount,
    @JsonKey(name: 'delivery_status') CustomerId? deliveryStatus,
  });

  $SubtotalPriceCopyWith<$Res>? get totalPrice;
  $DeliveryDateCopyWith<$Res>? get deliveryDate;
  $CustomerIdCopyWith<$Res>? get orderStatus;
  $CustomerIdCopyWith<$Res>? get customerId;
  $SubtotalPriceCopyWith<$Res>? get subtotalPrice;
  $CustomerIdCopyWith<$Res>? get paymentStatus;
  $CustomerIdCopyWith<$Res>? get salesId;
  $CustomerIdCopyWith<$Res>? get notes;
  $CustomerIdCopyWith<$Res>? get paymentMethod;
  $ProductsCopyWith<$Res>? get products;
  $SubtotalPriceCopyWith<$Res>? get totalDiscount;
  $CustomerIdCopyWith<$Res>? get deliveryStatus;
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
    Object? totalPrice = freezed,
    Object? deliveryDate = freezed,
    Object? orderStatus = freezed,
    Object? customerId = freezed,
    Object? subtotalPrice = freezed,
    Object? paymentStatus = freezed,
    Object? salesId = freezed,
    Object? notes = freezed,
    Object? paymentMethod = freezed,
    Object? products = freezed,
    Object? totalDiscount = freezed,
    Object? deliveryStatus = freezed,
  }) {
    return _then(
      _value.copyWith(
            totalPrice:
                freezed == totalPrice
                    ? _value.totalPrice
                    : totalPrice // ignore: cast_nullable_to_non_nullable
                        as SubtotalPrice?,
            deliveryDate:
                freezed == deliveryDate
                    ? _value.deliveryDate
                    : deliveryDate // ignore: cast_nullable_to_non_nullable
                        as DeliveryDate?,
            orderStatus:
                freezed == orderStatus
                    ? _value.orderStatus
                    : orderStatus // ignore: cast_nullable_to_non_nullable
                        as CustomerId?,
            customerId:
                freezed == customerId
                    ? _value.customerId
                    : customerId // ignore: cast_nullable_to_non_nullable
                        as CustomerId?,
            subtotalPrice:
                freezed == subtotalPrice
                    ? _value.subtotalPrice
                    : subtotalPrice // ignore: cast_nullable_to_non_nullable
                        as SubtotalPrice?,
            paymentStatus:
                freezed == paymentStatus
                    ? _value.paymentStatus
                    : paymentStatus // ignore: cast_nullable_to_non_nullable
                        as CustomerId?,
            salesId:
                freezed == salesId
                    ? _value.salesId
                    : salesId // ignore: cast_nullable_to_non_nullable
                        as CustomerId?,
            notes:
                freezed == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as CustomerId?,
            paymentMethod:
                freezed == paymentMethod
                    ? _value.paymentMethod
                    : paymentMethod // ignore: cast_nullable_to_non_nullable
                        as CustomerId?,
            products:
                freezed == products
                    ? _value.products
                    : products // ignore: cast_nullable_to_non_nullable
                        as Products?,
            totalDiscount:
                freezed == totalDiscount
                    ? _value.totalDiscount
                    : totalDiscount // ignore: cast_nullable_to_non_nullable
                        as SubtotalPrice?,
            deliveryStatus:
                freezed == deliveryStatus
                    ? _value.deliveryStatus
                    : deliveryStatus // ignore: cast_nullable_to_non_nullable
                        as CustomerId?,
          )
          as $Val,
    );
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubtotalPriceCopyWith<$Res>? get totalPrice {
    if (_value.totalPrice == null) {
      return null;
    }

    return $SubtotalPriceCopyWith<$Res>(_value.totalPrice!, (value) {
      return _then(_value.copyWith(totalPrice: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryDateCopyWith<$Res>? get deliveryDate {
    if (_value.deliveryDate == null) {
      return null;
    }

    return $DeliveryDateCopyWith<$Res>(_value.deliveryDate!, (value) {
      return _then(_value.copyWith(deliveryDate: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerIdCopyWith<$Res>? get orderStatus {
    if (_value.orderStatus == null) {
      return null;
    }

    return $CustomerIdCopyWith<$Res>(_value.orderStatus!, (value) {
      return _then(_value.copyWith(orderStatus: value) as $Val);
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
  $SubtotalPriceCopyWith<$Res>? get subtotalPrice {
    if (_value.subtotalPrice == null) {
      return null;
    }

    return $SubtotalPriceCopyWith<$Res>(_value.subtotalPrice!, (value) {
      return _then(_value.copyWith(subtotalPrice: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerIdCopyWith<$Res>? get paymentStatus {
    if (_value.paymentStatus == null) {
      return null;
    }

    return $CustomerIdCopyWith<$Res>(_value.paymentStatus!, (value) {
      return _then(_value.copyWith(paymentStatus: value) as $Val);
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
  $CustomerIdCopyWith<$Res>? get notes {
    if (_value.notes == null) {
      return null;
    }

    return $CustomerIdCopyWith<$Res>(_value.notes!, (value) {
      return _then(_value.copyWith(notes: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerIdCopyWith<$Res>? get paymentMethod {
    if (_value.paymentMethod == null) {
      return null;
    }

    return $CustomerIdCopyWith<$Res>(_value.paymentMethod!, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsCopyWith<$Res>? get products {
    if (_value.products == null) {
      return null;
    }

    return $ProductsCopyWith<$Res>(_value.products!, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubtotalPriceCopyWith<$Res>? get totalDiscount {
    if (_value.totalDiscount == null) {
      return null;
    }

    return $SubtotalPriceCopyWith<$Res>(_value.totalDiscount!, (value) {
      return _then(_value.copyWith(totalDiscount: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerIdCopyWith<$Res>? get deliveryStatus {
    if (_value.deliveryStatus == null) {
      return null;
    }

    return $CustomerIdCopyWith<$Res>(_value.deliveryStatus!, (value) {
      return _then(_value.copyWith(deliveryStatus: value) as $Val);
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
    @JsonKey(name: 'total_price') SubtotalPrice? totalPrice,
    @JsonKey(name: 'delivery_date') DeliveryDate? deliveryDate,
    @JsonKey(name: 'order_status') CustomerId? orderStatus,
    @JsonKey(name: 'customer_id') CustomerId? customerId,
    @JsonKey(name: 'subtotal_price') SubtotalPrice? subtotalPrice,
    @JsonKey(name: 'payment_status') CustomerId? paymentStatus,
    @JsonKey(name: 'sales_id') CustomerId? salesId,
    @JsonKey(name: 'notes') CustomerId? notes,
    @JsonKey(name: 'payment_method') CustomerId? paymentMethod,
    @JsonKey(name: 'products') Products? products,
    @JsonKey(name: 'total_discount') SubtotalPrice? totalDiscount,
    @JsonKey(name: 'delivery_status') CustomerId? deliveryStatus,
  });

  @override
  $SubtotalPriceCopyWith<$Res>? get totalPrice;
  @override
  $DeliveryDateCopyWith<$Res>? get deliveryDate;
  @override
  $CustomerIdCopyWith<$Res>? get orderStatus;
  @override
  $CustomerIdCopyWith<$Res>? get customerId;
  @override
  $SubtotalPriceCopyWith<$Res>? get subtotalPrice;
  @override
  $CustomerIdCopyWith<$Res>? get paymentStatus;
  @override
  $CustomerIdCopyWith<$Res>? get salesId;
  @override
  $CustomerIdCopyWith<$Res>? get notes;
  @override
  $CustomerIdCopyWith<$Res>? get paymentMethod;
  @override
  $ProductsCopyWith<$Res>? get products;
  @override
  $SubtotalPriceCopyWith<$Res>? get totalDiscount;
  @override
  $CustomerIdCopyWith<$Res>? get deliveryStatus;
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
    Object? totalPrice = freezed,
    Object? deliveryDate = freezed,
    Object? orderStatus = freezed,
    Object? customerId = freezed,
    Object? subtotalPrice = freezed,
    Object? paymentStatus = freezed,
    Object? salesId = freezed,
    Object? notes = freezed,
    Object? paymentMethod = freezed,
    Object? products = freezed,
    Object? totalDiscount = freezed,
    Object? deliveryStatus = freezed,
  }) {
    return _then(
      _$FieldsImpl(
        totalPrice:
            freezed == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                    as SubtotalPrice?,
        deliveryDate:
            freezed == deliveryDate
                ? _value.deliveryDate
                : deliveryDate // ignore: cast_nullable_to_non_nullable
                    as DeliveryDate?,
        orderStatus:
            freezed == orderStatus
                ? _value.orderStatus
                : orderStatus // ignore: cast_nullable_to_non_nullable
                    as CustomerId?,
        customerId:
            freezed == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                    as CustomerId?,
        subtotalPrice:
            freezed == subtotalPrice
                ? _value.subtotalPrice
                : subtotalPrice // ignore: cast_nullable_to_non_nullable
                    as SubtotalPrice?,
        paymentStatus:
            freezed == paymentStatus
                ? _value.paymentStatus
                : paymentStatus // ignore: cast_nullable_to_non_nullable
                    as CustomerId?,
        salesId:
            freezed == salesId
                ? _value.salesId
                : salesId // ignore: cast_nullable_to_non_nullable
                    as CustomerId?,
        notes:
            freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as CustomerId?,
        paymentMethod:
            freezed == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                    as CustomerId?,
        products:
            freezed == products
                ? _value.products
                : products // ignore: cast_nullable_to_non_nullable
                    as Products?,
        totalDiscount:
            freezed == totalDiscount
                ? _value.totalDiscount
                : totalDiscount // ignore: cast_nullable_to_non_nullable
                    as SubtotalPrice?,
        deliveryStatus:
            freezed == deliveryStatus
                ? _value.deliveryStatus
                : deliveryStatus // ignore: cast_nullable_to_non_nullable
                    as CustomerId?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsImpl implements _Fields {
  const _$FieldsImpl({
    @JsonKey(name: 'total_price') this.totalPrice,
    @JsonKey(name: 'delivery_date') this.deliveryDate,
    @JsonKey(name: 'order_status') this.orderStatus,
    @JsonKey(name: 'customer_id') this.customerId,
    @JsonKey(name: 'subtotal_price') this.subtotalPrice,
    @JsonKey(name: 'payment_status') this.paymentStatus,
    @JsonKey(name: 'sales_id') this.salesId,
    @JsonKey(name: 'notes') this.notes,
    @JsonKey(name: 'payment_method') this.paymentMethod,
    @JsonKey(name: 'products') this.products,
    @JsonKey(name: 'total_discount') this.totalDiscount,
    @JsonKey(name: 'delivery_status') this.deliveryStatus,
  });

  factory _$FieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsImplFromJson(json);

  @override
  @JsonKey(name: 'total_price')
  final SubtotalPrice? totalPrice;
  @override
  @JsonKey(name: 'delivery_date')
  final DeliveryDate? deliveryDate;
  @override
  @JsonKey(name: 'order_status')
  final CustomerId? orderStatus;
  @override
  @JsonKey(name: 'customer_id')
  final CustomerId? customerId;
  @override
  @JsonKey(name: 'subtotal_price')
  final SubtotalPrice? subtotalPrice;
  @override
  @JsonKey(name: 'payment_status')
  final CustomerId? paymentStatus;
  @override
  @JsonKey(name: 'sales_id')
  final CustomerId? salesId;
  @override
  @JsonKey(name: 'notes')
  final CustomerId? notes;
  @override
  @JsonKey(name: 'payment_method')
  final CustomerId? paymentMethod;
  @override
  @JsonKey(name: 'products')
  final Products? products;
  @override
  @JsonKey(name: 'total_discount')
  final SubtotalPrice? totalDiscount;
  @override
  @JsonKey(name: 'delivery_status')
  final CustomerId? deliveryStatus;

  @override
  String toString() {
    return 'Fields(totalPrice: $totalPrice, deliveryDate: $deliveryDate, orderStatus: $orderStatus, customerId: $customerId, subtotalPrice: $subtotalPrice, paymentStatus: $paymentStatus, salesId: $salesId, notes: $notes, paymentMethod: $paymentMethod, products: $products, totalDiscount: $totalDiscount, deliveryStatus: $deliveryStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsImpl &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.subtotalPrice, subtotalPrice) ||
                other.subtotalPrice == subtotalPrice) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.salesId, salesId) || other.salesId == salesId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalPrice,
    deliveryDate,
    orderStatus,
    customerId,
    subtotalPrice,
    paymentStatus,
    salesId,
    notes,
    paymentMethod,
    products,
    totalDiscount,
    deliveryStatus,
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
    @JsonKey(name: 'total_price') final SubtotalPrice? totalPrice,
    @JsonKey(name: 'delivery_date') final DeliveryDate? deliveryDate,
    @JsonKey(name: 'order_status') final CustomerId? orderStatus,
    @JsonKey(name: 'customer_id') final CustomerId? customerId,
    @JsonKey(name: 'subtotal_price') final SubtotalPrice? subtotalPrice,
    @JsonKey(name: 'payment_status') final CustomerId? paymentStatus,
    @JsonKey(name: 'sales_id') final CustomerId? salesId,
    @JsonKey(name: 'notes') final CustomerId? notes,
    @JsonKey(name: 'payment_method') final CustomerId? paymentMethod,
    @JsonKey(name: 'products') final Products? products,
    @JsonKey(name: 'total_discount') final SubtotalPrice? totalDiscount,
    @JsonKey(name: 'delivery_status') final CustomerId? deliveryStatus,
  }) = _$FieldsImpl;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$FieldsImpl.fromJson;

  @override
  @JsonKey(name: 'total_price')
  SubtotalPrice? get totalPrice;
  @override
  @JsonKey(name: 'delivery_date')
  DeliveryDate? get deliveryDate;
  @override
  @JsonKey(name: 'order_status')
  CustomerId? get orderStatus;
  @override
  @JsonKey(name: 'customer_id')
  CustomerId? get customerId;
  @override
  @JsonKey(name: 'subtotal_price')
  SubtotalPrice? get subtotalPrice;
  @override
  @JsonKey(name: 'payment_status')
  CustomerId? get paymentStatus;
  @override
  @JsonKey(name: 'sales_id')
  CustomerId? get salesId;
  @override
  @JsonKey(name: 'notes')
  CustomerId? get notes;
  @override
  @JsonKey(name: 'payment_method')
  CustomerId? get paymentMethod;
  @override
  @JsonKey(name: 'products')
  Products? get products;
  @override
  @JsonKey(name: 'total_discount')
  SubtotalPrice? get totalDiscount;
  @override
  @JsonKey(name: 'delivery_status')
  CustomerId? get deliveryStatus;

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

DeliveryDate _$DeliveryDateFromJson(Map<String, dynamic> json) {
  return _DeliveryDate.fromJson(json);
}

/// @nodoc
mixin _$DeliveryDate {
  @JsonKey(name: 'timestampValue')
  String? get timestampValue => throw _privateConstructorUsedError;

  /// Serializes this DeliveryDate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryDateCopyWith<DeliveryDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDateCopyWith<$Res> {
  factory $DeliveryDateCopyWith(
    DeliveryDate value,
    $Res Function(DeliveryDate) then,
  ) = _$DeliveryDateCopyWithImpl<$Res, DeliveryDate>;
  @useResult
  $Res call({@JsonKey(name: 'timestampValue') String? timestampValue});
}

/// @nodoc
class _$DeliveryDateCopyWithImpl<$Res, $Val extends DeliveryDate>
    implements $DeliveryDateCopyWith<$Res> {
  _$DeliveryDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryDate
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
abstract class _$$DeliveryDateImplCopyWith<$Res>
    implements $DeliveryDateCopyWith<$Res> {
  factory _$$DeliveryDateImplCopyWith(
    _$DeliveryDateImpl value,
    $Res Function(_$DeliveryDateImpl) then,
  ) = __$$DeliveryDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'timestampValue') String? timestampValue});
}

/// @nodoc
class __$$DeliveryDateImplCopyWithImpl<$Res>
    extends _$DeliveryDateCopyWithImpl<$Res, _$DeliveryDateImpl>
    implements _$$DeliveryDateImplCopyWith<$Res> {
  __$$DeliveryDateImplCopyWithImpl(
    _$DeliveryDateImpl _value,
    $Res Function(_$DeliveryDateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? timestampValue = freezed}) {
    return _then(
      _$DeliveryDateImpl(
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
class _$DeliveryDateImpl implements _DeliveryDate {
  const _$DeliveryDateImpl({
    @JsonKey(name: 'timestampValue') this.timestampValue,
  });

  factory _$DeliveryDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryDateImplFromJson(json);

  @override
  @JsonKey(name: 'timestampValue')
  final String? timestampValue;

  @override
  String toString() {
    return 'DeliveryDate(timestampValue: $timestampValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDateImpl &&
            (identical(other.timestampValue, timestampValue) ||
                other.timestampValue == timestampValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timestampValue);

  /// Create a copy of DeliveryDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryDateImplCopyWith<_$DeliveryDateImpl> get copyWith =>
      __$$DeliveryDateImplCopyWithImpl<_$DeliveryDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryDateImplToJson(this);
  }
}

abstract class _DeliveryDate implements DeliveryDate {
  const factory _DeliveryDate({
    @JsonKey(name: 'timestampValue') final String? timestampValue,
  }) = _$DeliveryDateImpl;

  factory _DeliveryDate.fromJson(Map<String, dynamic> json) =
      _$DeliveryDateImpl.fromJson;

  @override
  @JsonKey(name: 'timestampValue')
  String? get timestampValue;

  /// Create a copy of DeliveryDate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryDateImplCopyWith<_$DeliveryDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Products _$ProductsFromJson(Map<String, dynamic> json) {
  return _Products.fromJson(json);
}

/// @nodoc
mixin _$Products {
  @JsonKey(name: 'arrayValue')
  ArrayValue? get arrayValue => throw _privateConstructorUsedError;

  /// Serializes this Products to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Products
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res, Products>;
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') ArrayValue? arrayValue});

  $ArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res, $Val extends Products>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Products
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

  /// Create a copy of Products
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
abstract class _$$ProductsImplCopyWith<$Res>
    implements $ProductsCopyWith<$Res> {
  factory _$$ProductsImplCopyWith(
    _$ProductsImpl value,
    $Res Function(_$ProductsImpl) then,
  ) = __$$ProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') ArrayValue? arrayValue});

  @override
  $ArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class __$$ProductsImplCopyWithImpl<$Res>
    extends _$ProductsCopyWithImpl<$Res, _$ProductsImpl>
    implements _$$ProductsImplCopyWith<$Res> {
  __$$ProductsImplCopyWithImpl(
    _$ProductsImpl _value,
    $Res Function(_$ProductsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Products
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? arrayValue = freezed}) {
    return _then(
      _$ProductsImpl(
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
class _$ProductsImpl implements _Products {
  const _$ProductsImpl({@JsonKey(name: 'arrayValue') this.arrayValue});

  factory _$ProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsImplFromJson(json);

  @override
  @JsonKey(name: 'arrayValue')
  final ArrayValue? arrayValue;

  @override
  String toString() {
    return 'Products(arrayValue: $arrayValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsImpl &&
            (identical(other.arrayValue, arrayValue) ||
                other.arrayValue == arrayValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arrayValue);

  /// Create a copy of Products
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      __$$ProductsImplCopyWithImpl<_$ProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsImplToJson(this);
  }
}

abstract class _Products implements Products {
  const factory _Products({
    @JsonKey(name: 'arrayValue') final ArrayValue? arrayValue,
  }) = _$ProductsImpl;

  factory _Products.fromJson(Map<String, dynamic> json) =
      _$ProductsImpl.fromJson;

  @override
  @JsonKey(name: 'arrayValue')
  ArrayValue? get arrayValue;

  /// Create a copy of Products
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
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
  MapValue? get mapValue => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'mapValue') MapValue? mapValue});

  $MapValueCopyWith<$Res>? get mapValue;
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
                        as MapValue?,
          )
          as $Val,
    );
  }

  /// Create a copy of Value
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
abstract class _$$ValueImplCopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory _$$ValueImplCopyWith(
    _$ValueImpl value,
    $Res Function(_$ValueImpl) then,
  ) = __$$ValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'mapValue') MapValue? mapValue});

  @override
  $MapValueCopyWith<$Res>? get mapValue;
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
                    as MapValue?,
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
  final MapValue? mapValue;

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
  const factory _Value({@JsonKey(name: 'mapValue') final MapValue? mapValue}) =
      _$ValueImpl;

  factory _Value.fromJson(Map<String, dynamic> json) = _$ValueImpl.fromJson;

  @override
  @JsonKey(name: 'mapValue')
  MapValue? get mapValue;

  /// Create a copy of Value
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
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
  @JsonKey(name: 'product_id')
  CustomerId? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  SubtotalPrice? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  Discount? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  SubtotalPrice? get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  SubtotalPrice? get totalPrice => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'product_id') CustomerId? productId,
    @JsonKey(name: 'quantity') SubtotalPrice? quantity,
    @JsonKey(name: 'discount') Discount? discount,
    @JsonKey(name: 'unit_price') SubtotalPrice? unitPrice,
    @JsonKey(name: 'total_price') SubtotalPrice? totalPrice,
  });

  $CustomerIdCopyWith<$Res>? get productId;
  $SubtotalPriceCopyWith<$Res>? get quantity;
  $DiscountCopyWith<$Res>? get discount;
  $SubtotalPriceCopyWith<$Res>? get unitPrice;
  $SubtotalPriceCopyWith<$Res>? get totalPrice;
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
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? discount = freezed,
    Object? unitPrice = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(
      _value.copyWith(
            productId:
                freezed == productId
                    ? _value.productId
                    : productId // ignore: cast_nullable_to_non_nullable
                        as CustomerId?,
            quantity:
                freezed == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as SubtotalPrice?,
            discount:
                freezed == discount
                    ? _value.discount
                    : discount // ignore: cast_nullable_to_non_nullable
                        as Discount?,
            unitPrice:
                freezed == unitPrice
                    ? _value.unitPrice
                    : unitPrice // ignore: cast_nullable_to_non_nullable
                        as SubtotalPrice?,
            totalPrice:
                freezed == totalPrice
                    ? _value.totalPrice
                    : totalPrice // ignore: cast_nullable_to_non_nullable
                        as SubtotalPrice?,
          )
          as $Val,
    );
  }

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerIdCopyWith<$Res>? get productId {
    if (_value.productId == null) {
      return null;
    }

    return $CustomerIdCopyWith<$Res>(_value.productId!, (value) {
      return _then(_value.copyWith(productId: value) as $Val);
    });
  }

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubtotalPriceCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $SubtotalPriceCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCopyWith<$Res>? get discount {
    if (_value.discount == null) {
      return null;
    }

    return $DiscountCopyWith<$Res>(_value.discount!, (value) {
      return _then(_value.copyWith(discount: value) as $Val);
    });
  }

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubtotalPriceCopyWith<$Res>? get unitPrice {
    if (_value.unitPrice == null) {
      return null;
    }

    return $SubtotalPriceCopyWith<$Res>(_value.unitPrice!, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubtotalPriceCopyWith<$Res>? get totalPrice {
    if (_value.totalPrice == null) {
      return null;
    }

    return $SubtotalPriceCopyWith<$Res>(_value.totalPrice!, (value) {
      return _then(_value.copyWith(totalPrice: value) as $Val);
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
    @JsonKey(name: 'product_id') CustomerId? productId,
    @JsonKey(name: 'quantity') SubtotalPrice? quantity,
    @JsonKey(name: 'discount') Discount? discount,
    @JsonKey(name: 'unit_price') SubtotalPrice? unitPrice,
    @JsonKey(name: 'total_price') SubtotalPrice? totalPrice,
  });

  @override
  $CustomerIdCopyWith<$Res>? get productId;
  @override
  $SubtotalPriceCopyWith<$Res>? get quantity;
  @override
  $DiscountCopyWith<$Res>? get discount;
  @override
  $SubtotalPriceCopyWith<$Res>? get unitPrice;
  @override
  $SubtotalPriceCopyWith<$Res>? get totalPrice;
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
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? discount = freezed,
    Object? unitPrice = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(
      _$MapValueFieldsImpl(
        productId:
            freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                    as CustomerId?,
        quantity:
            freezed == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as SubtotalPrice?,
        discount:
            freezed == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                    as Discount?,
        unitPrice:
            freezed == unitPrice
                ? _value.unitPrice
                : unitPrice // ignore: cast_nullable_to_non_nullable
                    as SubtotalPrice?,
        totalPrice:
            freezed == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                    as SubtotalPrice?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MapValueFieldsImpl implements _MapValueFields {
  const _$MapValueFieldsImpl({
    @JsonKey(name: 'product_id') this.productId,
    @JsonKey(name: 'quantity') this.quantity,
    @JsonKey(name: 'discount') this.discount,
    @JsonKey(name: 'unit_price') this.unitPrice,
    @JsonKey(name: 'total_price') this.totalPrice,
  });

  factory _$MapValueFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapValueFieldsImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final CustomerId? productId;
  @override
  @JsonKey(name: 'quantity')
  final SubtotalPrice? quantity;
  @override
  @JsonKey(name: 'discount')
  final Discount? discount;
  @override
  @JsonKey(name: 'unit_price')
  final SubtotalPrice? unitPrice;
  @override
  @JsonKey(name: 'total_price')
  final SubtotalPrice? totalPrice;

  @override
  String toString() {
    return 'MapValueFields(productId: $productId, quantity: $quantity, discount: $discount, unitPrice: $unitPrice, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapValueFieldsImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productId,
    quantity,
    discount,
    unitPrice,
    totalPrice,
  );

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
    @JsonKey(name: 'product_id') final CustomerId? productId,
    @JsonKey(name: 'quantity') final SubtotalPrice? quantity,
    @JsonKey(name: 'discount') final Discount? discount,
    @JsonKey(name: 'unit_price') final SubtotalPrice? unitPrice,
    @JsonKey(name: 'total_price') final SubtotalPrice? totalPrice,
  }) = _$MapValueFieldsImpl;

  factory _MapValueFields.fromJson(Map<String, dynamic> json) =
      _$MapValueFieldsImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  CustomerId? get productId;
  @override
  @JsonKey(name: 'quantity')
  SubtotalPrice? get quantity;
  @override
  @JsonKey(name: 'discount')
  Discount? get discount;
  @override
  @JsonKey(name: 'unit_price')
  SubtotalPrice? get unitPrice;
  @override
  @JsonKey(name: 'total_price')
  SubtotalPrice? get totalPrice;

  /// Create a copy of MapValueFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapValueFieldsImplCopyWith<_$MapValueFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Discount _$DiscountFromJson(Map<String, dynamic> json) {
  return _Discount.fromJson(json);
}

/// @nodoc
mixin _$Discount {
  @JsonKey(name: 'doubleValue')
  int? get doubleValue => throw _privateConstructorUsedError;

  /// Serializes this Discount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCopyWith<Discount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCopyWith<$Res> {
  factory $DiscountCopyWith(Discount value, $Res Function(Discount) then) =
      _$DiscountCopyWithImpl<$Res, Discount>;
  @useResult
  $Res call({@JsonKey(name: 'doubleValue') int? doubleValue});
}

/// @nodoc
class _$DiscountCopyWithImpl<$Res, $Val extends Discount>
    implements $DiscountCopyWith<$Res> {
  _$DiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Discount
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
abstract class _$$DiscountImplCopyWith<$Res>
    implements $DiscountCopyWith<$Res> {
  factory _$$DiscountImplCopyWith(
    _$DiscountImpl value,
    $Res Function(_$DiscountImpl) then,
  ) = __$$DiscountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'doubleValue') int? doubleValue});
}

/// @nodoc
class __$$DiscountImplCopyWithImpl<$Res>
    extends _$DiscountCopyWithImpl<$Res, _$DiscountImpl>
    implements _$$DiscountImplCopyWith<$Res> {
  __$$DiscountImplCopyWithImpl(
    _$DiscountImpl _value,
    $Res Function(_$DiscountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? doubleValue = freezed}) {
    return _then(
      _$DiscountImpl(
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
class _$DiscountImpl implements _Discount {
  const _$DiscountImpl({@JsonKey(name: 'doubleValue') this.doubleValue});

  factory _$DiscountImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountImplFromJson(json);

  @override
  @JsonKey(name: 'doubleValue')
  final int? doubleValue;

  @override
  String toString() {
    return 'Discount(doubleValue: $doubleValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountImpl &&
            (identical(other.doubleValue, doubleValue) ||
                other.doubleValue == doubleValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, doubleValue);

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountImplCopyWith<_$DiscountImpl> get copyWith =>
      __$$DiscountImplCopyWithImpl<_$DiscountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountImplToJson(this);
  }
}

abstract class _Discount implements Discount {
  const factory _Discount({
    @JsonKey(name: 'doubleValue') final int? doubleValue,
  }) = _$DiscountImpl;

  factory _Discount.fromJson(Map<String, dynamic> json) =
      _$DiscountImpl.fromJson;

  @override
  @JsonKey(name: 'doubleValue')
  int? get doubleValue;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountImplCopyWith<_$DiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubtotalPrice _$SubtotalPriceFromJson(Map<String, dynamic> json) {
  return _SubtotalPrice.fromJson(json);
}

/// @nodoc
mixin _$SubtotalPrice {
  @JsonKey(name: 'integerValue')
  String? get integerValue => throw _privateConstructorUsedError;

  /// Serializes this SubtotalPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubtotalPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubtotalPriceCopyWith<SubtotalPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtotalPriceCopyWith<$Res> {
  factory $SubtotalPriceCopyWith(
    SubtotalPrice value,
    $Res Function(SubtotalPrice) then,
  ) = _$SubtotalPriceCopyWithImpl<$Res, SubtotalPrice>;
  @useResult
  $Res call({@JsonKey(name: 'integerValue') String? integerValue});
}

/// @nodoc
class _$SubtotalPriceCopyWithImpl<$Res, $Val extends SubtotalPrice>
    implements $SubtotalPriceCopyWith<$Res> {
  _$SubtotalPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubtotalPrice
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
abstract class _$$SubtotalPriceImplCopyWith<$Res>
    implements $SubtotalPriceCopyWith<$Res> {
  factory _$$SubtotalPriceImplCopyWith(
    _$SubtotalPriceImpl value,
    $Res Function(_$SubtotalPriceImpl) then,
  ) = __$$SubtotalPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'integerValue') String? integerValue});
}

/// @nodoc
class __$$SubtotalPriceImplCopyWithImpl<$Res>
    extends _$SubtotalPriceCopyWithImpl<$Res, _$SubtotalPriceImpl>
    implements _$$SubtotalPriceImplCopyWith<$Res> {
  __$$SubtotalPriceImplCopyWithImpl(
    _$SubtotalPriceImpl _value,
    $Res Function(_$SubtotalPriceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubtotalPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? integerValue = freezed}) {
    return _then(
      _$SubtotalPriceImpl(
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
class _$SubtotalPriceImpl implements _SubtotalPrice {
  const _$SubtotalPriceImpl({@JsonKey(name: 'integerValue') this.integerValue});

  factory _$SubtotalPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubtotalPriceImplFromJson(json);

  @override
  @JsonKey(name: 'integerValue')
  final String? integerValue;

  @override
  String toString() {
    return 'SubtotalPrice(integerValue: $integerValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubtotalPriceImpl &&
            (identical(other.integerValue, integerValue) ||
                other.integerValue == integerValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, integerValue);

  /// Create a copy of SubtotalPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubtotalPriceImplCopyWith<_$SubtotalPriceImpl> get copyWith =>
      __$$SubtotalPriceImplCopyWithImpl<_$SubtotalPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubtotalPriceImplToJson(this);
  }
}

abstract class _SubtotalPrice implements SubtotalPrice {
  const factory _SubtotalPrice({
    @JsonKey(name: 'integerValue') final String? integerValue,
  }) = _$SubtotalPriceImpl;

  factory _SubtotalPrice.fromJson(Map<String, dynamic> json) =
      _$SubtotalPriceImpl.fromJson;

  @override
  @JsonKey(name: 'integerValue')
  String? get integerValue;

  /// Create a copy of SubtotalPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubtotalPriceImplCopyWith<_$SubtotalPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
