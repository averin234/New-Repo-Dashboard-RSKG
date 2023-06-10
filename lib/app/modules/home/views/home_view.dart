import 'package:dashboard_rskg_mobile/app/modules/home/views/bottom/home.dart';
import 'package:dashboard_rskg_mobile/app/modules/jenis_pasien/views/jenis_pasien_view.dart';
import 'package:dashboard_rskg_mobile/app/modules/user/views/user_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
   HomeView({Key? key}) : super(key: key);

  static  TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Jenis Pasien',
      style: optionStyle,
    ),
    Text(
      'Index 2: Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.currentIndex.value == 0
            ?  HomeBottom()
            : controller.currentIndex.value == 1
                ?  JenisPasienView()
                :  UserView(),
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Instalasi',
            ),
          ],
          selectedItemColor: Colors.blue,
          currentIndex: controller.currentIndex.value,
          onTap: (value) => controller.currentIndex.value = value,
        );
      }),
    );
  }
}
