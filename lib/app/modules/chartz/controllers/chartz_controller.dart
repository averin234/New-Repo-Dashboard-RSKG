import 'dart:math';

import 'package:dashboard_rskg_mobile/app/data/component/app_colors.dart';
import 'package:dashboard_rskg_mobile/app/data/component/color_extensions.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataChart {
  final String key;
  final double value;
  DataChart({required this.key, required this.value});
}

class ChartzController extends GetxController {
  String title = Get.parameters['title'] ?? 'Total Pasien';
  List<String> listTahun = ['2020', '2021', '2022', '2023'];
  RxString tahun = '2020'.obs;
  final Map<String, List<DataChart>> dataPerTahun = {
    '2020': [
      DataChart(key: 'Januari', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Februari', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Maret', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'April', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Mei', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Juni', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Juli', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Agustus', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'September', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Oktober', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'November', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Desember', value: Random().nextInt(20).toDouble()),
    ],
    '2021': [
      DataChart(key: 'Januari', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Februari', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Maret', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'April', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Mei', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Juni', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Juli', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Agustus', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'September', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Oktober', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'November', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Desember', value: Random().nextInt(20).toDouble()),
    ],
    '2022': [
      DataChart(key: 'Januari', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Februari', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Maret', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'April', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Mei', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Juni', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Juli', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Agustus', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'September', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Oktober', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'November', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Desember', value: Random().nextInt(20).toDouble()),
    ],
    '2023': [
      DataChart(key: 'Januari', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Februari', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Maret', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'April', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Mei', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Juni', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Juli', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Agustus', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'September', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Oktober', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'November', value: Random().nextInt(20).toDouble()),
      DataChart(key: 'Desember', value: Random().nextInt(20).toDouble()),
    ]
  };

  final Color barBackgroundColor =
      AppColors.contentColorWhite.darken().withOpacity(0.3);
  final Color barColor = Colors.blue;
  final Color touchedBarColor = Colors.blue.darken();
  final Duration animDuration = const Duration(milliseconds: 250);

  final touchedIndex = 1.obs;
  @override
  void onInit() {
    touchedIndex.value = -1;
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

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.blueGrey,
          tooltipHorizontalAlignment: FLHorizontalAlignment.right,
          tooltipMargin: 10,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            return BarTooltipItem(
              '${dataPerTahun[tahun.value]![group.x].key}\n',
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: (rod.toY - 1).toString(),
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
                  dataPerTahun[tahun.value]![value.toInt()]
                      .value
                      .toInt()
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
                  dataPerTahun[tahun.value]![value.toInt()].key.substring(0, 3),
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
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(
        dataPerTahun[tahun.value]!.length,
        (index) => BarChartGroupData(
          x: index,
          barRods: [
            BarChartRodData(
              toY: index == touchedIndex.value
                  ? dataPerTahun[tahun.value]![index].value + 1
                  : dataPerTahun[tahun.value]![index].value,
              color: index == touchedIndex.value ? touchedBarColor : barColor,
              width: 16,
              borderSide: const BorderSide(width: 0),
              backDrawRodData: BackgroundBarChartRodData(
                show: true,
                toY: 20,
                color: barBackgroundColor,
              ),
            ),
          ],
        ),
      ),
      gridData: FlGridData(show: true),
    );
  }
}
