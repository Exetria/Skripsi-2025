import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_domain.freezed.dart';
part 'announcement_domain.g.dart';

@freezed
class AnnouncementDomain with _$AnnouncementDomain {
  const factory AnnouncementDomain({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'fields') Fields? fields,
    @JsonKey(name: 'createTime') String? createTime,
    @JsonKey(name: 'updateTime') String? updateTime,
  }) = _AnnouncementDomain;

  factory AnnouncementDomain.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementDomainFromJson(json);
}

@freezed
class Fields with _$Fields {
  const factory Fields({
    @JsonKey(name: 'title') Content? title,
    @JsonKey(name: 'content') Content? content,
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@freezed
class Content with _$Content {
  const factory Content({@JsonKey(name: 'stringValue') String? stringValue}) =
      _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}
