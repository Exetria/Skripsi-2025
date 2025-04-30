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
    @JsonKey(name: 'company_name') ApprovalStatus? companyName,
    @JsonKey(name: 'national_id_photo') Photo? nationalIdPhoto,
    @JsonKey(name: 'approval_status') ApprovalStatus? approvalStatus,
    @JsonKey(name: 'requested_by') ApprovalStatus? requestedBy,
    @JsonKey(name: 'store_photo') Photo? storePhoto,
    @JsonKey(name: 'company_address') ApprovalStatus? companyAddress,
    @JsonKey(name: 'customer_request_id') ApprovalStatus? customerRequestId,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'national_id') ApprovalStatus? nationalId,
    @JsonKey(name: 'subscription_type') ApprovalStatus? subscriptionType,
    @JsonKey(name: 'store_condition') ApprovalStatus? storeCondition,
    @JsonKey(name: 'owner_name') ApprovalStatus? ownerName,
    @JsonKey(name: 'destination_company') ApprovalStatus? destinationCompany,
    @JsonKey(name: 'approval_date') Date? approvalDate,
    @JsonKey(name: 'phone_number') ApprovalStatus? phoneNumber,
    @JsonKey(name: 'customer_code') CustomerCode? customerCode,
    @JsonKey(name: 'carbon_copy') ApprovalStatus? carbonCopy,
    @JsonKey(name: 'approved_by') ApprovalStatus? approvedBy,
    @JsonKey(name: 'date') Date? date,
    @JsonKey(name: 'ownership_status') ApprovalStatus? ownershipStatus,
    @JsonKey(name: 'tax_id') ApprovalStatus? taxId,
    @JsonKey(name: 'owner_address') ApprovalStatus? ownerAddress,
    @JsonKey(name: 'note') ApprovalStatus? note,
  }) = _Fields;
  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class Date with _$Date {
  const factory Date({
    @JsonKey(name: 'timestampValue') String? timestampValue,
  }) = _Date;
  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);
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
class CustomerCode with _$CustomerCode {
  const factory CustomerCode({
    @JsonKey(name: 'integerValue') String? integerValue,
  }) = _CustomerCode;
  factory CustomerCode.fromJson(Map<String, dynamic> json) =>
      _$CustomerCodeFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({@JsonKey(name: 'mapValue') MapValue? mapValue}) =
      _Location;
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
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
    @JsonKey(name: 'latitude') Itude? latitude,
    @JsonKey(name: 'longitude') Itude? longitude,
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

@freezed
class Photo with _$Photo {
  const factory Photo({@JsonKey(name: 'stringValue') String? stringValue}) =
      _Photo;
  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
