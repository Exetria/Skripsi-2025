class UserDataHelper {
  final String id;
  final String name;
  final String email;
  final String role;
  final String idToken;

  UserDataHelper({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.idToken,
  });
}

late UserDataHelper userDataHelper;
