import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_request_domain.freezed.dart';
part 'customer_request_domain.g.dart';

@freezed
class CustomerRequestDomain with _$CustomerRequestDomain {
  const factory CustomerRequestDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _CustomerRequestDomain;

  factory CustomerRequestDomain.fromJson(Map<String, dynamic> json) =>
      _$CustomerRequestDomainFromJson(json);
}

@freezed
class Fields with _$Fields {
  const factory Fields({
    @JsonKey(name: 'approved_by') ApprovalStatus? approvedBy,
    @JsonKey(name: 'company_store_condition')
    ApprovalStatus? companyStoreCondition,
    @JsonKey(name: 'approval_status') ApprovalStatus? approvalStatus,
    @JsonKey(name: 'company_tax_id') ApprovalStatus? companyTaxId,
    @JsonKey(name: 'request_destination') ApprovalStatus? requestDestination,
    @JsonKey(name: 'pic_national_id_photo') ApprovalStatus? picNationalIdPhoto,
    @JsonKey(name: 'pic_position') ApprovalStatus? picPosition,
    @JsonKey(name: 'company_location') CompanyLocation? companyLocation,
    @JsonKey(name: 'subscription_type') ApprovalStatus? subscriptionType,
    @JsonKey(name: 'pic_national_id') ApprovalStatus? picNationalId,
    @JsonKey(name: 'pic_address') ApprovalStatus? picAddress,
    @JsonKey(name: 'pic_tax_id') ApprovalStatus? picTaxId,
    @JsonKey(name: 'customer_type') ApprovalStatus? customerType,
    @JsonKey(name: 'requested_by') ApprovalStatus? requestedBy,
    @JsonKey(name: 'company_name') ApprovalStatus? companyName,
    @JsonKey(name: 'carbon_copy') ApprovalStatus? carbonCopy,
    @JsonKey(name: 'company_email') ApprovalStatus? companyEmail,
    @JsonKey(name: 'credit_period') Credit? creditPeriod,
    @JsonKey(name: 'company_phone_number') ApprovalStatus? companyPhoneNumber,
    @JsonKey(name: 'ownership_status') ApprovalStatus? ownershipStatus,
    @JsonKey(name: 'note') ApprovalStatus? note,
    @JsonKey(name: 'company_store_photo') ApprovalStatus? companyStorePhoto,
    @JsonKey(name: 'credit_limit') Credit? creditLimit,
    @JsonKey(name: 'pic_name') ApprovalStatus? picName,
    @JsonKey(name: 'pic_phone_number') ApprovalStatus? picPhoneNumber,
    @JsonKey(name: 'approval_reason') Approval? approvalReason,
    @JsonKey(name: 'company_address') ApprovalStatus? companyAddress,
    @JsonKey(name: 'approval_date') Approval? approvalDate,
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class Approval with _$Approval {
  const factory Approval({
    @JsonKey(name: 'timestampValue') String? timestampValue,
  }) = _Approval;

  factory Approval.fromJson(Map<String, dynamic> json) =>
      _$ApprovalFromJson(json);
}

@freezed
class ApprovalStatus with _$ApprovalStatus {
  const factory ApprovalStatus({
    @JsonKey(name: 'stringValue') String? stringValue,
  }) = _ApprovalStatus;

  factory ApprovalStatus.fromJson(Map<String, dynamic> json) =>
      _$ApprovalStatusFromJson(json);
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
    @JsonKey(name: 'latitude') Accuracy? latitude,
    @JsonKey(name: 'accuracy') Accuracy? accuracy,
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

@freezed
class Credit with _$Credit {
  const factory Credit({@JsonKey(name: 'integerValue') String? integerValue}) =
      _Credit;

  factory Credit.fromJson(Map<String, dynamic> json) => _$CreditFromJson(json);
}
