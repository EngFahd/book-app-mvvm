import 'dart:convert';

import 'package:dio/dio.dart';

class api {
  final String _baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio dio;
  api({required this.dio});
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var res = await dio.get('$base64Url$endPoint');

    return res.data;
  }
}
