import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_domain.freezed.dart';
part 'refresh_token_domain.g.dart';

@freezed
class RefreshTokenDomain with _$RefreshTokenDomain {
  const factory RefreshTokenDomain({
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'expires_in') String? expiresIn,
    @JsonKey(name: 'token_type') String? tokenType,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    @JsonKey(name: 'id_token') String? idToken,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'project_id') String? projectId,
  }) = _RefreshTokenDomain;

  factory RefreshTokenDomain.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenDomainFromJson(json);
}
