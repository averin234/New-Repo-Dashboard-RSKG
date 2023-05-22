import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chartz_controller.dart';
import 'Widget/BarChartWidget.dart';
import 'Widget/dropdown_widget.dart';
import 'Widget/list_view.dart';
import 'Widget/list_view2.dart';
import 'Widget/list_view3.dart';
import 'Widget/list_view4.dart';
import 'Widget/list_view5.dart';

class ChartzView extends GetView<ChartzController> {
  const ChartzView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text('Grafik ${controller.title}'),
        centerTitle: false,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("Grafik Berdasarkan :",
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: MyDropDown(items: controller.listTahun),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            controller.title.toUpperCase(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: AspectRatio(
                aspectRatio: 1,
                child: ChartzWidget(),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Row(children: [
              SizedBox(
                width: 10,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffecf8ff).withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(2, 1),
                    ),
                  ],
                ),
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
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffecf8ff).withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(2, 1),
                    ),
                  ],
                ),
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
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffecf8ff).withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(2, 1),
                    ),
                  ],
                ),
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
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffecf8ff).withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(2, 1),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text("Karyawan",
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold)),
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: WidgetListView(),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: WidgetListView2(),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: WidgetListView3(),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: WidgetListView4(),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: WidgetListView5(),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
