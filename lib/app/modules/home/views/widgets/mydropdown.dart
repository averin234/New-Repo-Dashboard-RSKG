import 'package:dashboard_rskg_mobile/app/data/component/month_picker.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class WidgetTitle3 extends GetView<HomeController> {
  const WidgetTitle3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controller.dateController,
        readOnly: true,
        onTap: () => DatePicker.showPicker(
          context,
          showTitleActions: true,
          pickerModel: CustomMonthPicker(
            currentTime: DateTime.now(),
            minTime: DateTime(2000),
            maxTime: DateTime.now(),
            locale: LocaleType.id,
          ),
          onChanged: onTanggal,
          onConfirm: onTanggal,
          locale: LocaleType.id,
        ),
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  void onTanggal(DateTime date) {
    controller.dateController.text = DateFormat('yyyy-MM').format(date);
    controller.stringDate.value = controller.dateController.text;
  }
}
