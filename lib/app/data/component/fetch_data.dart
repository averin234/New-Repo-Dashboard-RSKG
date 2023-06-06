import 'package:dashboard_rskg_mobile/app/data/model/detail_model.dart';
import 'package:dio/dio.dart';

class API {
  static const url = 'http://127.0.0.1:8080';
  static const baseUrl = '$url/api';
  static Future<ModelDetail> getDetail(
      {required String path, required String date}) async {
    var data = date;
    var response = await Dio().get('$baseUrl/$path',
        data: data,
        options: Options(headers: {'content-Type': 'application/json'}));
    print(response.data);
    if (response.statusCode == 200) {
      final json = response.data as Map<String, dynamic>;
      final obj = ModelDetail.fromJson(json);
      return obj;
    } else {
      return ModelDetail();
    }
  }
}
