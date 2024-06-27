// import 'package:dashboard_rskg_mobile/app/data/component/month_picker.dart';
// import 'package:dashboard_rskg_mobile/app/data/component/year_picker.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
// import 'package:month_year_picker/month_year_picker.dart';

import '../controllers/chartz_controller.dart';
import 'Widget/BarChartWidget.dart';
import 'Widget/dropdown_widget.dart';
import 'Widget/list_view.dart';

class ChartzView2 extends GetView<ChartzController2> {
  const ChartzView2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('${controller.title}'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left_rounded,
              color: Color(0xff00a7d7), size: 40),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff00a7d7),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff00a7d7).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(2, 1),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Grafik Berdasarkan",
                        style: GoogleFonts.nunito(
                            fontSize: 17.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child:
                                  MyDropDown2(items: controller.listKalender)),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextField(
                              controller: controller.dateController,
                              readOnly: true,
                              onTap: () async {
                                // final datetime = await showMonthYearPicker(
                                //   context: Get.context!,
                                //   firstDate: DateTime(2000, 3, 5),
                                //   lastDate: DateTime.now(),
                                //   initialDate: DateTime.now(),
                                //   initialMonthYearPickerMode:
                                //       controller.kalender.value == 'Tahun'
                                //           ? MonthYearPickerMode.year
                                //           : MonthYearPickerMode.month,
                                // );
                                // onTanggal(datetime ?? DateTime.now());
                              },
                              // onTap: () => DatePicker.showPicker(
                              //   Get.context!,
                              //   showTitleActions: true,
                              //   pickerModel:
                              //       controller.kalender.value == 'Tahun'
                              //           ? CustomYearPicker(
                              //               currentTime: DateTime.now(),
                              //               minTime: DateTime(2000, 3, 5),
                              //               maxTime: DateTime.now(),
                              //               locale: LocaleType.id,
                              //             )
                              //           : controller.kalender.value == 'Bulan'
                              //               ? CustomMonthPicker(
                              //                   currentTime: DateTime.now(),
                              //                   minTime: DateTime(2000, 3, 5),
                              //                   maxTime: DateTime.now(),
                              //                   locale: LocaleType.id,
                              //                 )
                              //               : DatePickerModel(
                              //                   currentTime: DateTime.now(),
                              //                   minTime: DateTime(2000, 3, 5),
                              //                   maxTime: DateTime.now(),
                              //                   locale: LocaleType.id,
                              //                 ),
                              //   onChanged: onTanggal,
                              //   onConfirm: onTanggal,
                              //   // currentTime: DateTime.now(),
                              //   locale: LocaleType.id,
                              // ),
                              // decoration:
                              // InputDecoration(
                              //   border: OutlineInputBorder(),
                              // ),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                fillColor: Color(0xffecf8ff),
                                filled: true,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffd5d7d7).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(2, 1),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  controller.title.toUpperCase(),
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ChartzWidget2(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 5,
              ),
              const SizedBox(
                width: 5,
              ),
              Text("Umum",
                  style: GoogleFonts.nunito(
                      fontSize: 14.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 5,
              ),
              const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 5,
              ),
              const SizedBox(
                width: 5,
              ),
              Text("Asuransi/Perusahaan",
                  style: GoogleFonts.nunito(
                      fontSize: 14.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 5,
              ),
              const CircleAvatar(
                backgroundColor: Colors.green,
                radius: 5,
              ),
              const SizedBox(
                width: 5,
              ),
              Text("PBJS",
                  style: GoogleFonts.nunito(
                      fontSize: 14.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 5,
              ),
              const CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 5,
              ),
              const SizedBox(
                width: 5,
              ),
              Text("Karyawan",
                  style: GoogleFonts.nunito(
                      fontSize: 14.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffd5d7d7).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(2, 1),
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 0, right: 0),
              child: WidgetListView2(),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  void onTanggal(DateTime date) {
    print(date);
    if (controller.kalender.value == 'Tahun') {
      controller.dateController.text = DateFormat('yyyy').format(date);
      controller.stringDate.value = controller.dateController.text;
    } else if (controller.kalender.value == 'Bulan') {
      controller.dateController.text = DateFormat('yyyy-MM').format(date);
      controller.stringDate.value = controller.dateController.text;
    } else {
      controller.dateController.text = DateFormat('yyyy-MM-dd').format(date);
      controller.stringDate.value = controller.dateController.text;
    }
  }
}
