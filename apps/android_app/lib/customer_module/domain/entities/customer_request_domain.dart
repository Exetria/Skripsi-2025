import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_request_domain.freezed.dart';
part 'customer_request_domain.g.dart';

@freezed
class CustomerRequestDomain with _$CustomerRequestDomain {
  const factory CustomerRequestDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') CustomerRequestDomainFields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _CustomerRequestDomain;

  factory CustomerRequestDomain.fromJson(Map<String, dynamic> json) =>
      _$CustomerRequestDomainFromJson(json);
}

@freezed
class CustomerRequestDomainFields with _$CustomerRequestDomainFields {
  const factory CustomerRequestDomainFields({
    @JsonKey(name: 'owner_national_id_photo')
    ApprovalReason? ownerNationalIdPhoto,
    @JsonKey(name: 'company_store_condition')
    ApprovalReason? companyStoreCondition,
    @JsonKey(name: 'requested_by') ApprovalReason? requestedBy,
    @JsonKey(name: 'company_email') ApprovalReason? companyEmail,
    @JsonKey(name: 'approved_by') ApprovalReason? approvedBy,
    @JsonKey(name: 'ownership_status') ApprovalReason? ownershipStatus,
    @JsonKey(name: 'company_store_photo') ApprovalReason? companyStorePhoto,
    @JsonKey(name: 'company_address') ApprovalReason? companyAddress,
    @JsonKey(name: 'company_name') ApprovalReason? companyName,
    @JsonKey(name: 'owner_phone_number') ApprovalReason? ownerPhoneNumber,
    @JsonKey(name: 'request_destination') ApprovalReason? requestDestination,
    @JsonKey(name: 'approval_status') ApprovalReason? approvalStatus,
    @JsonKey(name: 'owner_address') ApprovalReason? ownerAddress,
    @JsonKey(name: 'owner_tax_id') ApprovalReason? ownerTaxId,
    @JsonKey(name: 'carbon_copy') ApprovalReason? carbonCopy,
    @JsonKey(name: 'company_phone_number') ApprovalReason? companyPhoneNumber,
    @JsonKey(name: 'approval_date') ApprovalDate? approvalDate,
    @JsonKey(name: 'note') ApprovalReason? note,
    @JsonKey(name: 'owner_name') ApprovalReason? ownerName,
    @JsonKey(name: 'owner_national_id') ApprovalReason? ownerNationalId,
    @JsonKey(name: 'approval_reason') ApprovalReason? approvalReason,
    @JsonKey(name: 'subscription_type') ApprovalReason? subscriptionType,
    @JsonKey(name: 'company_location') CompanyLocation? companyLocation,
    @JsonKey(name: 'customer_type') ApprovalReason? customerType,
  }) = _CustomerRequestDomainFields;

  factory CustomerRequestDomainFields.fromJson(Map<String, dynamic> json) =>
      _$CustomerRequestDomainFieldsFromJson(json);
}

@freezed
class ApprovalDate with _$ApprovalDate {
  const factory ApprovalDate({
    @JsonKey(name: 'timestampValue') String? timestampValue,
  }) = _ApprovalDate;

  factory ApprovalDate.fromJson(Map<String, dynamic> json) =>
      _$ApprovalDateFromJson(json);
}

@freezed
class ApprovalReason with _$ApprovalReason {
  const factory ApprovalReason({
    @JsonKey(name: 'stringValue') String? stringValue,
  }) = _ApprovalReason;

  factory ApprovalReason.fromJson(Map<String, dynamic> json) =>
      _$ApprovalReasonFromJson(json);
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
    @JsonKey(name: 'latitude') Itude? latitude,
    @JsonKey(name: 'longitude') Itude? longitude,
    @JsonKey(name: 'accuracy') Accuracy? accuracy,
  }) = _MapValueFields;

  factory MapValueFields.fromJson(Map<String, dynamic> json) =>
      _$MapValueFieldsFromJson(json);
}

@freezed
class Accuracy with _$Accuracy {
  const factory Accuracy({@JsonKey(name: 'doubleValue') int? doubleValue}) =
      _Accuracy;

  factory Accuracy.fromJson(Map<String, dynamic> json) =>
      _$AccuracyFromJson(json);
}

@freezed
class Itude with _$Itude {
  const factory Itude({@JsonKey(name: 'doubleValue') double? doubleValue}) =
      _Itude;

  factory Itude.fromJson(Map<String, dynamic> json) => _$ItudeFromJson(json);
}
