import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:windows_app/helper/userDataHelper.dart';

class ApiException implements Exception {
  final int? statusCode;
  final String? message;
  final Map<String, dynamic>? responseBody;

  ApiException({this.statusCode, this.message, this.responseBody});

  @override
  String toString() {
    return 'ApiException(statusCode: $statusCode, responseBody: $responseBody)';
  }
}

// safety function for call remote process
Future<Either<ApiException, T>> remoteProcess<T>(Future<T> process) async {
  try {
    var processResult = await process;
    return Right(processResult);
  } catch (e) {
    if (e is ApiException) {
      return Left(e);
    } else if (e is Exception) {
      return Left(ApiException(message: e.toString()));
    } else {
      return Left(ApiException(message: 'Unknown error'));
    }
  }
}

// GET request (no body)
Future<Map<String, dynamic>> apiCallGet(
  String url, {
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  Map<String, String> _headers =
      useHeader
          ? {
            'Authorization': 'Bearer ${userDataHelper.idToken}',
            'Content-Type': 'application/json',
          }
          : {};

  final response = await http.get(uri, headers: _headers);

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw ApiException(
      statusCode: response.statusCode,
      responseBody: json.decode(response.body),
    );
  }
}

// POST request (with optional body)
Future<Map<String, dynamic>> apiCallPost(
  String url, {
  Map<String, dynamic>? body,
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  Map<String, String> _headers =
      useHeader
          ? {
            'Authorization': 'Bearer ${userDataHelper.idToken}',
            'Content-Type': 'application/json',
          }
          : {};

  final response = await http.post(
    uri,
    headers: _headers,
    body: jsonEncode(body ?? {}),
  );

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw ApiException(
      statusCode: response.statusCode,
      responseBody: json.decode(response.body),
    );
  }
}

// PATCH request (partial update)
Future<Map<String, dynamic>> apiCallPatch(
  String url, {
  Map<String, dynamic>? body,
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  Map<String, String> _headers =
      useHeader
          ? {
            'Authorization': 'Bearer ${userDataHelper.idToken}',
            'Content-Type': 'application/json',
          }
          : {};

  final response = await http.patch(
    uri,
    headers: _headers,
    body: jsonEncode(body ?? {}),
  );

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw ApiException(
      statusCode: response.statusCode,
      responseBody: json.decode(response.body),
    );
  }
}

// PUT request (full update or replace)
Future<Map<String, dynamic>> apiCallPut(
  String url, {
  Map<String, dynamic>? body,
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  Map<String, String> _headers =
      useHeader
          ? {
            'Authorization': 'Bearer ${userDataHelper.idToken}',
            'Content-Type': 'application/json',
          }
          : {};

  final response = await http.put(
    uri,
    headers: _headers,
    body: jsonEncode(body ?? {}),
  );

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw ApiException(
      statusCode: response.statusCode,
      responseBody: json.decode(response.body),
    );
  }
}

// DELETE request
Future<Map<String, dynamic>> apiCallDelete(
  String url, {
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  Map<String, String> _headers =
      useHeader
          ? {
            'Authorization': 'Bearer ${userDataHelper.idToken}',
            'Content-Type': 'application/json',
          }
          : {};

  final response = await http.delete(uri, headers: _headers);

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw ApiException(
      statusCode: response.statusCode,
      responseBody: json.decode(response.body),
    );
  }
}
