import 'package:dashboard_rskg_mobile/app/data/component/app_colors.dart';
import 'package:dashboard_rskg_mobile/app/data/component/color_extensions.dart';
import 'package:dashboard_rskg_mobile/app/data/model/detail_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class DataChart {
  final String key;
  final double value;
  DataChart({required this.key, required this.value});
}

class ChartzController extends GetxController {
  TextEditingController dateController = TextEditingController();
  RxString stringDate = ''.obs;
  final isUmum = Get.arguments['isUmum'] ?? false;
  final path = Get.arguments['path'] ?? 'get-pasien';
  final title = Get.arguments['title'] ?? 'Total Pasien';
  List<String> listKalender = [
    'Tahun',
    'Bulan',
    'Tanggal',
  ];
  RxString kalender = 'Tahun'.obs;
  final List<Color> listKelompokColor = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];

  final Color barBackgroundColor =
      AppColors.contentColorWhite.darken().withOpacity(0.3);
  final Color barColor = Colors.blue;
  final Color touchedBarColor = Colors.blue.darken();
  final Duration animDuration = const Duration(milliseconds: 250);

  final touchedIndex = 1.obs;
  @override
  void onInit() {
    touchedIndex.value = -1;
    dateController.text = DateFormat('yyyy').format(DateTime.now());
    stringDate.value = dateController.text;
    super.onInit();
  }

  Map<String, int> mapBulan(List listTahun) {
    int lengthTanggal = 0;
    String kalenders = '';

    if (kalender.value == 'Tahun') {
      kalenders = 'MM';
      lengthTanggal = 12;
    } else if (kalender.value == 'Bulan') {
      kalenders = 'dd';
      lengthTanggal = 31;
    } else {
      kalenders = 'dd';
      lengthTanggal = 1;
    }
    final datas = <String, int>{};
    final da = List.generate(
      lengthTanggal,
      (index) => datas[(index + 1).toString()] = 0,
    );
    final tanggal = listTahun
        .map(
          (e) => int.parse(
            DateFormat(kalenders).format(DateTime.parse(e)),
          ).toString(),
        )
        .toList();
    for (final elemen in tanggal) {
      if (datas.containsKey(elemen)) {
        datas[elemen] = datas[elemen]! + 1;
      } else {
        datas[elemen] = 1;
      }
    }
    // print(datas);
    return datas;
  }

  // List<BarChartGroupData> get showingGroups => List.generate(7, (i) {
  //       switch (i) {
  //         case 0:
  //           return makeGroupData(0, 5, isTouched: i == touchedIndex.value);
  //         case 1:
  //           return makeGroupData(1, 6.5, isTouched: i == touchedIndex.value);
  //         case 2:
  //           return makeGroupData(2, 5, isTouched: i == touchedIndex.value);
  //         case 3:
  //           return makeGroupData(3, 7.5, isTouched: i == touchedIndex.value);
  //         case 4:
  //           return makeGroupData(4, 9, isTouched: i == touchedIndex.value);
  //         case 5:
  //           return makeGroupData(5, 11.5, isTouched: i == touchedIndex.value);
  //         case 6:
  //           return makeGroupData(6, 6.5, isTouched: i == touchedIndex.value);
  //         default:
  //           return throw Error();
  //       }
  //     });

  BarChartData mainBarData(Data data) {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          // tooltipBgColor: Colors.blueGrey,
          tooltipHorizontalAlignment: FLHorizontalAlignment.right,
          tooltipMargin: 10,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            return BarTooltipItem(
              '${data.kelompok![rodIndex].namaKelompok}\n',
              GoogleFonts.nunito(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: (rod.toY).toString(),
                  style: GoogleFonts.nunito(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            );
          },
        ),
        touchCallback: (event, barTouchResponse) {
          if (!event.isInterestedForInteractions ||
              barTouchResponse == null ||
              barTouchResponse.spot == null) {
            touchedIndex.value = -1;
            return;
          }
          touchedIndex.value = barTouchResponse.spot!.touchedBarGroupIndex;
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: (value, meta) {
              return SideTitleWidget(
                axisSide: meta.axisSide,
                child: Text(
                  data.kelompok!
                      .map((e) {
                        final w = mapBulan(e.tgl ?? []);
                        return w[(value + 1).toInt().toString()];
                      })
                      .toList()
                      .reduce((value, element) => (value ?? 0) + (element ?? 0))
                      .toString(),
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                  ),
                ),
              );
            },
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              return SideTitleWidget(
                axisSide: meta.axisSide,
                child: Text(
                  mapBulan(data.kelompok!.first.tgl ?? [])
                      .keys
                      .toList()[value.toInt()]
                      .toString(),
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                  ),
                ),
              );
            },
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(
        mapBulan(data.kelompok!.first.tgl ?? []).length,
        (indexData) => BarChartGroupData(
          x: indexData,
          barRods: List.generate(
              data.kelompok!.length,
              (indexKelompok) => barChartRodData(
                  indexData, indexKelompok, data.kelompok![indexKelompok])),
        ),
      ),
      gridData: const FlGridData(show: true),
    );
  }

  BarChartRodData barChartRodData(
      int indexData, int indexKelompok, Kelompok kelompok) {
    return BarChartRodData(
      toY: (mapBulan(kelompok.tgl ?? [])[(indexData + 1).toString()] ?? 0)
          .toDouble(),
      color: listKelompokColor[indexKelompok],
      width: 5,
      borderSide: const BorderSide(width: 0),
    );
  }
}
