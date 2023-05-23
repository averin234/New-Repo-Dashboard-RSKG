// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:dashboard_rskg_mobile/app/modules/home/views/component_widgets/components/barchart/bar_chart2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/barchart/bar_chart.dart';
import 'components/barchart/barchart_data.dart';

class Homepage2 extends StatelessWidget {
  const Homepage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BarChart2(
                  display: DisplayType.average,
                  title: "Keuangan",
                  subTitle: "",
                  color: Colors.blue,
                  data: [
                    BarchartData(value: 2450, label: 'label'),
                    BarchartData(value: 5450, label: 'label'),
                    BarchartData(value: 6045, label: 'label'),
                    BarchartData(value: 4450, label: 'label'),
                    BarchartData(value: 4450, label: 'label'),
                    BarchartData(value: 845, label: 'label'),
                    BarchartData(value: 6454, label: 'label'),
                    BarchartData(value: 40, label: 'label'),
                    BarchartData(value: 6045, label: 'label'),
                    BarchartData(value: 4450, label: 'label'),
                    BarchartData(value: 4450, label: 'label'),
                    BarchartData(value: 845, label: 'label'),
                    BarchartData(value: 7455, label: 'label'),
                  ],
                  icon: Icon(
                    CupertinoIcons.money_dollar_circle_fill,
                    color: Colors.blue,
                    size: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BarChart2(
                  display: DisplayType.average,
                  title: "Obat",
                  subTitle: "",
                  color: Colors.blue,
                  data: [
                    BarchartData(value: 2450, label: 'label'),
                    BarchartData(value: 5450, label: 'label'),
                    BarchartData(value: 6045, label: 'label'),
                    BarchartData(value: 4450, label: 'label'),
                    BarchartData(value: 4450, label: 'label'),
                    BarchartData(value: 845, label: 'label'),
                    BarchartData(value: 6454, label: 'label'),
                    BarchartData(value: 40, label: 'label'),
                    BarchartData(value: 6045, label: 'label'),
                    BarchartData(value: 4450, label: 'label'),
                    BarchartData(value: 4450, label: 'label'),
                    BarchartData(value: 845, label: 'label'),
                    BarchartData(value: 7455, label: 'label'),
                  ],
                  icon: Icon(
                    Icons.medication_liquid,
                    color: Colors.blue,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        );
  }
}
