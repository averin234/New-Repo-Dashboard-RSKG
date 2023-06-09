import 'package:dashboard_rskg_mobile/app/data/component/fetch_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/chartz_controller.dart';

class ChartzWidget extends StatefulWidget {
  const ChartzWidget({
    super.key,
  });

  @override
  State<ChartzWidget> createState() => _ChartzWidgetState();
}

class _ChartzWidgetState extends State<ChartzWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChartzController());
    return Obx(() {
      return FutureBuilder(
          future: API.getDetail(
              path: controller.path, date: controller.stringDate.value),
          builder: (context, snapshot) {
            if (snapshot.hasData &&
                snapshot.connectionState != ConnectionState.waiting &&
                snapshot.data != null) {
              return BarChart(
                controller.mainBarData(snapshot.data!.data!),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          });
    });
  }
}
