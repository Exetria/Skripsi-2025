class UserDataHelper {
  final String uid;
  final String name;
  final String email;
  final String phone;
  final String role;
  String idToken;
  String refreshToken;
  final List<String> assignedProducts;
  final List<String> assignedCustomers;

  UserDataHelper({
    required this.uid,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    required this.idToken,
    required this.refreshToken,
    required this.assignedProducts,
    required this.assignedCustomers,
  });
}

UserDataHelper? userDataHelper;
