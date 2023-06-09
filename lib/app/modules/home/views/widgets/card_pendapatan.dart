import 'package:dashboard_rskg_mobile/app/data/component/app_colors.dart';
import 'package:dashboard_rskg_mobile/app/data/model/pasien_pendapatan.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WidgetTitlePendapatan extends StatelessWidget {
  final Pendapatan pendapatan;
  const WidgetTitlePendapatan({Key? key, required this.pendapatan})
      : super(key: key);

  String hariIndo(String eeee) {
    String hari = '';
    if (eeee == 'Sunday') {
      hari = 'Minggu';
    } else if (eeee == 'Monday') {
      hari = 'Senin';
    } else if (eeee == 'Tuesday') {
      hari = 'Selasa';
    } else if (eeee == 'Wednesday') {
      hari = 'Rabu';
    } else if (eeee == 'Thursday') {
      hari = 'Kamis';
    } else if (eeee == 'Friday') {
      hari = 'Jumat';
    } else if (eeee == 'Saturday') {
      hari = 'Sabtu';
    }
    return hari;
  }

  String bulanIndo(int bulan) {
    String a = '';
    if (bulan == 1) {
      a = 'Januari';
    } else if (bulan == 2) {
      a = 'Februari';
    } else if (bulan == 3) {
      a = 'Maret';
    } else if (bulan == 4) {
      a = 'April';
    } else if (bulan == 5) {
      a = 'Mei';
    } else if (bulan == 6) {
      a = 'Juni';
    } else if (bulan == 7) {
      a = 'Juli';
    } else if (bulan == 8) {
      a = 'Agustus';
    } else if (bulan == 9) {
      a = 'September';
    } else if (bulan == 10) {
      a = 'Oktober';
    } else if (bulan == 11) {
      a = 'November';
    } else if (bulan == 12) {
      a = 'Desember';
    }
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.only(left: 25),
          child: const Text("Pendapatan",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      Color(0xff62cdff),
                      Color(0xff62cdff),
                      Color(0xff29b9fd),
                      Color(0xff14b1fc),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Text(
                        formatCurrency(pendapatan.harian ?? 0),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "${hariIndo(DateFormat('EEEE').format(DateTime.now()))}\nTanggal ${DateTime.now().day}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      Color(0xff62cdff),
                      Color(0xff62cdff),
                      Color(0xff29b9fd),
                      Color(0xff14b1fc),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Text(
                        formatCurrency(pendapatan.bulanan ?? 0),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Bulan\n${bulanIndo(DateTime.now().month)}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      Color(0xff62cdff),
                      Color(0xff62cdff),
                      Color(0xff29b9fd),
                      Color(0xff14b1fc),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Text(
                        formatCurrency(pendapatan.tahunan ?? 0),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Tahun\n${DateTime.now().year.toString()}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ],
    );
  }
}
