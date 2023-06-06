import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  TextEditingController dateController = TextEditingController();
  RxString stringDate = ''.obs;
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
    Icons.add_chart_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];
  RxInt currentIndex = 0.obs;
  @override
  void onInit() {
    selectedValue.value = items.first;
    dateController.text = DateFormat('yyyy-MM').format(DateTime.now());
    super.onInit();
  }
}
