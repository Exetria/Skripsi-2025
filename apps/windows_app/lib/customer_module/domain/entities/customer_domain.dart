import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_domain.freezed.dart';
part 'customer_domain.g.dart';

@freezed
class CustomerDomain with _$CustomerDomain {
  const factory CustomerDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _CustomerDomain;

  factory CustomerDomain.fromJson(Map<String, dynamic> json) =>
      _$CustomerDomainFromJson(json);
}

@freezed
class Fields with _$Fields {
  const factory Fields({
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
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class Blacklisted with _$Blacklisted {
  const factory Blacklisted({
    @JsonKey(name: 'booleanValue') bool? booleanValue,
  }) = _Blacklisted;
  factory Blacklisted.fromJson(Map<String, dynamic> json) =>
      _$BlacklistedFromJson(json);
}

@freezed
class BusinessType with _$BusinessType {
  const factory BusinessType({
    @JsonKey(name: 'stringValue') String? stringValue,
  }) = _BusinessType;
  factory BusinessType.fromJson(Map<String, dynamic> json) =>
      _$BusinessTypeFromJson(json);
}

@freezed
class CreditLimit with _$CreditLimit {
  const factory CreditLimit({@JsonKey(name: 'doubleValue') int? doubleValue}) =
      _CreditLimit;
  factory CreditLimit.fromJson(Map<String, dynamic> json) =>
      _$CreditLimitFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({@JsonKey(name: 'stringValue') String? stringValue}) =
      _Photo;
  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}

@freezed
class LastTransactionDate with _$LastTransactionDate {
  const factory LastTransactionDate({
    @JsonKey(name: 'stringValue') DateTime? stringValue,
  }) = _LastTransactionDate;
  factory LastTransactionDate.fromJson(Map<String, dynamic> json) =>
      _$LastTransactionDateFromJson(json);
}

@freezed
class Itude with _$Itude {
  const factory Itude({@JsonKey(name: 'doubleValue') double? doubleValue}) =
      _Itude;
  factory Itude.fromJson(Map<String, dynamic> json) => _$ItudeFromJson(json);
}

@freezed
class PurchaseHistory with _$PurchaseHistory {
  const factory PurchaseHistory({
    @JsonKey(name: 'arrayValue') ArrayValue? arrayValue,
  }) = _PurchaseHistory;
  factory PurchaseHistory.fromJson(Map<String, dynamic> json) =>
      _$PurchaseHistoryFromJson(json);
}

@freezed
class ArrayValue with _$ArrayValue {
  const factory ArrayValue({
    @JsonKey(name: 'values') List<BusinessType>? values,
  }) = _ArrayValue;
  factory ArrayValue.fromJson(Map<String, dynamic> json) =>
      _$ArrayValueFromJson(json);
}
