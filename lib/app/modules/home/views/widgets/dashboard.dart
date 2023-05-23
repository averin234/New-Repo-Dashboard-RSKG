import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            valueKiri: "1.345",
            imageKanan: 'assets/images/icons/pasien_poli.svg',
            titleKanan: "Pasien Poliklinik",
            valueKanan: "460",
            color: 0xffe3f4ff,
          ),
          SizedBox(height: 15),
          CardWidget(
            imageKiri: 'assets/images/icons/hemode.svg',
            titleKiri: "Pasien Hemodialisa",
            valueKiri: "840",
            imageKanan: 'assets/images/icons/igd.svg',
            titleKanan: "Pasien IGD",
            valueKanan: "242",
            color: 0xffe3f4ff,
          ),
          SizedBox(height: 15),
          CardWidget(
            imageKiri: 'assets/images/icons/labro.svg',
            titleKiri: "Laboratorium",
            valueKiri: "200",
            imageKanan: 'assets/images/icons/resep2.svg',
            titleKanan: "Jumlah Resep",
            valueKanan: "120",
          ),
          SizedBox(height: 15),
        ],
    );
  }
}
