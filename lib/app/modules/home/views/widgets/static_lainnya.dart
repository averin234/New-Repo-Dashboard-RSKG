import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_static_lainnya.dart';
import 'package:flutter/material.dart';

class StaticLainnya extends StatelessWidget {
  const StaticLainnya({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 15),
        CardStaticLainnya(
          image: 'assets/images/icons/rupiah.svg',
          title: "Keuangan",
        ),
        SizedBox(height: 15),
        CardStaticLainnya(
          image: 'assets/images/icons/obat2.svg',
          title: "Obat",
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
