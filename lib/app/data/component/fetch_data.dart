import 'package:dashboard_rskg_mobile/app/data/model/detail_model.dart';
import 'package:dashboard_rskg_mobile/app/data/model/pasien_pendapatan.dart';
import 'package:dio/dio.dart';

class API {
  static const url = 'https://rskg.sirs.co.id';
  static const baseUrl = '$url/api/v1';
  static Future<ModelDetail> getDetail(
      {required String path, required String date}) async {
    var data = {'tanggal': date};
    var response = await Dio().get('$baseUrl/get-detail-$path.php',
        data: data,
        options: Options(headers: {'content-Type': 'application/json'}));
    if (response.statusCode == 200) {
      final json = response.data as Map<String, dynamic>;
      final obj = ModelDetail.fromJson(json);
      return obj;
    } else {
      return ModelDetail();
    }
  }

  static Future<Pasien> getPasien({required String date}) async {
    var data = {'tanggal': date};
    var response = await Dio().get(
      '$baseUrl/get-menu-dashboard.php',
      data: data,
    );
    if (response.statusCode == 200) {
      final json = response.data as Map<String, dynamic>;
      final obj = MenuDashboard.fromJson(json).data!.pasien!;
      return obj;
    } else {
      return Pasien();
    }
  }

  static Future<Pendapatan> getPendapatan({required String date}) async {
    var data = {'tanggal': date};
    var response = await Dio().get(
      '$baseUrl/get-menu-dashboard.php',
      data: data,
    );
    if (response.statusCode == 200) {
      final json = response.data as Map<String, dynamic>;
      final obj = MenuDashboard.fromJson(json).data!.pendapatan!;
      return obj;
    } else {
      return Pendapatan();
    }
  }
}
