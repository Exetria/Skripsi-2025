import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_domain.freezed.dart';
part 'customer_domain.g.dart';

@freezed
class CustomerDomain with _$CustomerDomain {
  const factory CustomerDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') CustomerDomainFields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _CustomerDomain;

  factory CustomerDomain.fromJson(Map<String, dynamic> json) =>
      _$CustomerDomainFromJson(json);
}

@freezed
class CustomerDomainFields with _$CustomerDomainFields {
  const factory CustomerDomainFields({
    @JsonKey(name: 'owner_phone_number') ApprovedBy? ownerPhoneNumber,
    @JsonKey(name: 'customer_code') ApprovedBy? customerCode,
    @JsonKey(name: 'company_store_condition') ApprovedBy? companyStoreCondition,
    @JsonKey(name: 'company_phone_number') ApprovedBy? companyPhoneNumber,
    @JsonKey(name: 'owner_tax_id') ApprovedBy? ownerTaxId,
    @JsonKey(name: 'approved_by') ApprovedBy? approvedBy,
    @JsonKey(name: 'subscription_type') ApprovedBy? subscriptionType,
    @JsonKey(name: 'owner_address') ApprovedBy? ownerAddress,
    @JsonKey(name: 'ownership_status') ApprovedBy? ownershipStatus,
    @JsonKey(name: 'company_email') ApprovedBy? companyEmail,
    @JsonKey(name: 'company_location') CompanyLocation? companyLocation,
    @JsonKey(name: 'requested_by') ApprovedBy? requestedBy,
    @JsonKey(name: 'owner_national_id') ApprovedBy? ownerNationalId,
    @JsonKey(name: 'owner_name') ApprovedBy? ownerName,
    @JsonKey(name: 'company_name') ApprovedBy? companyName,
    @JsonKey(name: 'owner_national_id_photo') ApprovedBy? ownerNationalIdPhoto,
    @JsonKey(name: 'company_address') ApprovedBy? companyAddress,
    @JsonKey(name: 'company_store_photo') ApprovedBy? companyStorePhoto,
  }) = _CustomerDomainFields;

  factory CustomerDomainFields.fromJson(Map<String, dynamic> json) =>
      _$CustomerDomainFieldsFromJson(json);
}

@freezed
class ApprovedBy with _$ApprovedBy {
  const factory ApprovedBy({
    @JsonKey(name: 'stringValue') String? stringValue,
  }) = _ApprovedBy;

  factory ApprovedBy.fromJson(Map<String, dynamic> json) =>
      _$ApprovedByFromJson(json);
}

@freezed
class CompanyLocation with _$CompanyLocation {
  const factory CompanyLocation({
    @JsonKey(name: 'mapValue') MapValue? mapValue,
  }) = _CompanyLocation;

  factory CompanyLocation.fromJson(Map<String, dynamic> json) =>
      _$CompanyLocationFromJson(json);
}

@freezed
class MapValue with _$MapValue {
  const factory MapValue({@JsonKey(name: 'fields') MapValueFields? fields}) =
      _MapValue;

  factory MapValue.fromJson(Map<String, dynamic> json) =>
      _$MapValueFromJson(json);
}

@freezed
class MapValueFields with _$MapValueFields {
  const factory MapValueFields({
    @JsonKey(name: 'accuracy') Accuracy? accuracy,
    @JsonKey(name: 'latitude') Accuracy? latitude,
    @JsonKey(name: 'longitude') Accuracy? longitude,
  }) = _MapValueFields;

  factory MapValueFields.fromJson(Map<String, dynamic> json) =>
      _$MapValueFieldsFromJson(json);
}

@freezed
class Accuracy with _$Accuracy {
  const factory Accuracy({@JsonKey(name: 'doubleValue') double? doubleValue}) =
      _Accuracy;

  factory Accuracy.fromJson(Map<String, dynamic> json) =>
      _$AccuracyFromJson(json);
}
