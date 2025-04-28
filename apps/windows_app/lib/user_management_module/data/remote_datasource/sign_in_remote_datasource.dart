import 'package:common_components/common_components.dart';
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
      useHeader: false,
      'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=${dotenv.env['API_KEY']}',
      body: {'email': email, 'password': password, 'returnSecureToken': true},
    );

    return SignInDomain.fromJson(result);
  }
}
