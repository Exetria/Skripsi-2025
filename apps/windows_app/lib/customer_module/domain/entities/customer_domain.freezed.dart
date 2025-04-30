// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerDomain _$CustomerDomainFromJson(Map<String, dynamic> json) {
  return _CustomerDomain.fromJson(json);
}

/// @nodoc
mixin _$CustomerDomain {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'fields')
  Fields? get fields => throw _privateConstructorUsedError;
  @JsonKey(name: 'createTime')
  String? get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'updateTime')
  String? get updateTime => throw _privateConstructorUsedError;

  /// Serializes this CustomerDomain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerDomainCopyWith<CustomerDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDomainCopyWith<$Res> {
  factory $CustomerDomainCopyWith(
    CustomerDomain value,
    $Res Function(CustomerDomain) then,
  ) = _$CustomerDomainCopyWithImpl<$Res, CustomerDomain>;
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
class _$CustomerDomainCopyWithImpl<$Res, $Val extends CustomerDomain>
    implements $CustomerDomainCopyWith<$Res> {
  _$CustomerDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerDomain
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

  /// Create a copy of CustomerDomain
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
abstract class _$$CustomerDomainImplCopyWith<$Res>
    implements $CustomerDomainCopyWith<$Res> {
  factory _$$CustomerDomainImplCopyWith(
    _$CustomerDomainImpl value,
    $Res Function(_$CustomerDomainImpl) then,
  ) = __$$CustomerDomainImplCopyWithImpl<$Res>;
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
class __$$CustomerDomainImplCopyWithImpl<$Res>
    extends _$CustomerDomainCopyWithImpl<$Res, _$CustomerDomainImpl>
    implements _$$CustomerDomainImplCopyWith<$Res> {
  __$$CustomerDomainImplCopyWithImpl(
    _$CustomerDomainImpl _value,
    $Res Function(_$CustomerDomainImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerDomain
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
      _$CustomerDomainImpl(
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
class _$CustomerDomainImpl implements _CustomerDomain {
  const _$CustomerDomainImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'fields') this.fields,
    @JsonKey(name: 'createTime') this.createTime,
    @JsonKey(name: 'updateTime') this.updateTime,
  });

  factory _$CustomerDomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDomainImplFromJson(json);

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
    return 'CustomerDomain(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDomainImpl &&
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

  /// Create a copy of CustomerDomain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDomainImplCopyWith<_$CustomerDomainImpl> get copyWith =>
      __$$CustomerDomainImplCopyWithImpl<_$CustomerDomainImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDomainImplToJson(this);
  }
}

abstract class _CustomerDomain implements CustomerDomain {
  const factory _CustomerDomain({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'fields') final Fields? fields,
    @JsonKey(name: 'createTime') final String? createTime,
    @JsonKey(name: 'updateTime') final String? updateTime,
  }) = _$CustomerDomainImpl;

  factory _CustomerDomain.fromJson(Map<String, dynamic> json) =
      _$CustomerDomainImpl.fromJson;

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

  /// Create a copy of CustomerDomain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerDomainImplCopyWith<_$CustomerDomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return _Fields.fromJson(json);
}

/// @nodoc
mixin _$Fields {
  @JsonKey(name: 'purchase_history')
  PurchaseHistory? get purchaseHistory => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  BusinessType? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  Itude? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_address')
  BusinessType? get ownerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscription_type')
  BusinessType? get subscriptionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_number')
  BusinessType? get idNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'preferred_payment_method')
  BusinessType? get preferredPaymentMethod =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  BusinessType? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  Itude? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_zone')
  BusinessType? get deliveryZone => throw _privateConstructorUsedError;
  @JsonKey(name: 'preferred_delivery_time')
  BusinessType? get preferredDeliveryTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_id')
  BusinessType? get taxId => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_photo')
  Photo? get storePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_type')
  BusinessType? get businessType => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_code')
  BusinessType? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'ownership')
  BusinessType? get ownership => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_limit')
  CreditLimit? get creditLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_name')
  BusinessType? get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'outstanding_balance')
  CreditLimit? get outstandingBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'blacklisted')
  Blacklisted? get blacklisted => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_eligibility')
  Blacklisted? get discountEligibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'visit_frequency')
  BusinessType? get visitFrequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  BusinessType? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_address')
  BusinessType? get storeAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_photo')
  Photo? get idPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  BusinessType? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_rep_id')
  BusinessType? get salesRepId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_notes')
  BusinessType? get customerNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_name')
  BusinessType? get storeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_transaction_date')
  LastTransactionDate? get lastTransactionDate =>
      throw _privateConstructorUsedError;

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
    @JsonKey(name: 'purchase_history') PurchaseHistory? purchaseHistory,
    @JsonKey(name: 'phone_number') BusinessType? phoneNumber,
    @JsonKey(name: 'latitude') Itude? latitude,
    @JsonKey(name: 'owner_address') BusinessType? ownerAddress,
    @JsonKey(name: 'subscription_type') BusinessType? subscriptionType,
    @JsonKey(name: 'id_number') BusinessType? idNumber,
    @JsonKey(name: 'preferred_payment_method')
    BusinessType? preferredPaymentMethod,
    @JsonKey(name: 'email') BusinessType? email,
    @JsonKey(name: 'longitude') Itude? longitude,
    @JsonKey(name: 'delivery_zone') BusinessType? deliveryZone,
    @JsonKey(name: 'preferred_delivery_time')
    BusinessType? preferredDeliveryTime,
    @JsonKey(name: 'tax_id') BusinessType? taxId,
    @JsonKey(name: 'store_photo') Photo? storePhoto,
    @JsonKey(name: 'business_type') BusinessType? businessType,
    @JsonKey(name: 'customer_code') BusinessType? customerCode,
    @JsonKey(name: 'ownership') BusinessType? ownership,
    @JsonKey(name: 'credit_limit') CreditLimit? creditLimit,
    @JsonKey(name: 'owner_name') BusinessType? ownerName,
    @JsonKey(name: 'outstanding_balance') CreditLimit? outstandingBalance,
    @JsonKey(name: 'blacklisted') Blacklisted? blacklisted,
    @JsonKey(name: 'discount_eligibility') Blacklisted? discountEligibility,
    @JsonKey(name: 'visit_frequency') BusinessType? visitFrequency,
    @JsonKey(name: 'company_name') BusinessType? companyName,
    @JsonKey(name: 'store_address') BusinessType? storeAddress,
    @JsonKey(name: 'id_photo') Photo? idPhoto,
    @JsonKey(name: 'status') BusinessType? status,
    @JsonKey(name: 'sales_rep_id') BusinessType? salesRepId,
    @JsonKey(name: 'customer_notes') BusinessType? customerNotes,
    @JsonKey(name: 'store_name') BusinessType? storeName,
    @JsonKey(name: 'last_transaction_date')
    LastTransactionDate? lastTransactionDate,
  });

  $PurchaseHistoryCopyWith<$Res>? get purchaseHistory;
  $BusinessTypeCopyWith<$Res>? get phoneNumber;
  $ItudeCopyWith<$Res>? get latitude;
  $BusinessTypeCopyWith<$Res>? get ownerAddress;
  $BusinessTypeCopyWith<$Res>? get subscriptionType;
  $BusinessTypeCopyWith<$Res>? get idNumber;
  $BusinessTypeCopyWith<$Res>? get preferredPaymentMethod;
  $BusinessTypeCopyWith<$Res>? get email;
  $ItudeCopyWith<$Res>? get longitude;
  $BusinessTypeCopyWith<$Res>? get deliveryZone;
  $BusinessTypeCopyWith<$Res>? get preferredDeliveryTime;
  $BusinessTypeCopyWith<$Res>? get taxId;
  $PhotoCopyWith<$Res>? get storePhoto;
  $BusinessTypeCopyWith<$Res>? get businessType;
  $BusinessTypeCopyWith<$Res>? get customerCode;
  $BusinessTypeCopyWith<$Res>? get ownership;
  $CreditLimitCopyWith<$Res>? get creditLimit;
  $BusinessTypeCopyWith<$Res>? get ownerName;
  $CreditLimitCopyWith<$Res>? get outstandingBalance;
  $BlacklistedCopyWith<$Res>? get blacklisted;
  $BlacklistedCopyWith<$Res>? get discountEligibility;
  $BusinessTypeCopyWith<$Res>? get visitFrequency;
  $BusinessTypeCopyWith<$Res>? get companyName;
  $BusinessTypeCopyWith<$Res>? get storeAddress;
  $PhotoCopyWith<$Res>? get idPhoto;
  $BusinessTypeCopyWith<$Res>? get status;
  $BusinessTypeCopyWith<$Res>? get salesRepId;
  $BusinessTypeCopyWith<$Res>? get customerNotes;
  $BusinessTypeCopyWith<$Res>? get storeName;
  $LastTransactionDateCopyWith<$Res>? get lastTransactionDate;
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
    Object? purchaseHistory = freezed,
    Object? phoneNumber = freezed,
    Object? latitude = freezed,
    Object? ownerAddress = freezed,
    Object? subscriptionType = freezed,
    Object? idNumber = freezed,
    Object? preferredPaymentMethod = freezed,
    Object? email = freezed,
    Object? longitude = freezed,
    Object? deliveryZone = freezed,
    Object? preferredDeliveryTime = freezed,
    Object? taxId = freezed,
    Object? storePhoto = freezed,
    Object? businessType = freezed,
    Object? customerCode = freezed,
    Object? ownership = freezed,
    Object? creditLimit = freezed,
    Object? ownerName = freezed,
    Object? outstandingBalance = freezed,
    Object? blacklisted = freezed,
    Object? discountEligibility = freezed,
    Object? visitFrequency = freezed,
    Object? companyName = freezed,
    Object? storeAddress = freezed,
    Object? idPhoto = freezed,
    Object? status = freezed,
    Object? salesRepId = freezed,
    Object? customerNotes = freezed,
    Object? storeName = freezed,
    Object? lastTransactionDate = freezed,
  }) {
    return _then(
      _value.copyWith(
            purchaseHistory:
                freezed == purchaseHistory
                    ? _value.purchaseHistory
                    : purchaseHistory // ignore: cast_nullable_to_non_nullable
                        as PurchaseHistory?,
            phoneNumber:
                freezed == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            latitude:
                freezed == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as Itude?,
            ownerAddress:
                freezed == ownerAddress
                    ? _value.ownerAddress
                    : ownerAddress // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            subscriptionType:
                freezed == subscriptionType
                    ? _value.subscriptionType
                    : subscriptionType // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            idNumber:
                freezed == idNumber
                    ? _value.idNumber
                    : idNumber // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            preferredPaymentMethod:
                freezed == preferredPaymentMethod
                    ? _value.preferredPaymentMethod
                    : preferredPaymentMethod // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            longitude:
                freezed == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as Itude?,
            deliveryZone:
                freezed == deliveryZone
                    ? _value.deliveryZone
                    : deliveryZone // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            preferredDeliveryTime:
                freezed == preferredDeliveryTime
                    ? _value.preferredDeliveryTime
                    : preferredDeliveryTime // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            taxId:
                freezed == taxId
                    ? _value.taxId
                    : taxId // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            storePhoto:
                freezed == storePhoto
                    ? _value.storePhoto
                    : storePhoto // ignore: cast_nullable_to_non_nullable
                        as Photo?,
            businessType:
                freezed == businessType
                    ? _value.businessType
                    : businessType // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            customerCode:
                freezed == customerCode
                    ? _value.customerCode
                    : customerCode // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            ownership:
                freezed == ownership
                    ? _value.ownership
                    : ownership // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            creditLimit:
                freezed == creditLimit
                    ? _value.creditLimit
                    : creditLimit // ignore: cast_nullable_to_non_nullable
                        as CreditLimit?,
            ownerName:
                freezed == ownerName
                    ? _value.ownerName
                    : ownerName // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            outstandingBalance:
                freezed == outstandingBalance
                    ? _value.outstandingBalance
                    : outstandingBalance // ignore: cast_nullable_to_non_nullable
                        as CreditLimit?,
            blacklisted:
                freezed == blacklisted
                    ? _value.blacklisted
                    : blacklisted // ignore: cast_nullable_to_non_nullable
                        as Blacklisted?,
            discountEligibility:
                freezed == discountEligibility
                    ? _value.discountEligibility
                    : discountEligibility // ignore: cast_nullable_to_non_nullable
                        as Blacklisted?,
            visitFrequency:
                freezed == visitFrequency
                    ? _value.visitFrequency
                    : visitFrequency // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            companyName:
                freezed == companyName
                    ? _value.companyName
                    : companyName // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            storeAddress:
                freezed == storeAddress
                    ? _value.storeAddress
                    : storeAddress // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            idPhoto:
                freezed == idPhoto
                    ? _value.idPhoto
                    : idPhoto // ignore: cast_nullable_to_non_nullable
                        as Photo?,
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            salesRepId:
                freezed == salesRepId
                    ? _value.salesRepId
                    : salesRepId // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            customerNotes:
                freezed == customerNotes
                    ? _value.customerNotes
                    : customerNotes // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            storeName:
                freezed == storeName
                    ? _value.storeName
                    : storeName // ignore: cast_nullable_to_non_nullable
                        as BusinessType?,
            lastTransactionDate:
                freezed == lastTransactionDate
                    ? _value.lastTransactionDate
                    : lastTransactionDate // ignore: cast_nullable_to_non_nullable
                        as LastTransactionDate?,
          )
          as $Val,
    );
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PurchaseHistoryCopyWith<$Res>? get purchaseHistory {
    if (_value.purchaseHistory == null) {
      return null;
    }

    return $PurchaseHistoryCopyWith<$Res>(_value.purchaseHistory!, (value) {
      return _then(_value.copyWith(purchaseHistory: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get phoneNumber {
    if (_value.phoneNumber == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.phoneNumber!, (value) {
      return _then(_value.copyWith(phoneNumber: value) as $Val);
    });
  }

  /// Create a copy of Fields
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get ownerAddress {
    if (_value.ownerAddress == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.ownerAddress!, (value) {
      return _then(_value.copyWith(ownerAddress: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get subscriptionType {
    if (_value.subscriptionType == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.subscriptionType!, (value) {
      return _then(_value.copyWith(subscriptionType: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get idNumber {
    if (_value.idNumber == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.idNumber!, (value) {
      return _then(_value.copyWith(idNumber: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get preferredPaymentMethod {
    if (_value.preferredPaymentMethod == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.preferredPaymentMethod!, (value) {
      return _then(_value.copyWith(preferredPaymentMethod: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get email {
    if (_value.email == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.email!, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  /// Create a copy of Fields
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

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get deliveryZone {
    if (_value.deliveryZone == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.deliveryZone!, (value) {
      return _then(_value.copyWith(deliveryZone: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get preferredDeliveryTime {
    if (_value.preferredDeliveryTime == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.preferredDeliveryTime!, (value) {
      return _then(_value.copyWith(preferredDeliveryTime: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get taxId {
    if (_value.taxId == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.taxId!, (value) {
      return _then(_value.copyWith(taxId: value) as $Val);
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
  $BusinessTypeCopyWith<$Res>? get businessType {
    if (_value.businessType == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.businessType!, (value) {
      return _then(_value.copyWith(businessType: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get customerCode {
    if (_value.customerCode == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.customerCode!, (value) {
      return _then(_value.copyWith(customerCode: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get ownership {
    if (_value.ownership == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.ownership!, (value) {
      return _then(_value.copyWith(ownership: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreditLimitCopyWith<$Res>? get creditLimit {
    if (_value.creditLimit == null) {
      return null;
    }

    return $CreditLimitCopyWith<$Res>(_value.creditLimit!, (value) {
      return _then(_value.copyWith(creditLimit: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get ownerName {
    if (_value.ownerName == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.ownerName!, (value) {
      return _then(_value.copyWith(ownerName: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreditLimitCopyWith<$Res>? get outstandingBalance {
    if (_value.outstandingBalance == null) {
      return null;
    }

    return $CreditLimitCopyWith<$Res>(_value.outstandingBalance!, (value) {
      return _then(_value.copyWith(outstandingBalance: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlacklistedCopyWith<$Res>? get blacklisted {
    if (_value.blacklisted == null) {
      return null;
    }

    return $BlacklistedCopyWith<$Res>(_value.blacklisted!, (value) {
      return _then(_value.copyWith(blacklisted: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlacklistedCopyWith<$Res>? get discountEligibility {
    if (_value.discountEligibility == null) {
      return null;
    }

    return $BlacklistedCopyWith<$Res>(_value.discountEligibility!, (value) {
      return _then(_value.copyWith(discountEligibility: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get visitFrequency {
    if (_value.visitFrequency == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.visitFrequency!, (value) {
      return _then(_value.copyWith(visitFrequency: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get companyName {
    if (_value.companyName == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.companyName!, (value) {
      return _then(_value.copyWith(companyName: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get storeAddress {
    if (_value.storeAddress == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.storeAddress!, (value) {
      return _then(_value.copyWith(storeAddress: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res>? get idPhoto {
    if (_value.idPhoto == null) {
      return null;
    }

    return $PhotoCopyWith<$Res>(_value.idPhoto!, (value) {
      return _then(_value.copyWith(idPhoto: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get salesRepId {
    if (_value.salesRepId == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.salesRepId!, (value) {
      return _then(_value.copyWith(salesRepId: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get customerNotes {
    if (_value.customerNotes == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.customerNotes!, (value) {
      return _then(_value.copyWith(customerNotes: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessTypeCopyWith<$Res>? get storeName {
    if (_value.storeName == null) {
      return null;
    }

    return $BusinessTypeCopyWith<$Res>(_value.storeName!, (value) {
      return _then(_value.copyWith(storeName: value) as $Val);
    });
  }

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastTransactionDateCopyWith<$Res>? get lastTransactionDate {
    if (_value.lastTransactionDate == null) {
      return null;
    }

    return $LastTransactionDateCopyWith<$Res>(_value.lastTransactionDate!, (
      value,
    ) {
      return _then(_value.copyWith(lastTransactionDate: value) as $Val);
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
    @JsonKey(name: 'purchase_history') PurchaseHistory? purchaseHistory,
    @JsonKey(name: 'phone_number') BusinessType? phoneNumber,
    @JsonKey(name: 'latitude') Itude? latitude,
    @JsonKey(name: 'owner_address') BusinessType? ownerAddress,
    @JsonKey(name: 'subscription_type') BusinessType? subscriptionType,
    @JsonKey(name: 'id_number') BusinessType? idNumber,
    @JsonKey(name: 'preferred_payment_method')
    BusinessType? preferredPaymentMethod,
    @JsonKey(name: 'email') BusinessType? email,
    @JsonKey(name: 'longitude') Itude? longitude,
    @JsonKey(name: 'delivery_zone') BusinessType? deliveryZone,
    @JsonKey(name: 'preferred_delivery_time')
    BusinessType? preferredDeliveryTime,
    @JsonKey(name: 'tax_id') BusinessType? taxId,
    @JsonKey(name: 'store_photo') Photo? storePhoto,
    @JsonKey(name: 'business_type') BusinessType? businessType,
    @JsonKey(name: 'customer_code') BusinessType? customerCode,
    @JsonKey(name: 'ownership') BusinessType? ownership,
    @JsonKey(name: 'credit_limit') CreditLimit? creditLimit,
    @JsonKey(name: 'owner_name') BusinessType? ownerName,
    @JsonKey(name: 'outstanding_balance') CreditLimit? outstandingBalance,
    @JsonKey(name: 'blacklisted') Blacklisted? blacklisted,
    @JsonKey(name: 'discount_eligibility') Blacklisted? discountEligibility,
    @JsonKey(name: 'visit_frequency') BusinessType? visitFrequency,
    @JsonKey(name: 'company_name') BusinessType? companyName,
    @JsonKey(name: 'store_address') BusinessType? storeAddress,
    @JsonKey(name: 'id_photo') Photo? idPhoto,
    @JsonKey(name: 'status') BusinessType? status,
    @JsonKey(name: 'sales_rep_id') BusinessType? salesRepId,
    @JsonKey(name: 'customer_notes') BusinessType? customerNotes,
    @JsonKey(name: 'store_name') BusinessType? storeName,
    @JsonKey(name: 'last_transaction_date')
    LastTransactionDate? lastTransactionDate,
  });

  @override
  $PurchaseHistoryCopyWith<$Res>? get purchaseHistory;
  @override
  $BusinessTypeCopyWith<$Res>? get phoneNumber;
  @override
  $ItudeCopyWith<$Res>? get latitude;
  @override
  $BusinessTypeCopyWith<$Res>? get ownerAddress;
  @override
  $BusinessTypeCopyWith<$Res>? get subscriptionType;
  @override
  $BusinessTypeCopyWith<$Res>? get idNumber;
  @override
  $BusinessTypeCopyWith<$Res>? get preferredPaymentMethod;
  @override
  $BusinessTypeCopyWith<$Res>? get email;
  @override
  $ItudeCopyWith<$Res>? get longitude;
  @override
  $BusinessTypeCopyWith<$Res>? get deliveryZone;
  @override
  $BusinessTypeCopyWith<$Res>? get preferredDeliveryTime;
  @override
  $BusinessTypeCopyWith<$Res>? get taxId;
  @override
  $PhotoCopyWith<$Res>? get storePhoto;
  @override
  $BusinessTypeCopyWith<$Res>? get businessType;
  @override
  $BusinessTypeCopyWith<$Res>? get customerCode;
  @override
  $BusinessTypeCopyWith<$Res>? get ownership;
  @override
  $CreditLimitCopyWith<$Res>? get creditLimit;
  @override
  $BusinessTypeCopyWith<$Res>? get ownerName;
  @override
  $CreditLimitCopyWith<$Res>? get outstandingBalance;
  @override
  $BlacklistedCopyWith<$Res>? get blacklisted;
  @override
  $BlacklistedCopyWith<$Res>? get discountEligibility;
  @override
  $BusinessTypeCopyWith<$Res>? get visitFrequency;
  @override
  $BusinessTypeCopyWith<$Res>? get companyName;
  @override
  $BusinessTypeCopyWith<$Res>? get storeAddress;
  @override
  $PhotoCopyWith<$Res>? get idPhoto;
  @override
  $BusinessTypeCopyWith<$Res>? get status;
  @override
  $BusinessTypeCopyWith<$Res>? get salesRepId;
  @override
  $BusinessTypeCopyWith<$Res>? get customerNotes;
  @override
  $BusinessTypeCopyWith<$Res>? get storeName;
  @override
  $LastTransactionDateCopyWith<$Res>? get lastTransactionDate;
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
    Object? purchaseHistory = freezed,
    Object? phoneNumber = freezed,
    Object? latitude = freezed,
    Object? ownerAddress = freezed,
    Object? subscriptionType = freezed,
    Object? idNumber = freezed,
    Object? preferredPaymentMethod = freezed,
    Object? email = freezed,
    Object? longitude = freezed,
    Object? deliveryZone = freezed,
    Object? preferredDeliveryTime = freezed,
    Object? taxId = freezed,
    Object? storePhoto = freezed,
    Object? businessType = freezed,
    Object? customerCode = freezed,
    Object? ownership = freezed,
    Object? creditLimit = freezed,
    Object? ownerName = freezed,
    Object? outstandingBalance = freezed,
    Object? blacklisted = freezed,
    Object? discountEligibility = freezed,
    Object? visitFrequency = freezed,
    Object? companyName = freezed,
    Object? storeAddress = freezed,
    Object? idPhoto = freezed,
    Object? status = freezed,
    Object? salesRepId = freezed,
    Object? customerNotes = freezed,
    Object? storeName = freezed,
    Object? lastTransactionDate = freezed,
  }) {
    return _then(
      _$FieldsImpl(
        purchaseHistory:
            freezed == purchaseHistory
                ? _value.purchaseHistory
                : purchaseHistory // ignore: cast_nullable_to_non_nullable
                    as PurchaseHistory?,
        phoneNumber:
            freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        latitude:
            freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as Itude?,
        ownerAddress:
            freezed == ownerAddress
                ? _value.ownerAddress
                : ownerAddress // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        subscriptionType:
            freezed == subscriptionType
                ? _value.subscriptionType
                : subscriptionType // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        idNumber:
            freezed == idNumber
                ? _value.idNumber
                : idNumber // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        preferredPaymentMethod:
            freezed == preferredPaymentMethod
                ? _value.preferredPaymentMethod
                : preferredPaymentMethod // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        longitude:
            freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as Itude?,
        deliveryZone:
            freezed == deliveryZone
                ? _value.deliveryZone
                : deliveryZone // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        preferredDeliveryTime:
            freezed == preferredDeliveryTime
                ? _value.preferredDeliveryTime
                : preferredDeliveryTime // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        taxId:
            freezed == taxId
                ? _value.taxId
                : taxId // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        storePhoto:
            freezed == storePhoto
                ? _value.storePhoto
                : storePhoto // ignore: cast_nullable_to_non_nullable
                    as Photo?,
        businessType:
            freezed == businessType
                ? _value.businessType
                : businessType // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        customerCode:
            freezed == customerCode
                ? _value.customerCode
                : customerCode // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        ownership:
            freezed == ownership
                ? _value.ownership
                : ownership // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        creditLimit:
            freezed == creditLimit
                ? _value.creditLimit
                : creditLimit // ignore: cast_nullable_to_non_nullable
                    as CreditLimit?,
        ownerName:
            freezed == ownerName
                ? _value.ownerName
                : ownerName // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        outstandingBalance:
            freezed == outstandingBalance
                ? _value.outstandingBalance
                : outstandingBalance // ignore: cast_nullable_to_non_nullable
                    as CreditLimit?,
        blacklisted:
            freezed == blacklisted
                ? _value.blacklisted
                : blacklisted // ignore: cast_nullable_to_non_nullable
                    as Blacklisted?,
        discountEligibility:
            freezed == discountEligibility
                ? _value.discountEligibility
                : discountEligibility // ignore: cast_nullable_to_non_nullable
                    as Blacklisted?,
        visitFrequency:
            freezed == visitFrequency
                ? _value.visitFrequency
                : visitFrequency // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        companyName:
            freezed == companyName
                ? _value.companyName
                : companyName // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        storeAddress:
            freezed == storeAddress
                ? _value.storeAddress
                : storeAddress // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        idPhoto:
            freezed == idPhoto
                ? _value.idPhoto
                : idPhoto // ignore: cast_nullable_to_non_nullable
                    as Photo?,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        salesRepId:
            freezed == salesRepId
                ? _value.salesRepId
                : salesRepId // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        customerNotes:
            freezed == customerNotes
                ? _value.customerNotes
                : customerNotes // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        storeName:
            freezed == storeName
                ? _value.storeName
                : storeName // ignore: cast_nullable_to_non_nullable
                    as BusinessType?,
        lastTransactionDate:
            freezed == lastTransactionDate
                ? _value.lastTransactionDate
                : lastTransactionDate // ignore: cast_nullable_to_non_nullable
                    as LastTransactionDate?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsImpl implements _Fields {
  const _$FieldsImpl({
    @JsonKey(name: 'purchase_history') this.purchaseHistory,
    @JsonKey(name: 'phone_number') this.phoneNumber,
    @JsonKey(name: 'latitude') this.latitude,
    @JsonKey(name: 'owner_address') this.ownerAddress,
    @JsonKey(name: 'subscription_type') this.subscriptionType,
    @JsonKey(name: 'id_number') this.idNumber,
    @JsonKey(name: 'preferred_payment_method') this.preferredPaymentMethod,
    @JsonKey(name: 'email') this.email,
    @JsonKey(name: 'longitude') this.longitude,
    @JsonKey(name: 'delivery_zone') this.deliveryZone,
    @JsonKey(name: 'preferred_delivery_time') this.preferredDeliveryTime,
    @JsonKey(name: 'tax_id') this.taxId,
    @JsonKey(name: 'store_photo') this.storePhoto,
    @JsonKey(name: 'business_type') this.businessType,
    @JsonKey(name: 'customer_code') this.customerCode,
    @JsonKey(name: 'ownership') this.ownership,
    @JsonKey(name: 'credit_limit') this.creditLimit,
    @JsonKey(name: 'owner_name') this.ownerName,
    @JsonKey(name: 'outstanding_balance') this.outstandingBalance,
    @JsonKey(name: 'blacklisted') this.blacklisted,
    @JsonKey(name: 'discount_eligibility') this.discountEligibility,
    @JsonKey(name: 'visit_frequency') this.visitFrequency,
    @JsonKey(name: 'company_name') this.companyName,
    @JsonKey(name: 'store_address') this.storeAddress,
    @JsonKey(name: 'id_photo') this.idPhoto,
    @JsonKey(name: 'status') this.status,
    @JsonKey(name: 'sales_rep_id') this.salesRepId,
    @JsonKey(name: 'customer_notes') this.customerNotes,
    @JsonKey(name: 'store_name') this.storeName,
    @JsonKey(name: 'last_transaction_date') this.lastTransactionDate,
  });

  factory _$FieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsImplFromJson(json);

  @override
  @JsonKey(name: 'purchase_history')
  final PurchaseHistory? purchaseHistory;
  @override
  @JsonKey(name: 'phone_number')
  final BusinessType? phoneNumber;
  @override
  @JsonKey(name: 'latitude')
  final Itude? latitude;
  @override
  @JsonKey(name: 'owner_address')
  final BusinessType? ownerAddress;
  @override
  @JsonKey(name: 'subscription_type')
  final BusinessType? subscriptionType;
  @override
  @JsonKey(name: 'id_number')
  final BusinessType? idNumber;
  @override
  @JsonKey(name: 'preferred_payment_method')
  final BusinessType? preferredPaymentMethod;
  @override
  @JsonKey(name: 'email')
  final BusinessType? email;
  @override
  @JsonKey(name: 'longitude')
  final Itude? longitude;
  @override
  @JsonKey(name: 'delivery_zone')
  final BusinessType? deliveryZone;
  @override
  @JsonKey(name: 'preferred_delivery_time')
  final BusinessType? preferredDeliveryTime;
  @override
  @JsonKey(name: 'tax_id')
  final BusinessType? taxId;
  @override
  @JsonKey(name: 'store_photo')
  final Photo? storePhoto;
  @override
  @JsonKey(name: 'business_type')
  final BusinessType? businessType;
  @override
  @JsonKey(name: 'customer_code')
  final BusinessType? customerCode;
  @override
  @JsonKey(name: 'ownership')
  final BusinessType? ownership;
  @override
  @JsonKey(name: 'credit_limit')
  final CreditLimit? creditLimit;
  @override
  @JsonKey(name: 'owner_name')
  final BusinessType? ownerName;
  @override
  @JsonKey(name: 'outstanding_balance')
  final CreditLimit? outstandingBalance;
  @override
  @JsonKey(name: 'blacklisted')
  final Blacklisted? blacklisted;
  @override
  @JsonKey(name: 'discount_eligibility')
  final Blacklisted? discountEligibility;
  @override
  @JsonKey(name: 'visit_frequency')
  final BusinessType? visitFrequency;
  @override
  @JsonKey(name: 'company_name')
  final BusinessType? companyName;
  @override
  @JsonKey(name: 'store_address')
  final BusinessType? storeAddress;
  @override
  @JsonKey(name: 'id_photo')
  final Photo? idPhoto;
  @override
  @JsonKey(name: 'status')
  final BusinessType? status;
  @override
  @JsonKey(name: 'sales_rep_id')
  final BusinessType? salesRepId;
  @override
  @JsonKey(name: 'customer_notes')
  final BusinessType? customerNotes;
  @override
  @JsonKey(name: 'store_name')
  final BusinessType? storeName;
  @override
  @JsonKey(name: 'last_transaction_date')
  final LastTransactionDate? lastTransactionDate;

  @override
  String toString() {
    return 'Fields(purchaseHistory: $purchaseHistory, phoneNumber: $phoneNumber, latitude: $latitude, ownerAddress: $ownerAddress, subscriptionType: $subscriptionType, idNumber: $idNumber, preferredPaymentMethod: $preferredPaymentMethod, email: $email, longitude: $longitude, deliveryZone: $deliveryZone, preferredDeliveryTime: $preferredDeliveryTime, taxId: $taxId, storePhoto: $storePhoto, businessType: $businessType, customerCode: $customerCode, ownership: $ownership, creditLimit: $creditLimit, ownerName: $ownerName, outstandingBalance: $outstandingBalance, blacklisted: $blacklisted, discountEligibility: $discountEligibility, visitFrequency: $visitFrequency, companyName: $companyName, storeAddress: $storeAddress, idPhoto: $idPhoto, status: $status, salesRepId: $salesRepId, customerNotes: $customerNotes, storeName: $storeName, lastTransactionDate: $lastTransactionDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsImpl &&
            (identical(other.purchaseHistory, purchaseHistory) ||
                other.purchaseHistory == purchaseHistory) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.ownerAddress, ownerAddress) ||
                other.ownerAddress == ownerAddress) &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.preferredPaymentMethod, preferredPaymentMethod) ||
                other.preferredPaymentMethod == preferredPaymentMethod) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.deliveryZone, deliveryZone) ||
                other.deliveryZone == deliveryZone) &&
            (identical(other.preferredDeliveryTime, preferredDeliveryTime) ||
                other.preferredDeliveryTime == preferredDeliveryTime) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.storePhoto, storePhoto) ||
                other.storePhoto == storePhoto) &&
            (identical(other.businessType, businessType) ||
                other.businessType == businessType) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.ownership, ownership) ||
                other.ownership == ownership) &&
            (identical(other.creditLimit, creditLimit) ||
                other.creditLimit == creditLimit) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.outstandingBalance, outstandingBalance) ||
                other.outstandingBalance == outstandingBalance) &&
            (identical(other.blacklisted, blacklisted) ||
                other.blacklisted == blacklisted) &&
            (identical(other.discountEligibility, discountEligibility) ||
                other.discountEligibility == discountEligibility) &&
            (identical(other.visitFrequency, visitFrequency) ||
                other.visitFrequency == visitFrequency) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.storeAddress, storeAddress) ||
                other.storeAddress == storeAddress) &&
            (identical(other.idPhoto, idPhoto) || other.idPhoto == idPhoto) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.salesRepId, salesRepId) ||
                other.salesRepId == salesRepId) &&
            (identical(other.customerNotes, customerNotes) ||
                other.customerNotes == customerNotes) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.lastTransactionDate, lastTransactionDate) ||
                other.lastTransactionDate == lastTransactionDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    purchaseHistory,
    phoneNumber,
    latitude,
    ownerAddress,
    subscriptionType,
    idNumber,
    preferredPaymentMethod,
    email,
    longitude,
    deliveryZone,
    preferredDeliveryTime,
    taxId,
    storePhoto,
    businessType,
    customerCode,
    ownership,
    creditLimit,
    ownerName,
    outstandingBalance,
    blacklisted,
    discountEligibility,
    visitFrequency,
    companyName,
    storeAddress,
    idPhoto,
    status,
    salesRepId,
    customerNotes,
    storeName,
    lastTransactionDate,
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
    @JsonKey(name: 'purchase_history') final PurchaseHistory? purchaseHistory,
    @JsonKey(name: 'phone_number') final BusinessType? phoneNumber,
    @JsonKey(name: 'latitude') final Itude? latitude,
    @JsonKey(name: 'owner_address') final BusinessType? ownerAddress,
    @JsonKey(name: 'subscription_type') final BusinessType? subscriptionType,
    @JsonKey(name: 'id_number') final BusinessType? idNumber,
    @JsonKey(name: 'preferred_payment_method')
    final BusinessType? preferredPaymentMethod,
    @JsonKey(name: 'email') final BusinessType? email,
    @JsonKey(name: 'longitude') final Itude? longitude,
    @JsonKey(name: 'delivery_zone') final BusinessType? deliveryZone,
    @JsonKey(name: 'preferred_delivery_time')
    final BusinessType? preferredDeliveryTime,
    @JsonKey(name: 'tax_id') final BusinessType? taxId,
    @JsonKey(name: 'store_photo') final Photo? storePhoto,
    @JsonKey(name: 'business_type') final BusinessType? businessType,
    @JsonKey(name: 'customer_code') final BusinessType? customerCode,
    @JsonKey(name: 'ownership') final BusinessType? ownership,
    @JsonKey(name: 'credit_limit') final CreditLimit? creditLimit,
    @JsonKey(name: 'owner_name') final BusinessType? ownerName,
    @JsonKey(name: 'outstanding_balance') final CreditLimit? outstandingBalance,
    @JsonKey(name: 'blacklisted') final Blacklisted? blacklisted,
    @JsonKey(name: 'discount_eligibility')
    final Blacklisted? discountEligibility,
    @JsonKey(name: 'visit_frequency') final BusinessType? visitFrequency,
    @JsonKey(name: 'company_name') final BusinessType? companyName,
    @JsonKey(name: 'store_address') final BusinessType? storeAddress,
    @JsonKey(name: 'id_photo') final Photo? idPhoto,
    @JsonKey(name: 'status') final BusinessType? status,
    @JsonKey(name: 'sales_rep_id') final BusinessType? salesRepId,
    @JsonKey(name: 'customer_notes') final BusinessType? customerNotes,
    @JsonKey(name: 'store_name') final BusinessType? storeName,
    @JsonKey(name: 'last_transaction_date')
    final LastTransactionDate? lastTransactionDate,
  }) = _$FieldsImpl;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$FieldsImpl.fromJson;

  @override
  @JsonKey(name: 'purchase_history')
  PurchaseHistory? get purchaseHistory;
  @override
  @JsonKey(name: 'phone_number')
  BusinessType? get phoneNumber;
  @override
  @JsonKey(name: 'latitude')
  Itude? get latitude;
  @override
  @JsonKey(name: 'owner_address')
  BusinessType? get ownerAddress;
  @override
  @JsonKey(name: 'subscription_type')
  BusinessType? get subscriptionType;
  @override
  @JsonKey(name: 'id_number')
  BusinessType? get idNumber;
  @override
  @JsonKey(name: 'preferred_payment_method')
  BusinessType? get preferredPaymentMethod;
  @override
  @JsonKey(name: 'email')
  BusinessType? get email;
  @override
  @JsonKey(name: 'longitude')
  Itude? get longitude;
  @override
  @JsonKey(name: 'delivery_zone')
  BusinessType? get deliveryZone;
  @override
  @JsonKey(name: 'preferred_delivery_time')
  BusinessType? get preferredDeliveryTime;
  @override
  @JsonKey(name: 'tax_id')
  BusinessType? get taxId;
  @override
  @JsonKey(name: 'store_photo')
  Photo? get storePhoto;
  @override
  @JsonKey(name: 'business_type')
  BusinessType? get businessType;
  @override
  @JsonKey(name: 'customer_code')
  BusinessType? get customerCode;
  @override
  @JsonKey(name: 'ownership')
  BusinessType? get ownership;
  @override
  @JsonKey(name: 'credit_limit')
  CreditLimit? get creditLimit;
  @override
  @JsonKey(name: 'owner_name')
  BusinessType? get ownerName;
  @override
  @JsonKey(name: 'outstanding_balance')
  CreditLimit? get outstandingBalance;
  @override
  @JsonKey(name: 'blacklisted')
  Blacklisted? get blacklisted;
  @override
  @JsonKey(name: 'discount_eligibility')
  Blacklisted? get discountEligibility;
  @override
  @JsonKey(name: 'visit_frequency')
  BusinessType? get visitFrequency;
  @override
  @JsonKey(name: 'company_name')
  BusinessType? get companyName;
  @override
  @JsonKey(name: 'store_address')
  BusinessType? get storeAddress;
  @override
  @JsonKey(name: 'id_photo')
  Photo? get idPhoto;
  @override
  @JsonKey(name: 'status')
  BusinessType? get status;
  @override
  @JsonKey(name: 'sales_rep_id')
  BusinessType? get salesRepId;
  @override
  @JsonKey(name: 'customer_notes')
  BusinessType? get customerNotes;
  @override
  @JsonKey(name: 'store_name')
  BusinessType? get storeName;
  @override
  @JsonKey(name: 'last_transaction_date')
  LastTransactionDate? get lastTransactionDate;

  /// Create a copy of Fields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldsImplCopyWith<_$FieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Blacklisted _$BlacklistedFromJson(Map<String, dynamic> json) {
  return _Blacklisted.fromJson(json);
}

/// @nodoc
mixin _$Blacklisted {
  @JsonKey(name: 'booleanValue')
  bool? get booleanValue => throw _privateConstructorUsedError;

  /// Serializes this Blacklisted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Blacklisted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlacklistedCopyWith<Blacklisted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlacklistedCopyWith<$Res> {
  factory $BlacklistedCopyWith(
    Blacklisted value,
    $Res Function(Blacklisted) then,
  ) = _$BlacklistedCopyWithImpl<$Res, Blacklisted>;
  @useResult
  $Res call({@JsonKey(name: 'booleanValue') bool? booleanValue});
}

/// @nodoc
class _$BlacklistedCopyWithImpl<$Res, $Val extends Blacklisted>
    implements $BlacklistedCopyWith<$Res> {
  _$BlacklistedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Blacklisted
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
abstract class _$$BlacklistedImplCopyWith<$Res>
    implements $BlacklistedCopyWith<$Res> {
  factory _$$BlacklistedImplCopyWith(
    _$BlacklistedImpl value,
    $Res Function(_$BlacklistedImpl) then,
  ) = __$$BlacklistedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'booleanValue') bool? booleanValue});
}

/// @nodoc
class __$$BlacklistedImplCopyWithImpl<$Res>
    extends _$BlacklistedCopyWithImpl<$Res, _$BlacklistedImpl>
    implements _$$BlacklistedImplCopyWith<$Res> {
  __$$BlacklistedImplCopyWithImpl(
    _$BlacklistedImpl _value,
    $Res Function(_$BlacklistedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Blacklisted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? booleanValue = freezed}) {
    return _then(
      _$BlacklistedImpl(
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
class _$BlacklistedImpl implements _Blacklisted {
  const _$BlacklistedImpl({@JsonKey(name: 'booleanValue') this.booleanValue});

  factory _$BlacklistedImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlacklistedImplFromJson(json);

  @override
  @JsonKey(name: 'booleanValue')
  final bool? booleanValue;

  @override
  String toString() {
    return 'Blacklisted(booleanValue: $booleanValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlacklistedImpl &&
            (identical(other.booleanValue, booleanValue) ||
                other.booleanValue == booleanValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, booleanValue);

  /// Create a copy of Blacklisted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlacklistedImplCopyWith<_$BlacklistedImpl> get copyWith =>
      __$$BlacklistedImplCopyWithImpl<_$BlacklistedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlacklistedImplToJson(this);
  }
}

abstract class _Blacklisted implements Blacklisted {
  const factory _Blacklisted({
    @JsonKey(name: 'booleanValue') final bool? booleanValue,
  }) = _$BlacklistedImpl;

  factory _Blacklisted.fromJson(Map<String, dynamic> json) =
      _$BlacklistedImpl.fromJson;

  @override
  @JsonKey(name: 'booleanValue')
  bool? get booleanValue;

  /// Create a copy of Blacklisted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlacklistedImplCopyWith<_$BlacklistedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BusinessType _$BusinessTypeFromJson(Map<String, dynamic> json) {
  return _BusinessType.fromJson(json);
}

/// @nodoc
mixin _$BusinessType {
  @JsonKey(name: 'stringValue')
  String? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this BusinessType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessTypeCopyWith<BusinessType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessTypeCopyWith<$Res> {
  factory $BusinessTypeCopyWith(
    BusinessType value,
    $Res Function(BusinessType) then,
  ) = _$BusinessTypeCopyWithImpl<$Res, BusinessType>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class _$BusinessTypeCopyWithImpl<$Res, $Val extends BusinessType>
    implements $BusinessTypeCopyWith<$Res> {
  _$BusinessTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessType
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
abstract class _$$BusinessTypeImplCopyWith<$Res>
    implements $BusinessTypeCopyWith<$Res> {
  factory _$$BusinessTypeImplCopyWith(
    _$BusinessTypeImpl value,
    $Res Function(_$BusinessTypeImpl) then,
  ) = __$$BusinessTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') String? stringValue});
}

/// @nodoc
class __$$BusinessTypeImplCopyWithImpl<$Res>
    extends _$BusinessTypeCopyWithImpl<$Res, _$BusinessTypeImpl>
    implements _$$BusinessTypeImplCopyWith<$Res> {
  __$$BusinessTypeImplCopyWithImpl(
    _$BusinessTypeImpl _value,
    $Res Function(_$BusinessTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BusinessType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$BusinessTypeImpl(
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
class _$BusinessTypeImpl implements _BusinessType {
  const _$BusinessTypeImpl({@JsonKey(name: 'stringValue') this.stringValue});

  factory _$BusinessTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessTypeImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final String? stringValue;

  @override
  String toString() {
    return 'BusinessType(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessTypeImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of BusinessType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessTypeImplCopyWith<_$BusinessTypeImpl> get copyWith =>
      __$$BusinessTypeImplCopyWithImpl<_$BusinessTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessTypeImplToJson(this);
  }
}

abstract class _BusinessType implements BusinessType {
  const factory _BusinessType({
    @JsonKey(name: 'stringValue') final String? stringValue,
  }) = _$BusinessTypeImpl;

  factory _BusinessType.fromJson(Map<String, dynamic> json) =
      _$BusinessTypeImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  String? get stringValue;

  /// Create a copy of BusinessType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessTypeImplCopyWith<_$BusinessTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreditLimit _$CreditLimitFromJson(Map<String, dynamic> json) {
  return _CreditLimit.fromJson(json);
}

/// @nodoc
mixin _$CreditLimit {
  @JsonKey(name: 'doubleValue')
  int? get doubleValue => throw _privateConstructorUsedError;

  /// Serializes this CreditLimit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreditLimit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreditLimitCopyWith<CreditLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditLimitCopyWith<$Res> {
  factory $CreditLimitCopyWith(
    CreditLimit value,
    $Res Function(CreditLimit) then,
  ) = _$CreditLimitCopyWithImpl<$Res, CreditLimit>;
  @useResult
  $Res call({@JsonKey(name: 'doubleValue') int? doubleValue});
}

/// @nodoc
class _$CreditLimitCopyWithImpl<$Res, $Val extends CreditLimit>
    implements $CreditLimitCopyWith<$Res> {
  _$CreditLimitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreditLimit
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
abstract class _$$CreditLimitImplCopyWith<$Res>
    implements $CreditLimitCopyWith<$Res> {
  factory _$$CreditLimitImplCopyWith(
    _$CreditLimitImpl value,
    $Res Function(_$CreditLimitImpl) then,
  ) = __$$CreditLimitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'doubleValue') int? doubleValue});
}

/// @nodoc
class __$$CreditLimitImplCopyWithImpl<$Res>
    extends _$CreditLimitCopyWithImpl<$Res, _$CreditLimitImpl>
    implements _$$CreditLimitImplCopyWith<$Res> {
  __$$CreditLimitImplCopyWithImpl(
    _$CreditLimitImpl _value,
    $Res Function(_$CreditLimitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreditLimit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? doubleValue = freezed}) {
    return _then(
      _$CreditLimitImpl(
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
class _$CreditLimitImpl implements _CreditLimit {
  const _$CreditLimitImpl({@JsonKey(name: 'doubleValue') this.doubleValue});

  factory _$CreditLimitImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditLimitImplFromJson(json);

  @override
  @JsonKey(name: 'doubleValue')
  final int? doubleValue;

  @override
  String toString() {
    return 'CreditLimit(doubleValue: $doubleValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditLimitImpl &&
            (identical(other.doubleValue, doubleValue) ||
                other.doubleValue == doubleValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, doubleValue);

  /// Create a copy of CreditLimit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditLimitImplCopyWith<_$CreditLimitImpl> get copyWith =>
      __$$CreditLimitImplCopyWithImpl<_$CreditLimitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditLimitImplToJson(this);
  }
}

abstract class _CreditLimit implements CreditLimit {
  const factory _CreditLimit({
    @JsonKey(name: 'doubleValue') final int? doubleValue,
  }) = _$CreditLimitImpl;

  factory _CreditLimit.fromJson(Map<String, dynamic> json) =
      _$CreditLimitImpl.fromJson;

  @override
  @JsonKey(name: 'doubleValue')
  int? get doubleValue;

  /// Create a copy of CreditLimit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreditLimitImplCopyWith<_$CreditLimitImpl> get copyWith =>
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

LastTransactionDate _$LastTransactionDateFromJson(Map<String, dynamic> json) {
  return _LastTransactionDate.fromJson(json);
}

/// @nodoc
mixin _$LastTransactionDate {
  @JsonKey(name: 'stringValue')
  DateTime? get stringValue => throw _privateConstructorUsedError;

  /// Serializes this LastTransactionDate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LastTransactionDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LastTransactionDateCopyWith<LastTransactionDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastTransactionDateCopyWith<$Res> {
  factory $LastTransactionDateCopyWith(
    LastTransactionDate value,
    $Res Function(LastTransactionDate) then,
  ) = _$LastTransactionDateCopyWithImpl<$Res, LastTransactionDate>;
  @useResult
  $Res call({@JsonKey(name: 'stringValue') DateTime? stringValue});
}

/// @nodoc
class _$LastTransactionDateCopyWithImpl<$Res, $Val extends LastTransactionDate>
    implements $LastTransactionDateCopyWith<$Res> {
  _$LastTransactionDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LastTransactionDate
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
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LastTransactionDateImplCopyWith<$Res>
    implements $LastTransactionDateCopyWith<$Res> {
  factory _$$LastTransactionDateImplCopyWith(
    _$LastTransactionDateImpl value,
    $Res Function(_$LastTransactionDateImpl) then,
  ) = __$$LastTransactionDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'stringValue') DateTime? stringValue});
}

/// @nodoc
class __$$LastTransactionDateImplCopyWithImpl<$Res>
    extends _$LastTransactionDateCopyWithImpl<$Res, _$LastTransactionDateImpl>
    implements _$$LastTransactionDateImplCopyWith<$Res> {
  __$$LastTransactionDateImplCopyWithImpl(
    _$LastTransactionDateImpl _value,
    $Res Function(_$LastTransactionDateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LastTransactionDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stringValue = freezed}) {
    return _then(
      _$LastTransactionDateImpl(
        stringValue:
            freezed == stringValue
                ? _value.stringValue
                : stringValue // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LastTransactionDateImpl implements _LastTransactionDate {
  const _$LastTransactionDateImpl({
    @JsonKey(name: 'stringValue') this.stringValue,
  });

  factory _$LastTransactionDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastTransactionDateImplFromJson(json);

  @override
  @JsonKey(name: 'stringValue')
  final DateTime? stringValue;

  @override
  String toString() {
    return 'LastTransactionDate(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastTransactionDateImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of LastTransactionDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastTransactionDateImplCopyWith<_$LastTransactionDateImpl> get copyWith =>
      __$$LastTransactionDateImplCopyWithImpl<_$LastTransactionDateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LastTransactionDateImplToJson(this);
  }
}

abstract class _LastTransactionDate implements LastTransactionDate {
  const factory _LastTransactionDate({
    @JsonKey(name: 'stringValue') final DateTime? stringValue,
  }) = _$LastTransactionDateImpl;

  factory _LastTransactionDate.fromJson(Map<String, dynamic> json) =
      _$LastTransactionDateImpl.fromJson;

  @override
  @JsonKey(name: 'stringValue')
  DateTime? get stringValue;

  /// Create a copy of LastTransactionDate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastTransactionDateImplCopyWith<_$LastTransactionDateImpl> get copyWith =>
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

PurchaseHistory _$PurchaseHistoryFromJson(Map<String, dynamic> json) {
  return _PurchaseHistory.fromJson(json);
}

/// @nodoc
mixin _$PurchaseHistory {
  @JsonKey(name: 'arrayValue')
  ArrayValue? get arrayValue => throw _privateConstructorUsedError;

  /// Serializes this PurchaseHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurchaseHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurchaseHistoryCopyWith<PurchaseHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseHistoryCopyWith<$Res> {
  factory $PurchaseHistoryCopyWith(
    PurchaseHistory value,
    $Res Function(PurchaseHistory) then,
  ) = _$PurchaseHistoryCopyWithImpl<$Res, PurchaseHistory>;
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') ArrayValue? arrayValue});

  $ArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class _$PurchaseHistoryCopyWithImpl<$Res, $Val extends PurchaseHistory>
    implements $PurchaseHistoryCopyWith<$Res> {
  _$PurchaseHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseHistory
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

  /// Create a copy of PurchaseHistory
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
abstract class _$$PurchaseHistoryImplCopyWith<$Res>
    implements $PurchaseHistoryCopyWith<$Res> {
  factory _$$PurchaseHistoryImplCopyWith(
    _$PurchaseHistoryImpl value,
    $Res Function(_$PurchaseHistoryImpl) then,
  ) = __$$PurchaseHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'arrayValue') ArrayValue? arrayValue});

  @override
  $ArrayValueCopyWith<$Res>? get arrayValue;
}

/// @nodoc
class __$$PurchaseHistoryImplCopyWithImpl<$Res>
    extends _$PurchaseHistoryCopyWithImpl<$Res, _$PurchaseHistoryImpl>
    implements _$$PurchaseHistoryImplCopyWith<$Res> {
  __$$PurchaseHistoryImplCopyWithImpl(
    _$PurchaseHistoryImpl _value,
    $Res Function(_$PurchaseHistoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? arrayValue = freezed}) {
    return _then(
      _$PurchaseHistoryImpl(
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
class _$PurchaseHistoryImpl implements _PurchaseHistory {
  const _$PurchaseHistoryImpl({@JsonKey(name: 'arrayValue') this.arrayValue});

  factory _$PurchaseHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseHistoryImplFromJson(json);

  @override
  @JsonKey(name: 'arrayValue')
  final ArrayValue? arrayValue;

  @override
  String toString() {
    return 'PurchaseHistory(arrayValue: $arrayValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseHistoryImpl &&
            (identical(other.arrayValue, arrayValue) ||
                other.arrayValue == arrayValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arrayValue);

  /// Create a copy of PurchaseHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseHistoryImplCopyWith<_$PurchaseHistoryImpl> get copyWith =>
      __$$PurchaseHistoryImplCopyWithImpl<_$PurchaseHistoryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseHistoryImplToJson(this);
  }
}

abstract class _PurchaseHistory implements PurchaseHistory {
  const factory _PurchaseHistory({
    @JsonKey(name: 'arrayValue') final ArrayValue? arrayValue,
  }) = _$PurchaseHistoryImpl;

  factory _PurchaseHistory.fromJson(Map<String, dynamic> json) =
      _$PurchaseHistoryImpl.fromJson;

  @override
  @JsonKey(name: 'arrayValue')
  ArrayValue? get arrayValue;

  /// Create a copy of PurchaseHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchaseHistoryImplCopyWith<_$PurchaseHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArrayValue _$ArrayValueFromJson(Map<String, dynamic> json) {
  return _ArrayValue.fromJson(json);
}

/// @nodoc
mixin _$ArrayValue {
  @JsonKey(name: 'values')
  List<BusinessType>? get values => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'values') List<BusinessType>? values});
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
                        as List<BusinessType>?,
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
  $Res call({@JsonKey(name: 'values') List<BusinessType>? values});
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
                    as List<BusinessType>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ArrayValueImpl implements _ArrayValue {
  const _$ArrayValueImpl({
    @JsonKey(name: 'values') final List<BusinessType>? values,
  }) : _values = values;

  factory _$ArrayValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArrayValueImplFromJson(json);

  final List<BusinessType>? _values;
  @override
  @JsonKey(name: 'values')
  List<BusinessType>? get values {
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
    @JsonKey(name: 'values') final List<BusinessType>? values,
  }) = _$ArrayValueImpl;

  factory _ArrayValue.fromJson(Map<String, dynamic> json) =
      _$ArrayValueImpl.fromJson;

  @override
  @JsonKey(name: 'values')
  List<BusinessType>? get values;

  /// Create a copy of ArrayValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArrayValueImplCopyWith<_$ArrayValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
