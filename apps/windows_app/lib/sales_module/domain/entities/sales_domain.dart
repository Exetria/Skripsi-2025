import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_domain.freezed.dart';
part 'sales_domain.g.dart';

@freezed
class SalesDomain with _$SalesDomain {
  const factory SalesDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _SalesDomain;

  factory SalesDomain.fromJson(Map<String, dynamic> json) =>
      _$SalesDomainFromJson(json);
}

@freezed
class Fields with _$Fields {
  const factory Fields({
    @JsonKey(name: 'phone_number') FullName? phoneNumber,
    @JsonKey(name: 'photo_url') PhotoUrl? photoUrl,
    @JsonKey(name: 'assigned_products') Assigned? assignedProducts,
    @JsonKey(name: 'role') FullName? role,
    @JsonKey(name: 'assigned_customers') Assigned? assignedCustomers,
    @JsonKey(name: 'is_active') IsActive? isActive,
    @JsonKey(name: 'full_name') FullName? fullName,
  }) = _Fields;
  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class Assigned with _$Assigned {
  const factory Assigned({
    @JsonKey(name: 'arrayValue') ArrayValue? arrayValue,
  }) = _Assigned;
  factory Assigned.fromJson(Map<String, dynamic> json) =>
      _$AssignedFromJson(json);
}

@freezed
class ArrayValue with _$ArrayValue {
  const factory ArrayValue({@JsonKey(name: 'values') List<FullName>? values}) =
      _ArrayValue;
  factory ArrayValue.fromJson(Map<String, dynamic> json) =>
      _$ArrayValueFromJson(json);
}

@freezed
class FullName with _$FullName {
  const factory FullName({@JsonKey(name: 'stringValue') String? stringValue}) =
      _FullName;
  factory FullName.fromJson(Map<String, dynamic> json) =>
      _$FullNameFromJson(json);
}

@freezed
class IsActive with _$IsActive {
  const factory IsActive({@JsonKey(name: 'booleanValue') bool? booleanValue}) =
      _IsActive;
  factory IsActive.fromJson(Map<String, dynamic> json) =>
      _$IsActiveFromJson(json);
}

@freezed
class PhotoUrl with _$PhotoUrl {
  const factory PhotoUrl({@JsonKey(name: 'stringValue') String? stringValue}) =
      _PhotoUrl;
  factory PhotoUrl.fromJson(Map<String, dynamic> json) =>
      _$PhotoUrlFromJson(json);
}
