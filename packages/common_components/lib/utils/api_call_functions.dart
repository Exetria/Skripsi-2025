import 'dart:convert';
import 'dart:io';

import 'package:common_components/global/user_data_helper.dart';
import 'package:common_components/utils/api_exception.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;

// safety function for call remote process
Future<Either<ApiException, T>> remoteProcess<T>(Future<T> process) async {
  try {
    var processResult = await process;
    return Right(processResult);
  } catch (e) {
    if (e is ApiException) {
      return Left(e);
    } else if (e is Exception) {
      return Left(ApiException(statusCode: -2, message: e.toString()));
    } else {
      return Left(ApiException(statusCode: -2, message: 'Unknown error'));
    }
  }
}

// GET request (no body)
Future<Map<String, dynamic>> apiCallGet(
  String url, {
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  Map<String, String> headers =
      useHeader
          ? {
            'Authorization': 'Bearer ${userDataHelper.idToken}',
            'Content-Type': 'application/json',
          }
          : {};

  try {
    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw ApiException(
        statusCode: response.statusCode,
        message: "success",
        responseBody: json.decode(response.body),
      );
    }
  } on SocketException {
    throw ApiException(statusCode: 0, message: "Connection Error");
  } catch (e) {
    throw ApiException(statusCode: -1, message: "Unknown Error");
  }
}

// POST request (with optional body)
Future<Map<String, dynamic>> apiCallPost(
  String url, {
  Map<String, dynamic>? body,
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  Map<String, String> headers =
      useHeader
          ? {
            'Authorization': 'Bearer ${userDataHelper.idToken}',
            'Content-Type': 'application/json',
          }
          : {};

  try {
    final response = await http.post(
      uri,
      headers: headers,
      body: jsonEncode(body ?? {}),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw ApiException(
        statusCode: response.statusCode,
        message: "success",
        responseBody: json.decode(response.body),
      );
    }
  } on SocketException {
    throw ApiException(statusCode: 0, message: "Connection Error");
  } catch (e) {
    throw ApiException(statusCode: -1, message: "Unknown Error");
  }
}

// PATCH request (partial update)
Future<Map<String, dynamic>> apiCallPatch(
  String url, {
  Map<String, dynamic>? body,
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  Map<String, String> headers =
      useHeader
          ? {
            'Authorization': 'Bearer ${userDataHelper.idToken}',
            'Content-Type': 'application/json',
          }
          : {};

  try {
    final response = await http.patch(
      uri,
      headers: headers,
      body: jsonEncode(body ?? {}),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw ApiException(
        statusCode: response.statusCode,
        message: "success",
        responseBody: json.decode(response.body),
      );
    }
  } on SocketException {
    throw ApiException(statusCode: 0, message: "Connection Error");
  } catch (e) {
    throw ApiException(statusCode: -1, message: "Unknown Error");
  }
}

// PUT request (full update or replace)
Future<Map<String, dynamic>> apiCallPut(
  String url, {
  Map<String, dynamic>? body,
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  Map<String, String> headers =
      useHeader
          ? {
            'Authorization': 'Bearer ${userDataHelper.idToken}',
            'Content-Type': 'application/json',
          }
          : {};

  try {
    final response = await http.put(
      uri,
      headers: headers,
      body: jsonEncode(body ?? {}),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw ApiException(
        statusCode: response.statusCode,
        message: "success",
        responseBody: json.decode(response.body),
      );
    }
  } on SocketException {
    throw ApiException(statusCode: 0, message: "Connection Error");
  } catch (e) {
    throw ApiException(statusCode: -1, message: "Unknown Error");
  }
}

// DELETE request
Future<Map<String, dynamic>> apiCallDelete(
  String url, {
  bool useHeader = true,
}) async {
  final uri = Uri.parse(url);

  Map<String, String> headers =
      useHeader
          ? {
            'Authorization': 'Bearer ${userDataHelper.idToken}',
            'Content-Type': 'application/json',
          }
          : {};

  try {
    final response = await http.delete(uri, headers: headers);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw ApiException(
        statusCode: response.statusCode,
        message: "success",
        responseBody: json.decode(response.body),
      );
    }
  } on SocketException {
    throw ApiException(statusCode: 0, message: "Connection Error");
  } catch (e) {
    throw ApiException(statusCode: -1, message: "Unknown Error");
  }
}
