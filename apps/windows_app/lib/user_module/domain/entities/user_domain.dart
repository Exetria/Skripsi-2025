import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_domain.freezed.dart';
part 'user_domain.g.dart';

@freezed
class UserDomain with _$UserDomain {
  const factory UserDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _UserDomain;

  factory UserDomain.fromJson(Map<String, dynamic> json) =>
      _$UserDomainFromJson(json);
}

@freezed
class Fields with _$Fields {
  const factory Fields({
    @JsonKey(name: 'role') Email? role,
    @JsonKey(name: 'full_name') Email? fullName,
    @JsonKey(name: 'email') Email? email,
    @JsonKey(name: 'is_active') IsActive? isActive,
    @JsonKey(name: 'phone_number') Email? phoneNumber,
    @JsonKey(name: 'photo_url') PhotoUrl? photoUrl,
    @JsonKey(name: 'assigned_products') Assigned? assignedProducts,
    @JsonKey(name: 'assigned_customers') Assigned? assignedCustomers,
    @JsonKey(name: 'user_name') Email? userName,
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
  const factory ArrayValue({@JsonKey(name: 'values') List<Email>? values}) =
      _ArrayValue;
  factory ArrayValue.fromJson(Map<String, dynamic> json) =>
      _$ArrayValueFromJson(json);
}

@freezed
class Email with _$Email {
  const factory Email({@JsonKey(name: 'stringValue') String? stringValue}) =
      _Email;
  factory Email.fromJson(Map<String, dynamic> json) => _$EmailFromJson(json);
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
