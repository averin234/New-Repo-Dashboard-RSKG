// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dashboard_rskg_mobile/app/data/component/fetch_data.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../data/component/app_colors.dart';
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
                            title: "Hemodialisa",
                            subTitle: formatCurrency(data.hd ?? 0),
                            color: Color(0xff6993ff),
                            data: List.generate(
                              12,
                              (index) => BarchartData(
                                value: controller
                                    .listChart(data.hd.toString())[index]
                                    .toDouble(),
                                label: '',
                              ),
                            ),
                            icon: Icon(
                              CupertinoIcons.person_add_solid,
                              color: Color(0xff6993ff),
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: BarChart(
                            display: DisplayType.total,
                            title: "Poliklinik",
                            subTitle: formatCurrency(data.poli ?? 0),
                            color: Color(0xff1bc5bd),
                            data: List.generate(
                              12,
                              (index) => BarchartData(
                                value: controller
                                    .listChart(data.poli.toString())[index]
                                    .toDouble(),
                                label: '',
                              ),
                            ),
                            icon: Icon(
                              Icons.local_hospital,
                              color: Color(0xff1bc5bd),
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
                            title: "IGD",
                            subTitle: formatCurrency(data.igd ?? 0),
                            color: Color(0xffffa800),
                            data: List.generate(
                              12,
                              (index) => BarchartData(
                                value: controller
                                    .listChart(data.igd.toString())[index]
                                    .toDouble(),
                                label: '',
                              ),
                            ),
                            icon: Icon(
                              CupertinoIcons.bed_double_fill,
                              color: Color(0xffffa800),
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: BarChart(
                            display: DisplayType.total,
                            title: "Rawat Inap",
                            subTitle: formatCurrency(data.ri ?? 0),
                            color: Color(0xfff64e60),
                            data: List.generate(
                              12,
                              (index) => BarchartData(
                                value: controller
                                    .listChart(data.ri.toString())[index]
                                    .toDouble(),
                                label: '',
                              ),
                            ),
                            icon: Icon(
                              CupertinoIcons.bed_double,
                              color: Color(0xfff64e60),
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
                            title: "Laboratorium",
                            subTitle: formatCurrency(data.lab ?? 0),
                            color: Color(0xff8950fc),
                            data: List.generate(
                              12,
                              (index) => BarchartData(
                                value: controller
                                    .listChart(data.lab.toString())[index]
                                    .toDouble(),
                                label: '',
                              ),
                            ),
                            icon: Icon(
                              CupertinoIcons.bed_double_fill,
                              color: Color(0xff8950fc),
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: BarChart(
                            display: DisplayType.total,
                            title: "Radiologi",
                            subTitle: formatCurrency(data.rad ?? 0),
                            color: Color(0xff6993ff),
                            data: List.generate(
                              12,
                              (index) => BarchartData(
                                value: controller
                                    .listChart(data.rad.toString())[index]
                                    .toDouble(),
                                label: '',
                              ),
                            ),
                            icon: Icon(
                              CupertinoIcons.bed_double,
                              color: Color(0xff6993ff),
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BarChart(
                          display: DisplayType.total,
                          title: "Fisioterapi",
                          subTitle: formatCurrency(data.fisio ?? 0),
                          color: Color(0xff1bc5bd),
                          data: List.generate(
                            12,
                            (index) => BarchartData(
                              value: controller
                                  .listChart(data.fisio.toString())[index]
                                  .toDouble(),
                              label: '',
                            ),
                          ),
                          icon: Icon(
                            CupertinoIcons.bed_double_fill,
                            color: Color(0xff1bc5bd),
                            size: 20,
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
