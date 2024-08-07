// import 'package:dashboard_rskg_mobile/app/data/component/month_picker.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
// import 'package:month_year_picker/month_year_picker.dart';

class WidgetTitle3 extends GetView<HomeController> {
  const WidgetTitle3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Color(0xffededed),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(left: 15, right: 10),
      child: TextField(
        controller: controller.dateController,
        readOnly: true,
        textAlign: TextAlign.justify,
        style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold, color: const Color(0xff009688)),
        onTap: () async {
          // final datetime = await showMonthYearPicker(
          //   context: context,
          //   firstDate: DateTime(2000),
          //   lastDate: DateTime.now(),
          //   // initialDate: DateTime.now(),
          //   initialDate: DateTime.parse(controller.stringDate.value),
          //   initialMonthYearPickerMode: MonthYearPickerMode.month,
          // );
          // onTanggal(datetime ?? DateTime.now());
        },
        // onTap: () => DatePicker.showPicker(
        //   context,
        //   showTitleActions: true,
        //   pickerModel: CustomMonthPicker(
        //     currentTime: ,
        //     minTime: DateTime(2000),
        //     maxTime: DateTime.now(),
        //     locale: LocaleType.id,
        //   ),
        //   onChanged: onTanggal,
        //   onConfirm: onTanggal,
        //   locale: LocaleType.id,
        // ),
        decoration: const InputDecoration(
          // enabledBorder: OutlineInputBorder(
          //   borderSide: BorderSide(color: Color(0xff009688), width: 2.0),
          // ),
          suffixIcon: Icon(
            Icons.arrow_drop_down_circle_rounded,
            color: Color(0xff009688),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40.0),
            ),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          fillColor: Color(0xfff0fff0),
          filled: true,
        ),
      ),
    );
  }

  void onTanggal(DateTime date) {
    controller.dateController.text = DateFormat('yyyy-MM').format(date);
    controller.stringDate.value = DateFormat('yyyy-MM-dd').format(date);
  }
}
