import 'package:android_app/user_management_module/domain/entities/refresh_token_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class RefreshTokenRemoteDatasource {
  Future<RefreshTokenDomain> refreshToken({required String refreshToken});
}

class RefreshTokenRemoteDatasourceImpl implements RefreshTokenRemoteDatasource {
  @override
  Future<RefreshTokenDomain> refreshToken({
    required String refreshToken,
  }) async {
    Map<String, dynamic> result = await apiCallPost(
      url:
          'https://securetoken.googleapis.com/v1/token?key=${dotenv.env['API_KEY']}',
      headers: {},
      body: {'grant_type': 'refresh_token', 'refresh_token': refreshToken},
    );

    return RefreshTokenDomain.fromJson(result);
  }
}
