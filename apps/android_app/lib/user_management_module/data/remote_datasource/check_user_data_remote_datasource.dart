import 'package:android_app/user_management_module/domain/entities/check_user_data_domain.dart';
import 'package:common_components/common_components.dart';

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
          'https://firestore.googleapis.com/v1/projects/kost-noting/databases/(default)/documents/users/$uid',
      headers: {
        'Authorization': 'Bearer $idToken',
        'Content-Type': 'application/json',
      },
    );

    return CheckUserDataDomain.fromJson(result);
  }
}
