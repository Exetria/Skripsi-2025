import 'dart:convert';
import 'dart:io';

import 'package:common_components/utils/api_exception.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:mime/mime.dart';

// safety function for call remote process
Future<Either<ApiException, T>> remoteProcess<T>(Future<T> process) async {
  try {
    var processResult = await process;
    return Right(processResult);
  } on SocketException {
    return Left(ApiException(statusCode: 0, message: "Masalah Internet"));
  } catch (e) {
    if (e is ApiException) {
      return Left(e);
    } else if (e is Exception) {
      return Left(ApiException(statusCode: -1, message: e.toString()));
    } else {
      return Left(
        ApiException(statusCode: -1, message: 'Kesalahan tidak diketahui'),
      );
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
  } else if (response.statusCode == 404) {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Not Found",
      responseBody: json.decode(response.body),
    );
  } else if (response.statusCode == 400 || response.statusCode == 401) {
    throw ApiException(
      statusCode: response.statusCode,
      message: json.decode(response.body)['error']['message'],
      responseBody: json.decode(response.body),
    );
  } else {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Unknown Error",
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
  } else if (response.statusCode == 404) {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Not Found",
      responseBody: json.decode(response.body),
    );
  } else if (response.statusCode == 400 || response.statusCode == 401) {
    throw ApiException(
      statusCode: response.statusCode,
      message: json.decode(response.body)['error']['message'],
      responseBody: json.decode(response.body),
    );
  } else {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Unknown Error",
      responseBody: json.decode(response.body),
    );
  }
}

Future<List<dynamic>> apiCallPostList({
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
  } else if (response.statusCode == 404) {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Not Found",
      responseBody: json.decode(response.body),
    );
  } else if (response.statusCode == 400 || response.statusCode == 401) {
    throw ApiException(
      statusCode: response.statusCode,
      message: json.decode(response.body)['error']['message'],
      responseBody: json.decode(response.body),
    );
  } else {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Unknown Error",
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
  } else if (response.statusCode == 404) {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Not Found",
      responseBody: json.decode(response.body),
    );
  } else if (response.statusCode == 400 || response.statusCode == 401) {
    throw ApiException(
      statusCode: response.statusCode,
      message: json.decode(response.body)['error']['message'],
      responseBody: json.decode(response.body),
    );
  } else {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Unknown Error",
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
  } else if (response.statusCode == 404) {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Not Found",
      responseBody: json.decode(response.body),
    );
  } else if (response.statusCode == 400 || response.statusCode == 401) {
    throw ApiException(
      statusCode: response.statusCode,
      message: json.decode(response.body)['error']['message'],
      responseBody: json.decode(response.body),
    );
  } else {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Unknown Error",
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
  } else if (response.statusCode == 404) {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Not Found",
      responseBody: json.decode(response.body),
    );
  } else if (response.statusCode == 400 || response.statusCode == 401) {
    throw ApiException(
      statusCode: response.statusCode,
      message: json.decode(response.body)['error']['message'],
      responseBody: json.decode(response.body),
    );
  } else {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Unknown Error",
      responseBody: json.decode(response.body),
    );
  }
}

Future<Map<String, dynamic>> uploadFileToStorage({
  required String url,
  required Map<String, String> headers,
  required File file,
}) async {
  final uri = Uri.parse(url);
  final mimeType = lookupMimeType(file.path) ?? 'application/octet-stream';
  final fileBytes = await file.readAsBytes();

  final updatedHeaders = {...headers, 'Content-Type': mimeType};

  final response = await http.post(
    uri,
    headers: updatedHeaders,
    body: fileBytes,
  );

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else if (response.statusCode == 404) {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Not Found",
      responseBody: json.decode(response.body),
    );
  } else if (response.statusCode == 400 || response.statusCode == 401) {
    throw ApiException(
      statusCode: response.statusCode,
      message: json.decode(response.body)['error']['message'],
      responseBody: json.decode(response.body),
    );
  } else {
    throw ApiException(
      statusCode: response.statusCode,
      message: "Unknown Error",
      responseBody: json.decode(response.body),
    );
  }
}
