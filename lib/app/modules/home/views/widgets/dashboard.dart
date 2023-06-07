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
        // GridView.builder(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 3),
        //   shrinkWrap: true,
        //   itemBuilder: (context, index) => const CardKanan(
        //     title: 'Total Pasien',
        //     value: '1.345',
        //     image: 'assets/images/icons/total_pasien.svg',
        //   ),
        // ),
        CardWidget(
          imageKiri: 'assets/images/icons/total_pasien.svg',
          titleKiri: "Total Pasien",
          valueKiri: pasien.total ?? '',
          imageKanan: 'assets/images/icons/pasien_poli.svg',
          titleKanan: "Pasien Poliklinik",
          valueKanan: pasien.poli ?? '',
          isUmumKiri: true,
          isUmumKanan: true,
          pathKiri: 'get-pasien',
          pathKanan: 'get-poli',
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
          pathKiri: 'get-hemo',
          pathKanan: 'get-igd',
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
          pathKiri: 'get-lab',
          pathKanan: 'get-resep',
        ),
        const SizedBox(height: 15),
        CardWidget2(
          imageKiri: 'assets/images/icons/bpjs.svg',
          titleKiri: "Pasien BPJS",
          valueKiri: pasien.bpjs ?? '',
          isUmumKiri: true,
          pathKiri: 'get-bpjs',
          imageKanan: 'assets/images/icons/total_pasien.svg',
          titleKanan: "Pasien Umum",
          valueKanan: pasien.umum ?? '',
          isUmumKanan: true,
          pathKanan: 'get-umum',
        ),
      ],
    );
  }
}
