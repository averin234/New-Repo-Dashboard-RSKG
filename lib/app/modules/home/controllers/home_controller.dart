import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final selectedValue = ''.obs;
  final isTapped = false.obs;
  final List<String> items = [
    'January',
    'Febuari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember',
  ];
  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];
  RxInt currentIndex = 0.obs;
  @override
  void onInit() {
    selectedValue.value = items.first;
    super.onInit();
  }
}
