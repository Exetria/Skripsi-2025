import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:windows_app/helper/userDataHelper.dart';

class ApiResponse<T> {
  final T? data;
  final String? error;

  ApiResponse.success(this.data) : error = null;
  ApiResponse.failure(this.error) : data = null;

  bool get isSuccess => data != null;

  R fold<R>(R Function(T data) onSuccess, R Function(String error) onFailure) {
    if (isSuccess) {
      return onSuccess(data as T);
    } else {
      return onFailure(error ?? 'Unknown error');
    }
  }
}

// GET request (no body)
Future<ApiResponse<Map<String, dynamic>>> apiCallGet(
  String url, {
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  try {
    Map<String, String> _headers =
        useHeader
            ? {
              'Authorization': 'Bearer ${userDataHelper.idToken}',
              'Content-Type': 'application/json',
            }
            : {};

    final response = await http.get(uri, headers: _headers);

    if (response.statusCode == 200) {
      return ApiResponse.success(json.decode(response.body));
    } else {
      return ApiResponse.failure(
        'Error ${response.statusCode}: ${response.body}',
      );
    }
  } catch (e) {
    return ApiResponse.failure('Exception: ${e.toString()}');
  }
}

// POST request (with optional body)
Future<ApiResponse<Map<String, dynamic>>> apiCallPost(
  String url, {
  Map<String, dynamic>? body,
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  try {
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
      return ApiResponse.success(json.decode(response.body));
    } else {
      print('asds ${json.decode(response.body)}');
      return ApiResponse.failure(
        'Error ${response.statusCode}: ${response.body}',
      );
    }
  } catch (e) {
    return ApiResponse.failure('Exception: ${e.toString()}');
  }
}

// PATCH request (partial update)
Future<ApiResponse<Map<String, dynamic>>> apiCallPatch(
  String url, {
  Map<String, dynamic>? body,
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  try {
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
      return ApiResponse.success(json.decode(response.body));
    } else {
      return ApiResponse.failure(
        'Error ${response.statusCode}: ${response.body}',
      );
    }
  } catch (e) {
    return ApiResponse.failure('Exception: ${e.toString()}');
  }
}

// PUT request (full update or replace)
Future<ApiResponse<Map<String, dynamic>>> apiCallPut(
  String url, {
  Map<String, dynamic>? body,
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  try {
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
      return ApiResponse.success(json.decode(response.body));
    } else {
      return ApiResponse.failure(
        'Error ${response.statusCode}: ${response.body}',
      );
    }
  } catch (e) {
    return ApiResponse.failure('Exception: ${e.toString()}');
  }
}

// DELETE request
Future<ApiResponse<Map<String, dynamic>>> apiCallDelete(
  String url, {
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  try {
    Map<String, String> _headers =
        useHeader
            ? {
              'Authorization': 'Bearer ${userDataHelper.idToken}',
              'Content-Type': 'application/json',
            }
            : {};

    final response = await http.delete(uri, headers: _headers);

    if (response.statusCode == 200) {
      return ApiResponse.success(json.decode(response.body));
    } else {
      return ApiResponse.failure(
        'Error ${response.statusCode}: ${response.body}',
      );
    }
  } catch (e) {
    return ApiResponse.failure('Exception: ${e.toString()}');
  }
}
