class UserDataHelper {
  final String name;
  final String email;
  final String password;
  final String role;
  final String idToken;

  UserDataHelper({
    required this.name,
    required this.email,
    required this.password,
    required this.role,
    required this.idToken,
  });
}

late UserDataHelper userDataHelper;
