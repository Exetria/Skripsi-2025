import 'package:android_app/user_management_module/domain/entities/check_user_data_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class CheckUserDataRemoteDatasource {
  Future<CheckUserDataDomain> checkUserData({
    required String idToken,
    required String uid,
  });
}

class CheckUserDataRemoteDatasourceImpl
    implements CheckUserDataRemoteDatasource {
  @override
  Future<CheckUserDataDomain> checkUserData({
    required String idToken,
    required String uid,
  }) async {
    Map<String, dynamic> result = await apiCallGet(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/users/$uid',
      headers: {
        'Authorization': 'Bearer $idToken',
        'Content-Type': 'application/json',
      },
    );

    return CheckUserDataDomain.fromJson(result);
  }
}
