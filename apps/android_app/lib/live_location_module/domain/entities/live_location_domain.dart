import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_location_domain.freezed.dart';
part 'live_location_domain.g.dart';

@freezed
class LiveLocationDomain with _$LiveLocationDomain {
  const factory LiveLocationDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _LiveLocationDomain;

  factory LiveLocationDomain.fromJson(Map<String, dynamic> json) =>
      _$LiveLocationDomainFromJson(json);
}

@freezed
class Fields with _$Fields {
  const factory Fields({
    @JsonKey(name: 'timestamp') Timestamp? timestamp,
    @JsonKey(name: 'latitude') Accuracy? latitude,
    @JsonKey(name: 'longitude') Accuracy? longitude,
    @JsonKey(name: 'accuracy') Accuracy? accuracy,
    @JsonKey(name: 'isMocked') IsMocked? isMocked,
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class Accuracy with _$Accuracy {
  const factory Accuracy({@JsonKey(name: 'doubleValue') double? doubleValue}) =
      _Accuracy;

  factory Accuracy.fromJson(Map<String, dynamic> json) =>
      _$AccuracyFromJson(json);
}

@freezed
class IsMocked with _$IsMocked {
  const factory IsMocked({@JsonKey(name: 'booleanValue') bool? booleanValue}) =
      _IsMocked;

  factory IsMocked.fromJson(Map<String, dynamic> json) =>
      _$IsMockedFromJson(json);
}

@freezed
class Timestamp with _$Timestamp {
  const factory Timestamp({
    @JsonKey(name: 'timestampValue') String? timestampValue,
  }) = _Timestamp;

  factory Timestamp.fromJson(Map<String, dynamic> json) =>
      _$TimestampFromJson(json);
}
