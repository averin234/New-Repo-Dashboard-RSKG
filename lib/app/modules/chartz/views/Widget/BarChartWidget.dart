
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
      return BarChart(
        controller.mainBarData(),
      );
    });
  }
}
