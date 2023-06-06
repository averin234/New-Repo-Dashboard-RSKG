import 'package:dashboard_rskg_mobile/app/data/component/app_colors.dart';
import 'package:dashboard_rskg_mobile/app/data/component/color_extensions.dart';
import 'package:dashboard_rskg_mobile/app/data/model/detail_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

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
  RxString kalender = 'Bulan'.obs;
  // final Map<String, List<DataChart>> dataPerTahun = {
  //   'Tahun': [
  //     DataChart(key: 'Januari', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Februari', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Maret', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'April', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Mei', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Juni', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Juli', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Agustus', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'September', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Oktober', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'November', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Desember', value: Random().nextInt(20).toDouble()),
  //   ],
  //   'Bulan': [
  //     DataChart(key: 'Januari', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Februari', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Maret', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'April', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Mei', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Juni', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Juli', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Agustus', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'September', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Oktober', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'November', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Desember', value: Random().nextInt(20).toDouble()),
  //   ],
  //   'Tanggal': [
  //     DataChart(key: 'Januari', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Februari', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Maret', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'April', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Mei', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Juni', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Juli', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Agustus', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'September', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Oktober', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'November', value: Random().nextInt(20).toDouble()),
  //     DataChart(key: 'Desember', value: Random().nextInt(20).toDouble()),
  //   ],
  // };
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
    dateController.text = DateFormat('yyyy-MM').format(DateTime.now());
    stringDate.value = dateController.text;
    super.onInit();
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

  BarChartData mainBarData(ModelDetail data) {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.blueGrey,
          tooltipHorizontalAlignment: FLHorizontalAlignment.right,
          tooltipMargin: 10,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            return BarTooltipItem(
              '${data.kelompok![rodIndex].namaKelompok}\n',
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: (rod.toY).toString(),
                  style: TextStyle(
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
        rightTitles: AxisTitles(
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
                      .map((e) => e.data![(value + 1).toInt().toString()])
                      .toList()
                      .reduce((value, element) => value + element)
                      .toString(),
                  style: const TextStyle(
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
                  data.kelompok!.first.data!.keys.toList()[value.toInt()],
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              );
            },
            reservedSize: 38,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(
        data.kelompok!.first.data!.length,
        (indexData) => BarChartGroupData(
          x: indexData,
          barRods: List.generate(
              data.kelompok!.length,
              (indexKelompok) => barChartRodData(
                  indexData, indexKelompok, data.kelompok![indexKelompok])),
        ),
      ),
      gridData: FlGridData(show: true),
    );
  }

  BarChartRodData barChartRodData(
      int indexData, int indexKelompok, Kelompok kelompok) {
    return BarChartRodData(
      toY: kelompok.data![(indexData + 1).toString()]!.toDouble(),
      color: listKelompokColor[indexKelompok],
      width: 5,
      borderSide: const BorderSide(width: 0),
    );
  }
}
