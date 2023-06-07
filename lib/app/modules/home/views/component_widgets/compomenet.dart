// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dashboard_rskg_mobile/app/data/component/fetch_data.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'components/barchart/bar_chart.dart';
import 'components/barchart/barchart_data.dart';

class Homepage extends GetView<HomeController> {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: API.getPendapatan(
            date: DateFormat('yyyy-MM-dd').format(DateTime.now())),
        builder: (context, snapshot) {
          if (snapshot.hasData &&
              snapshot.connectionState != ConnectionState.waiting &&
              snapshot.data != null) {
            final data = snapshot.data!.unit!;
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: BarChart(
                            display: DisplayType.total,
                            title: "Laboratorium\n",
                            subTitle: "Rp ${data.lab ?? ''}",
                            color: Color(0xffFFC437),
                            data: List.generate(
                              12,
                              (index) => BarchartData(
                                value: controller
                                    .listChart(data.lab ?? '')[index]
                                    .toDouble(),
                                label: '',
                              ),
                            ),
                            icon: Icon(
                              CupertinoIcons.person_add_solid,
                              color: Color(0xffFFC437),
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: BarChart(
                            display: DisplayType.total,
                            title: "Radiologi",
                            subTitle: "Rp ${data.rad ?? ''}",
                            color: Color(0xffEA7674),
                            data: List.generate(
                              12,
                              (index) => BarchartData(
                                value: controller
                                    .listChart(data.rad ?? '')[index]
                                    .toDouble(),
                                label: '',
                              ),
                            ),
                            icon: Icon(
                              Icons.local_hospital,
                              color: Color(0xffEA7674),
                              size: 20,
                            ),
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
                        Expanded(
                          child: BarChart(
                            display: DisplayType.total,
                            title: "Elektromedis",
                            subTitle: "Rp ${data.fisio ?? ''}",
                            color: Color(0xffFFC437),
                            data: List.generate(
                              12,
                              (index) => BarchartData(
                                value: controller
                                    .listChart(data.hd ?? '')[index]
                                    .toDouble(),
                                label: '',
                              ),
                            ),
                            icon: Icon(
                              CupertinoIcons.bed_double_fill,
                              color: Color(0xffFFC437),
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: BarChart(
                            display: DisplayType.total,
                            title: "MCU",
                            subTitle: "Rp ${data.igd ?? ''}",
                            color: Color(0xffEA7674),
                            data: List.generate(
                              12,
                              (index) => BarchartData(
                                value: controller
                                    .listChart(data.igd ?? '')[index]
                                    .toDouble(),
                                label: '',
                              ),
                            ),
                            icon: Icon(
                              CupertinoIcons.bed_double,
                              color: Color(0xffEA7674),
                              size: 20,
                            ),
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
                        Expanded(
                          child: BarChart(
                            display: DisplayType.total,
                            title: "Poliklinik",
                            subTitle: "Rp ${data.poli ?? ''}",
                            color: Color(0xffFFC437),
                            data: List.generate(
                              12,
                              (index) => BarchartData(
                                value: controller
                                    .listChart(data.poli ?? '')[index]
                                    .toDouble(),
                                label: '',
                              ),
                            ),
                            icon: Icon(
                              CupertinoIcons.bed_double_fill,
                              color: Color(0xffFFC437),
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: BarChart(
                            display: DisplayType.total,
                            title: "Farmasi",
                            subTitle: "",
                            color: Color(0xffEA7674),
                            data: List.generate(
                              12,
                              (index) => BarchartData(
                                value: controller
                                    .listChart(data.ri ?? '')[index]
                                    .toDouble(),
                                label: '',
                              ),
                            ),
                            icon: Icon(
                              CupertinoIcons.bed_double,
                              color: Color(0xffEA7674),
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
