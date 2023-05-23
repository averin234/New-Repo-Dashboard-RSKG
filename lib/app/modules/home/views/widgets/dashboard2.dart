import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_widget.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_widget2.dart';
import 'package:flutter/material.dart';

class DashBoard1 extends StatelessWidget {
  const DashBoard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          CardWidget2(
            imageKiri: 'assets/images/icons/bpjs.svg',
            titleKiri: "Pasien BPJS",
            valueKiri: "1.098",
            imageKanan: 'assets/images/icons/total_pasien.svg',
            titleKanan: "Pasien Umum",
            valueKanan: "200",
          ),
          SizedBox(height: 15),
        ],
    );
  }
}
