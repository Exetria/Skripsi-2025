import 'package:freezed_annotation/freezed_annotation.dart';

part 'visit_domain.freezed.dart';
part 'visit_domain.g.dart';

@freezed
class VisitDomain with _$VisitDomain {
  const factory VisitDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') VisitDomainFields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _VisitDomain;

  factory VisitDomain.fromJson(Map<String, dynamic> json) =>
      _$VisitDomainFromJson(json);
}

@freezed
class VisitDomainFields with _$VisitDomainFields {
  const factory VisitDomainFields({
    @JsonKey(name: 'visit_date') VisitDate? visitDate,
    @JsonKey(name: 'visit_purpose') CustomerId? visitPurpose,
    @JsonKey(name: 'visit_notes') CustomerId? visitNotes,
    @JsonKey(name: 'visit_status') CustomerId? visitStatus,
    @JsonKey(name: 'sales_id') CustomerId? salesId,
    @JsonKey(name: 'customer_id') CustomerId? customerId,
    @JsonKey(name: 'location') Location? location,
  }) = _VisitDomainFields;

  factory VisitDomainFields.fromJson(Map<String, dynamic> json) =>
      _$VisitDomainFieldsFromJson(json);
}

@freezed
class CustomerId with _$CustomerId {
  const factory CustomerId({
    @JsonKey(name: 'stringValue') String? stringValue,
  }) = _CustomerId;

  factory CustomerId.fromJson(Map<String, dynamic> json) =>
      _$CustomerIdFromJson(json);
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

@freezed
class VisitDate with _$VisitDate {
  const factory VisitDate({
    @JsonKey(name: 'timestampValue') String? timestampValue,
  }) = _VisitDate;

  factory VisitDate.fromJson(Map<String, dynamic> json) =>
      _$VisitDateFromJson(json);
}
