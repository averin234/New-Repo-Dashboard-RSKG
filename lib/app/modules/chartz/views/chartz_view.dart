import 'package:dashboard_rskg_mobile/app/data/component/month_picker.dart';
import 'package:dashboard_rskg_mobile/app/data/component/year_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/chartz_controller.dart';
import 'Widget/BarChartWidget.dart';
import 'Widget/dropdown_widget.dart';
import 'Widget/list_view.dart';

class ChartzView extends GetView<ChartzController> {
  const ChartzView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('${controller.title}'),
        leading: IconButton(
          icon: Icon(Icons.arrow_circle_left_rounded, color: Color(0xff009688), size: 40),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 20),
          child : Container(
            decoration: BoxDecoration(
              color: Color(0xff009688),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff009688).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(2, 1),
                ),
              ],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0)),
            ),
          child : Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text("Grafik Berdasarkan",
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
            SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(child: MyDropDown(items: controller.listKalender)),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextField(
                        controller: controller.dateController,
                        readOnly: true,
                        onTap: () => DatePicker.showPicker(
                          Get.context!,
                          showTitleActions: true,
                          pickerModel: controller.kalender.value == 'Tahun'
                              ? CustomYearPicker(
                            currentTime: DateTime.now(),
                            minTime: DateTime(2000, 3, 5),
                            maxTime: DateTime.now(),
                            locale: LocaleType.id,
                          )
                              : controller.kalender.value == 'Bulan'
                              ? CustomMonthPicker(
                            currentTime: DateTime.now(),
                            minTime: DateTime(2000, 3, 5),
                            maxTime: DateTime.now(),
                            locale: LocaleType.id,
                          )
                              : DatePickerModel(
                            currentTime: DateTime.now(),
                            minTime: DateTime(2000, 3, 5),
                            maxTime: DateTime.now(),
                            locale: LocaleType.id,
                          ),
                          onChanged: onTanggal,
                          onConfirm: onTanggal,
                          // currentTime: DateTime.now(),
                          locale: LocaleType.id,
                        ),
                        // decoration: const InputDecoration(
                        //   border: OutlineInputBorder(),
                        // ),
                        decoration: InputDecoration(
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
                    SizedBox(
                      width: 10,
                    ),
                  ],),
                SizedBox(
                  height: 10,
                ),
              ],),
          ],),
          ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15,right: 15),
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
          child : Column(children: [
            Text(
              controller.title.toUpperCase(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: AspectRatio(
              aspectRatio: 1,
              child: ChartzWidget(),
            ),
          ),
          ],),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 5,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Umum",
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 5,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Asuransi/Perusahaan",
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 5,
              ),
              SizedBox(
                width: 5,
              ),
              Text("PBJS",
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 5,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Karyawan",
                  style: TextStyle(
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
          child : Padding(
            padding: EdgeInsets.only(left: 0, right: 0),
            child: WidgetListView(),
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
