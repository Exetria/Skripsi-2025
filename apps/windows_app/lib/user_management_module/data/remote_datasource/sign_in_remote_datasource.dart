import 'package:common_components/common_components.dart';
import 'package:common_components/utils/encryption.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/user_management_module/domain/entities/sign_in_domain.dart';

abstract class SignInRemoteDatasource {
  Future<SignInDomain> signIn({
    required String email,
    required String password,
  });
}

class SignInRemoteDatasourceImpl implements SignInRemoteDatasource {
  @override
  Future<SignInDomain> signIn({
    required String email,
    required String password,
  }) async {
    Map<String, dynamic> result = await apiCallPost(
      url:
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=${dotenv.env['API_KEY']}',
      headers: {},
      body: {
        'email': email,
        'password': encryptPassword(password: password),
        'returnSecureToken': true,
      },
    );

    return SignInDomain.fromJson(result);
  }
}
