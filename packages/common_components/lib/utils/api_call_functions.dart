import 'dart:convert';
import 'dart:io';

import 'package:common_components/utils/api_exception.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;

// safety function for call remote process
Future<Either<ApiException, T>> remoteProcess<T>(Future<T> process) async {
  try {
    var processResult = await process;
    return Right(processResult);
  } on SocketException {
    return Left(ApiException(statusCode: 0, message: "Connection Error"));
  } catch (e) {
    if (e is ApiException) {
      return Left(e);
    } else if (e is Exception) {
      return Left(ApiException(statusCode: -1, message: e.toString()));
    } else {
      return Left(ApiException(statusCode: -1, message: 'Unknown error'));
    }
  }
}

// GET request (no body)
Future<Map<String, dynamic>> apiCallGet({
  required String url,
  required Map<String, String> headers,
}) async {
  final uri = Uri.parse(url);

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
}

// POST request (with optional body)
Future<Map<String, dynamic>> apiCallPost({
  required String url,
  required Map<String, String> headers,
  Map<String, dynamic>? body,
}) async {
  final uri = Uri.parse(url);

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
}

// PATCH request (partial update)
Future<Map<String, dynamic>> apiCallPatch({
  required String url,
  required Map<String, String> headers,
  Map<String, dynamic>? body,
}) async {
  final uri = Uri.parse(url);

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
}

// PUT request (full update or replace)
Future<Map<String, dynamic>> apiCallPut({
  required String url,
  required Map<String, String> headers,
  Map<String, dynamic>? body,
}) async {
  final uri = Uri.parse(url);

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
}

// DELETE request
Future<Map<String, dynamic>> apiCallDelete({
  required String url,
  required Map<String, String> headers,
}) async {
  final uri = Uri.parse(url);

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
}
