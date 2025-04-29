class UserDataHelper {
  final String id;
  final String name;
  final String email;
  final String role;
  final String idToken;
  final String refreshToken;

  UserDataHelper({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.idToken,
    required this.refreshToken,
  });
}

late UserDataHelper userDataHelper;
