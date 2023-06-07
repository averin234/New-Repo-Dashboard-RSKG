import 'package:dashboard_rskg_mobile/app/data/model/detail_model.dart';
import 'package:dashboard_rskg_mobile/app/data/model/pasien_pendapatan.dart';
import 'package:dio/dio.dart';

class API {
  static const url = 'http://127.0.0.1:8080';
  static const urlRskg = 'https://rskg-ainun.sirs.co.id';
  static const baseUrl = '$url/api';
  static Future<ModelDetail> getDetail(
      {required String path, required String date}) async {
    var data = date;
    var response = await Dio().get('$baseUrl/$path',
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
      '$urlRskg/api/v1/get_jumlah_pasien.php',
      data: data,
    );
    if (response.statusCode == 200) {
      final json = response.data as Map<String, dynamic>;
      final obj = JumlahPasienPendapatan.fromJson(json).data!.pasien!;
      return obj;
    } else {
      return Pasien();
    }
  }

  static Future<Pendapatan> getPendapatan({required String date}) async {
    var data = {'tanggal': date};
    var response = await Dio().get(
      '$urlRskg/api/v1/get_jumlah_pasien.php',
      data: data,
    );
    if (response.statusCode == 200) {
      final json = response.data as Map<String, dynamic>;
      final obj = JumlahPasienPendapatan.fromJson(json).data!.pendapatan!;
      return obj;
    } else {
      return Pendapatan();
    }
  }
}
