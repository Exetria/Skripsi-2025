import 'package:freezed_annotation/freezed_annotation.dart';

part 'visit_domain.freezed.dart';
part 'visit_domain.g.dart';

@freezed
class VisitDomain with _$VisitDomain {
  const factory VisitDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _VisitDomain;

  factory VisitDomain.fromJson(Map<String, dynamic> json) =>
      _$VisitDomainFromJson(json);
}

@freezed
class Fields with _$Fields {
  const factory Fields({
    @JsonKey(name: 'created_by') CreatedBy? createdBy,
    @JsonKey(name: 'visit_date') VisitDate? visitDate,
    @JsonKey(name: 'visits') Visits? visits,
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class CreatedBy with _$CreatedBy {
  const factory CreatedBy({@JsonKey(name: 'stringValue') String? stringValue}) =
      _CreatedBy;

  factory CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$CreatedByFromJson(json);
}

@freezed
class VisitDate with _$VisitDate {
  const factory VisitDate({
    @JsonKey(name: 'timestampValue') String? timestampValue,
  }) = _VisitDate;

  factory VisitDate.fromJson(Map<String, dynamic> json) =>
      _$VisitDateFromJson(json);
}

@freezed
class Visits with _$Visits {
  const factory Visits({@JsonKey(name: 'arrayValue') ArrayValue? arrayValue}) =
      _Visits;

  factory Visits.fromJson(Map<String, dynamic> json) => _$VisitsFromJson(json);
}

@freezed
class ArrayValue with _$ArrayValue {
  const factory ArrayValue({@JsonKey(name: 'values') List<Value>? values}) =
      _ArrayValue;

  factory ArrayValue.fromJson(Map<String, dynamic> json) =>
      _$ArrayValueFromJson(json);
}

@freezed
class Value with _$Value {
  const factory Value({@JsonKey(name: 'mapValue') ValueMapValue? mapValue}) =
      _Value;

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}

@freezed
class ValueMapValue with _$ValueMapValue {
  const factory ValueMapValue({@JsonKey(name: 'fields') PurpleFields? fields}) =
      _ValueMapValue;

  factory ValueMapValue.fromJson(Map<String, dynamic> json) =>
      _$ValueMapValueFromJson(json);
}

@freezed
class PurpleFields with _$PurpleFields {
  const factory PurpleFields({
    @JsonKey(name: 'customer_id') CreatedBy? customerId,
    @JsonKey(name: 'visit_status') VisitStatus? visitStatus,
    @JsonKey(name: 'visit_notes') CreatedBy? visitNotes,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'visit_photo_url') CreatedBy? visitPhotoUrl,
  }) = _PurpleFields;

  factory PurpleFields.fromJson(Map<String, dynamic> json) =>
      _$PurpleFieldsFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    @JsonKey(name: 'mapValue') LocationMapValue? mapValue,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class LocationMapValue with _$LocationMapValue {
  const factory LocationMapValue({
    @JsonKey(name: 'fields') FluffyFields? fields,
  }) = _LocationMapValue;

  factory LocationMapValue.fromJson(Map<String, dynamic> json) =>
      _$LocationMapValueFromJson(json);
}

@freezed
class FluffyFields with _$FluffyFields {
  const factory FluffyFields({
    @JsonKey(name: 'latitude') Accuracy? latitude,
    @JsonKey(name: 'longitude') Accuracy? longitude,
    @JsonKey(name: 'accuracy') Accuracy? accuracy,
  }) = _FluffyFields;

  factory FluffyFields.fromJson(Map<String, dynamic> json) =>
      _$FluffyFieldsFromJson(json);
}

@freezed
class Accuracy with _$Accuracy {
  const factory Accuracy({@JsonKey(name: 'doubleValue') double? doubleValue}) =
      _Accuracy;

  factory Accuracy.fromJson(Map<String, dynamic> json) =>
      _$AccuracyFromJson(json);
}

@freezed
class VisitStatus with _$VisitStatus {
  const factory VisitStatus({
    @JsonKey(name: 'integerValue') String? integerValue,
  }) = _VisitStatus;

  factory VisitStatus.fromJson(Map<String, dynamic> json) =>
      _$VisitStatusFromJson(json);
}
