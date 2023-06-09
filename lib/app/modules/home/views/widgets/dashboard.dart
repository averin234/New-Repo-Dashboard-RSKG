import 'package:dashboard_rskg_mobile/app/data/model/pasien_pendapatan.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_widget.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_widget2.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  final Pasien pasien;
  const DashBoard({super.key, required this.pasien});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CardWidget(
          imageKiri: 'assets/images/icons/total_pasien.svg',
          titleKiri: "Total Pasien",
          valueKiri: pasien.total ?? '',
          imageKanan: 'assets/images/icons/pasien_poli.svg',
          titleKanan: "Pasien Poliklinik",
          valueKanan: pasien.poli ?? '',
          isUmumKiri: true,
          isUmumKanan: true,
          pathKiri: 'pasien',
          pathKanan: 'poli',
        ),
        const SizedBox(height: 15),
        CardWidget(
          imageKiri: 'assets/images/icons/hemode.svg',
          titleKiri: "Pasien Hemodialisa",
          valueKiri: pasien.hd ?? '',
          imageKanan: 'assets/images/icons/igd.svg',
          titleKanan: "Pasien IGD",
          valueKanan: pasien.igd ?? '',
          isUmumKiri: true,
          isUmumKanan: true,
          pathKiri: 'hemo',
          pathKanan: 'igd',
        ),
        const SizedBox(height: 15),
        CardWidget(
          imageKiri: 'assets/images/icons/labro.svg',
          titleKiri: "Laboratorium",
          valueKiri: pasien.lab ?? '',
          imageKanan: 'assets/images/icons/resep2.svg',
          titleKanan: "Jumlah Resep",
          valueKanan: pasien.resep ?? '',
          isUmumKiri: true,
          isUmumKanan: false,
          pathKiri: 'lab',
          pathKanan: 'resep',
        ),
        const SizedBox(height: 15),
        CardWidget2(
          imageKiri: 'assets/images/icons/bpjs.svg',
          titleKiri: "Pasien BPJS",
          valueKiri: pasien.bpjs ?? '',
          isUmumKiri: true,
          pathKiri: 'bpjs',
          imageKanan: 'assets/images/icons/total_pasien.svg',
          titleKanan: "Pasien Umum",
          valueKanan: pasien.umum ?? '',
          isUmumKanan: true,
          pathKanan: 'umum',
        ),
        const SizedBox(height: 10),
        CardWidget2(
          imageKiri: 'assets/images/icons/perusahaan.svg',
          titleKiri: "Pasien Asuransi/Perusahaan",
          valueKiri: pasien.asuransi ?? '',
          isUmumKiri: true,
          pathKiri: 'asuransi',
          imageKanan: 'assets/images/icons/karyawan.svg',
          titleKanan: "Pasien Karyawan",
          valueKanan: pasien.karyawan ?? '',
          isUmumKanan: true,
          pathKanan: 'karyawan',
        ),
      ],
    );
  }
}
