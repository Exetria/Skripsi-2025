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
    @JsonKey(name: 'company_store_condition') ApprovedBy? companyStoreCondition,
    @JsonKey(name: 'owner_name') ApprovedBy? ownerName,
    @JsonKey(name: 'subscription_type') ApprovedBy? subscriptionType,
    @JsonKey(name: 'customer_type') ApprovedBy? customerType,
    @JsonKey(name: 'company_location') CompanyLocation? companyLocation,
    @JsonKey(name: 'owner_address') ApprovedBy? ownerAddress,
    @JsonKey(name: 'owner_national_id') ApprovedBy? ownerNationalId,
    @JsonKey(name: 'owner_tax_id') ApprovedBy? ownerTaxId,
    @JsonKey(name: 'requested_by') ApprovedBy? requestedBy,
    @JsonKey(name: 'owner_national_id_photo') ApprovedBy? ownerNationalIdPhoto,
    @JsonKey(name: 'company_address') ApprovedBy? companyAddress,
    @JsonKey(name: 'note') ApprovedBy? note,
    @JsonKey(name: 'company_email') ApprovedBy? companyEmail,
    @JsonKey(name: 'approved_by') ApprovedBy? approvedBy,
    @JsonKey(name: 'ownership_status') ApprovedBy? ownershipStatus,
    @JsonKey(name: 'company_store_photo') CompanyStorePhoto? companyStorePhoto,
    @JsonKey(name: 'company_name') ApprovedBy? companyName,
    @JsonKey(name: 'owner_phone_number') ApprovedBy? ownerPhoneNumber,
    @JsonKey(name: 'blacklisted') Blacklisted? blacklisted,
    @JsonKey(name: 'company_phone_number') ApprovedBy? companyPhoneNumber,
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
    @JsonKey(name: 'latitude') Itude? latitude,
    @JsonKey(name: 'longitude') Itude? longitude,
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
class Itude with _$Itude {
  const factory Itude({@JsonKey(name: 'doubleValue') double? doubleValue}) =
      _Itude;

  factory Itude.fromJson(Map<String, dynamic> json) => _$ItudeFromJson(json);
}

@freezed
class CompanyStorePhoto with _$CompanyStorePhoto {
  const factory CompanyStorePhoto({
    @JsonKey(name: 'stringValue') String? stringValue,
  }) = _CompanyStorePhoto;

  factory CompanyStorePhoto.fromJson(Map<String, dynamic> json) =>
      _$CompanyStorePhotoFromJson(json);
}
