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
    @JsonKey(name: 'pic_national_id_photo') ApprovedBy? picNationalIdPhoto,
    @JsonKey(name: 'company_store_condition') ApprovedBy? companyStoreCondition,
    @JsonKey(name: 'pic_phone_number') ApprovedBy? picPhoneNumber,
    @JsonKey(name: 'blacklisted') Blacklisted? blacklisted,
    @JsonKey(name: 'company_address') ApprovedBy? companyAddress,
    @JsonKey(name: 'pic_address') ApprovedBy? picAddress,
    @JsonKey(name: 'credit_limit') Credit? creditLimit,
    @JsonKey(name: 'company_store_photo') ApprovedBy? companyStorePhoto,
    @JsonKey(name: 'note') ApprovedBy? note,
    @JsonKey(name: 'company_tax_id') ApprovedBy? companyTaxId,
    @JsonKey(name: 'credit_period') Credit? creditPeriod,
    @JsonKey(name: 'pic_position') ApprovedBy? picPosition,
    @JsonKey(name: 'company_email') ApprovedBy? companyEmail,
    @JsonKey(name: 'company_name') ApprovedBy? companyName,
    @JsonKey(name: 'company_phone_number') ApprovedBy? companyPhoneNumber,
    @JsonKey(name: 'company_location') CompanyLocation? companyLocation,
    @JsonKey(name: 'pic_tax_id') ApprovedBy? picTaxId,
    @JsonKey(name: 'customer_type') ApprovedBy? customerType,
    @JsonKey(name: 'subscription_type') ApprovedBy? subscriptionType,
    @JsonKey(name: 'ownership_status') ApprovedBy? ownershipStatus,
    @JsonKey(name: 'requested_by') ApprovedBy? requestedBy,
    @JsonKey(name: 'pic_name') ApprovedBy? picName,
    @JsonKey(name: 'approved_by') ApprovedBy? approvedBy,
    @JsonKey(name: 'pic_national_id') ApprovedBy? picNationalId,
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
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
class Blacklisted with _$Blacklisted {
  const factory Blacklisted({
    @JsonKey(name: 'booleanValue') bool? booleanValue,
  }) = _Blacklisted;

  factory Blacklisted.fromJson(Map<String, dynamic> json) =>
      _$BlacklistedFromJson(json);
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
    @JsonKey(name: 'longitude') Accuracy? longitude,
    @JsonKey(name: 'latitude') Accuracy? latitude,
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

@freezed
class Credit with _$Credit {
  const factory Credit({@JsonKey(name: 'integerValue') String? integerValue}) =
      _Credit;

  factory Credit.fromJson(Map<String, dynamic> json) => _$CreditFromJson(json);
}
