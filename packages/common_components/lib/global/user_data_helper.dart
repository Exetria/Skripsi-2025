class UserDataHelper {
  final String uid;
  final String name;
  final String email;
  final String phone;
  final String role;
  final String idToken;
  final String refreshToken;

  UserDataHelper({
    required this.uid,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    required this.idToken,
    required this.refreshToken,
  });
}

UserDataHelper? userDataHelper;
