class ModelDetail {
  int? code;
  Data? data;

  ModelDetail({this.code, this.data});

  ModelDetail.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? total;
  List<Kelompok>? kelompok;

  Data({this.total, this.kelompok});

  Data.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    if (json['kelompok'] != null) {
      kelompok = <Kelompok>[];
      json['kelompok'].forEach((v) {
        kelompok!.add(Kelompok.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total'] = total;
    if (kelompok != null) {
      data['kelompok'] = kelompok!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Kelompok {
  int? kodeKelompok;
  String? namaKelompok;
  String? total;
  List<dynamic>? tgl;

  Kelompok({this.kodeKelompok, this.namaKelompok, this.total, this.tgl});

  Kelompok.fromJson(Map<String, dynamic> json) {
    kodeKelompok = json['kode_kelompok'];
    namaKelompok = json['nama_kelompok'];
    total = json['total'];
    tgl = json['tgl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kode_kelompok'] = kodeKelompok;
    data['nama_kelompok'] = namaKelompok;
    data['total'] = total;
    data['tgl'] = tgl;
    return data;
  }
}
