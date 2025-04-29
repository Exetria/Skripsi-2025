class ApiException implements Exception {
  final int statusCode;
  final String message;
  final Map<String, dynamic>? responseBody;

  ApiException({
    required this.statusCode,
    required this.message,
    this.responseBody,
  });

  @override
  String toString() {
    return 'ApiException(statusCode: $statusCode, message: $message)';
  }
}
