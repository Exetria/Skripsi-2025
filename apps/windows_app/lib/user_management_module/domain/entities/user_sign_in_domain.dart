import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_sign_in_domain.freezed.dart';
part 'user_sign_in_domain.g.dart';

@freezed
class SignInDomain with _$SignInDomain {
  const factory SignInDomain({
    @JsonKey(name: 'kind') String? kind,
    @JsonKey(name: 'localId') String? localId,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'displayName') String? displayName,
    @JsonKey(name: 'idToken') String? idToken,
    @JsonKey(name: 'registered') bool? registered,
    @JsonKey(name: 'refreshToken') String? refreshToken,
    @JsonKey(name: 'expiresIn') String? expiresIn,
  }) = _SignInDomain;

  factory SignInDomain.fromJson(Map<String, dynamic> json) =>
      _$SignInDomainFromJson(json);
}
