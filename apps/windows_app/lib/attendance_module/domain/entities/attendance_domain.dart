import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_domain.freezed.dart';
part 'attendance_domain.g.dart';

@freezed
class AttendanceDomain with _$AttendanceDomain {
  const factory AttendanceDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _AttendanceDomain;

  factory AttendanceDomain.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDomainFromJson(json);
}

@freezed
class Fields with _$Fields {
  const factory Fields({
    @JsonKey(name: 'checkin_time') CheckTime? checkinTime,
    @JsonKey(name: 'checkin_location') CheckLocation? checkinLocation,
    @JsonKey(name: 'created_by') CreatedBy? createdBy,
    @JsonKey(name: 'checkout_location') CheckLocation? checkoutLocation,
    @JsonKey(name: 'checkout_time') CheckTime? checkoutTime,
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class CheckLocation with _$CheckLocation {
  const factory CheckLocation({@JsonKey(name: 'mapValue') MapValue? mapValue}) =
      _CheckLocation;

  factory CheckLocation.fromJson(Map<String, dynamic> json) =>
      _$CheckLocationFromJson(json);
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

@freezed
class CheckTime with _$CheckTime {
  const factory CheckTime({
    @JsonKey(name: 'timestampValue') String? timestampValue,
  }) = _CheckTime;

  factory CheckTime.fromJson(Map<String, dynamic> json) =>
      _$CheckTimeFromJson(json);
}

@freezed
class CreatedBy with _$CreatedBy {
  const factory CreatedBy({@JsonKey(name: 'stringValue') String? stringValue}) =
      _CreatedBy;

  factory CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$CreatedByFromJson(json);
}
