import 'package:dio/dio.dart';

class API {
  static const url = 'http://127.0.0.1:8080';
  static const baseUrl = '$url/api';
  static const _getPasien = '$baseUrl/get-pasien';
  static Future<Map<String, dynamic>> get getPasien async {
    var data = {};
    var response = await Dio().get(
      _getPasien,
      data: data,
    );
    final obj = response.data as Map<String, dynamic>;
    return obj;
  }
}
