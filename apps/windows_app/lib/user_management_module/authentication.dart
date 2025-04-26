import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/helper/apiHelper.dart';

bool signUp(String email, String password) {
  return true;
}

Future<bool> signIn(String email, String password) async {
  final ApiResponse result = await apiCallPost(
    useHeader: false,
    'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=${dotenv.env['API_KEY']}',
    // TODO: add body (email & password)
  );

  result.fold(
    (data) {
      print('asds success : $data');
      return data;
    },
    (error) {
      print('asds fail : $error');
      return error;
    },
  );

  return false;
}

bool signOut(String email, String password) {
  return true;
}
