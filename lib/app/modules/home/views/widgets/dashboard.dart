import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CardWidget(
            imageKiri: 'assets/images/icons/total_pasien.svg',
            titleKiri: "Total Pasien",
            valueKiri: "1.345",
            imageKanan: 'assets/images/icons/pasien_poli.svg',
            titleKanan: "Pasien Poliklinik",
            valueKanan: "460",
          ),
          SizedBox(height: 15),
          CardWidget(
            imageKiri: 'assets/images/icons/hemode.svg',
            titleKiri: "Pasien Hemodialisa",
            valueKiri: "840",
            imageKanan: 'assets/images/icons/igd.svg',
            titleKanan: "Pasien IGD",
            valueKanan: "242",
          ),
          SizedBox(height: 15),
          CardWidget(
            imageKiri: 'assets/images/icons/labro.svg',
            titleKiri: "Laboratorium",
            valueKiri: "200",
            imageKanan: 'assets/images/icons/resep.svg',
            titleKanan: "Jumlah Resep",
            valueKanan: "120",
          ),
          SizedBox(height: 15),
          CardWidget(
            imageKiri: 'assets/images/icons/bpjs.svg',
            titleKiri: "Pasien BPJS",
            valueKiri: "1.098",
            imageKanan: 'assets/images/icons/total_pasien.svg',
            titleKanan: "Pasien Umum",
            valueKanan: "200",
            color: 0xffddfae4,
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
