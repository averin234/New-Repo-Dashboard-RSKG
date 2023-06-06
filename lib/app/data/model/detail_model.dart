class ModelDetail {
  String? tanggal;
  int? total;
  List<Kelompok>? kelompok;

  ModelDetail({this.tanggal, this.total, this.kelompok});

  ModelDetail.fromJson(Map<String, dynamic> json) {
    tanggal = json['tanggal'];
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
    data['tanggal'] = tanggal;
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
  Map<String, dynamic>? data;

  Kelompok({this.kodeKelompok, this.namaKelompok, this.data});

  Kelompok.fromJson(Map<String, dynamic> json) {
    kodeKelompok = json['kode_kelompok'];
    namaKelompok = json['nama_kelompok'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> datas = <String, dynamic>{};
    datas['kode_kelompok'] = kodeKelompok;
    datas['nama_kelompok'] = namaKelompok;
    datas['data'] = data;
    return datas;
  }
}
