import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';

abstract class UserListRemoteDatasource {
  Future<List<UserDomain>> getUserList();
}

class UserListRemoteDatasourceImpl implements UserListRemoteDatasource {
  @override
  Future<List<UserDomain>> getUserList() async {
    Map<String, dynamic> result = await apiCallGet(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/users',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken ?? ""}',
        'Content-Type': 'application/json',
      },
    );

    final documents = (result['documents'] as List<dynamic>? ?? []);
    return documents
        .map((e) => UserDomain.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
