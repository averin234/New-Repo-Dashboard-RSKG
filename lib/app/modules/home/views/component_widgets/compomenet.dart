// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/barchart/bar_chart.dart';
import 'components/barchart/barchart_data.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BarChart(
                      display: DisplayType.average,
                      title: "Laboratorium",
                      subTitle: "",
                      color: Color(0xffFFC437),
                      data: [
                        BarchartData(value: 2450, label: 'label'),
                        BarchartData(value: 5450, label: 'label'),
                        BarchartData(value: 6045, label: 'label'),
                        BarchartData(value: 4450, label: 'label'),
                        BarchartData(value: 4450, label: 'label'),
                        BarchartData(value: 845, label: 'label'),
                        BarchartData(value: 6454, label: 'label'),
                        BarchartData(value: 40, label: 'label'),
                        BarchartData(value: 7455, label: 'label'),
                      ],
                      icon: Icon(
                        CupertinoIcons.person_add_solid,
                        color: Color(0xffFFC437),
                        size: 20,
                      ),
                    ),
                    BarChart(
                      display: DisplayType.max,
                      title: "Radiologi",
                      subTitle: "",
                      color: Color(0xffEA7674),
                      data: [

                        BarchartData(value: 65, label: 'label'),
                        BarchartData(value: 493, label: 'label'),
                        BarchartData(value: 40, label: 'label'),
                        BarchartData(value: 40, label: 'label'),
                        BarchartData(value: 458, label: 'label'),
                      ],
                      icon: Icon(
                        Icons.local_hospital,
                        color: Color(0xffEA7674),
                        size: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BarChart(
                      display: DisplayType.average,
                      title: "Elektromedis",
                      subTitle: "Average",
                      color: Color(0xffFFC437),
                      data: [
                        BarchartData(value: 40, label: 'label'),
                        BarchartData(value: 90, label: 'label'),
                        BarchartData(value: 90, label: 'label'),
                        BarchartData(value: 90, label: 'label'),
                        BarchartData(value: 45, label: 'label'),
                      ],
                      icon: Icon(
                        CupertinoIcons.bed_double_fill,
                        color: Color(0xffFFC437),
                        size: 20,
                      ),
                    ),
                    BarChart(
                      display: DisplayType.max,
                      title: "MCU",
                      subTitle: "",
                      color: Color(0xffEA7674),
                      data: [

                        BarchartData(value: 56, label: 'label'),
                        BarchartData(value: 65, label: 'label'),
                        BarchartData(value: 49, label: 'label'),
                        BarchartData(value: 46, label: 'label'),
                        BarchartData(value: 43, label: 'label'),
                        BarchartData(value: 408, label: 'label'),
                      ],
                      icon: Icon(
                        CupertinoIcons.bed_double,
                        color: Color(0xffEA7674),
                        size: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BarChart(
                      display: DisplayType.average,
                      title: "Poliklinik",
                      subTitle: "Average",
                      color: Color(0xffFFC437),
                      data: [
                        BarchartData(value: 40, label: 'label'),
                        BarchartData(value: 90, label: 'label'),
                        BarchartData(value: 90, label: 'label'),
                        BarchartData(value: 90, label: 'label'),
                        BarchartData(value: 45, label: 'label'),
                      ],
                      icon: Icon(
                        CupertinoIcons.bed_double_fill,
                        color: Color(0xffFFC437),
                        size: 20,
                      ),
                    ),
                    BarChart(
                      display: DisplayType.max,
                      title: "Farmasi",
                      subTitle: "",
                      color: Color(0xffEA7674),
                      data: [

                        BarchartData(value: 56, label: 'label'),
                        BarchartData(value: 65, label: 'label'),
                        BarchartData(value: 49, label: 'label'),
                        BarchartData(value: 46, label: 'label'),
                        BarchartData(value: 43, label: 'label'),
                        BarchartData(value: 408, label: 'label'),
                      ],
                      icon: Icon(
                        CupertinoIcons.bed_double,
                        color: Color(0xffEA7674),
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
  }
}
