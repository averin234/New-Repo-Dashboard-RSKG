class JumlahPasienPendapatan {
  String? code;
  Data? data;

  JumlahPasienPendapatan({this.code, this.data});

  JumlahPasienPendapatan.fromJson(Map<String, dynamic> json) {
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
  Pasien? pasien;
  Pendapatan? pendapatan;

  Data({this.pasien, this.pendapatan});

  Data.fromJson(Map<String, dynamic> json) {
    pasien = json['pasien'] != null ? Pasien.fromJson(json['pasien']) : null;
    pendapatan = json['pendapatan'] != null
        ? Pendapatan.fromJson(json['pendapatan'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (pasien != null) {
      data['pasien'] = pasien!.toJson();
    }
    if (pendapatan != null) {
      data['pendapatan'] = pendapatan!.toJson();
    }
    return data;
  }
}

class Pasien {
  String? total;
  String? umum;
  String? asuransi;
  String? bpjs;
  String? karyawan;
  String? poli;
  String? hd;
  String? igd;
  String? resep;
  String? lab;

  Pasien(
      {this.total,
      this.umum,
      this.asuransi,
      this.bpjs,
      this.karyawan,
      this.poli,
      this.hd,
      this.igd,
      this.resep,
      this.lab});

  Pasien.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    umum = json['umum'];
    asuransi = json['asuransi'];
    bpjs = json['bpjs'];
    karyawan = json['karyawan'];
    poli = json['poli'];
    hd = json['hd'];
    igd = json['igd'];
    lab = json['lab'];
    resep = json['resep'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total'] = total;
    data['umum'] = umum;
    data['asuransi'] = asuransi;
    data['bpjs'] = bpjs;
    data['karyawan'] = karyawan;
    data['poli'] = poli;
    data['hd'] = hd;
    data['igd'] = igd;
    data['lab'] = lab;
    data['resep'] = resep;
    return data;
  }
}

class Pendapatan {
  String? harian;
  String? bulanan;
  String? tahunan;
  Unit? unit;

  Pendapatan({this.harian, this.bulanan, this.tahunan, this.unit});

  Pendapatan.fromJson(Map<String, dynamic> json) {
    harian = json['harian'];
    bulanan = json['bulanan'];
    tahunan = json['tahunan'];
    unit = json['unit'] != null ? Unit.fromJson(json['unit']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['harian'] = harian;
    data['bulanan'] = bulanan;
    data['tahunan'] = tahunan;
    if (unit != null) {
      data['unit'] = unit!.toJson();
    }
    return data;
  }
}

class Unit {
  String? hd;
  String? poli;
  String? igd;
  String? ri;
  String? lab;
  String? rad;
  String? fisio;

  Unit({this.hd, this.poli, this.igd, this.ri, this.lab, this.rad, this.fisio});

  Unit.fromJson(Map<String, dynamic> json) {
    hd = json['hd'];
    poli = json['poli'];
    igd = json['igd'];
    ri = json['ri'];
    lab = json['lab'];
    rad = json['rad'];
    fisio = json['fisio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hd'] = hd;
    data['poli'] = poli;
    data['igd'] = igd;
    data['ri'] = ri;
    data['lab'] = lab;
    data['rad'] = rad;
    data['fisio'] = fisio;
    return data;
  }
}
