import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chartz_controller.dart';
import 'Widget/BarChartWidget.dart';
import 'Widget/dropdown_widget.dart';
import 'Widget/list_view.dart';

class ChartzView extends GetView<ChartzController> {
  const ChartzView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffecf8ff),
      appBar: AppBar(
        elevation: 1,
        title: Text('Grafik ${controller.title}'),
        centerTitle: false,
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text("Grafik Berdasarkan :",
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: MyDropDown(items: controller.listTahun),
          ),
          const SizedBox(
            height: 10,
          ),
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: AspectRatio(
              aspectRatio: 1,
              child: ChartzWidget(),
            ),
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
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: WidgetListView(),
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
}
