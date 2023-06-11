import 'package:dashboard_rskg_mobile/app/data/model/pasien_pendapatan.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_widget.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_widget2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../routes/app_pages.dart';
import 'mydropdown.dart';

class DashBoard extends StatelessWidget {
  final Pasien pasien;
  const DashBoard({super.key, required this.pasien});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Dashboard",
            style: GoogleFonts.nunito(
              fontSize: 20,
              color: Color(0xff009688),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          WidgetTitle3(),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('assets/images/bgmenu2.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: TextButton(
              onPressed: () {
                HapticFeedback.lightImpact();
                Get.toNamed(Routes.CHARTZ, arguments: {
                  'title': 'Total Pasien',
                  'path': 'pasien',
                  'isUmum': true
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          'assets/images/icons/total_pasien.svg',
                          height: 30,
                          width: 30,
                          color: const Color(0xff009688),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Lihat",
                          style: GoogleFonts.nunito(
                            fontSize: 15.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    pasien.total ?? '',
                    style: GoogleFonts.nunito(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Total Pasien',
                    style: GoogleFonts.nunito(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10)
                ],
              ),
            ),
          ),
          CardWidget(
            imageKiri: 'assets/images/icons/hemode.svg',
            titleKiri: "Pasien Hemodialisa",
            valueKiri: pasien.hd ?? '',
            imageKanan: 'assets/images/icons/pasien_poli.svg',
            titleKanan: "Pasien Poliklinik",
            valueKanan: pasien.poli ?? '',
            isUmumKiri: true,
            isUmumKanan: true,
            pathKiri: 'hemo',
            pathKanan: 'poli',
          ),
          const SizedBox(height: 10),
          CardWidget(
            imageKiri: 'assets/images/icons/igd.svg',
            titleKiri: "Rawat Inap",
            valueKiri: pasien.ri ?? '',
            imageKanan: 'assets/images/icons/igd.svg',
            titleKanan: "Pasien IGD",
            valueKanan: pasien.igd ?? '',
            isUmumKiri: true,
            isUmumKanan: true,
            pathKiri: 'rawat-inap',
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
          CardWidget(
            imageKiri: 'assets/images/icons/igd.svg',
            titleKiri: "Fisioterapi",
            valueKiri: pasien.fisio ?? '',
            imageKanan: 'assets/images/icons/igd.svg',
            titleKanan: "Radiologi",
            valueKanan: pasien.rad ?? '',
            isUmumKiri: true,
            isUmumKanan: true,
            pathKiri: 'fisio',
            pathKanan: 'radio',
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
      ),
    );
  }
}
