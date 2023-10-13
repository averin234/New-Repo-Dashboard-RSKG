import 'dart:math';

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
    stringDate.value = DateFormat('yyyy-MM-dd').format(DateTime.now());
    super.onInit();
  }

  List<int> listChart(String totalString) {
    final a = totalString.split('.');
    final b = a.join('');
    int nilaiTotal = int.parse(b);
    int jumlahData = 12;
    List<int> data = List<int>.filled(jumlahData, 0);

    // Menghasilkan data secara acak
    Random random = Random();
    for (int i = 0; i < jumlahData - 1; i++) {
      int nilaiAcak = random.nextInt(nilaiTotal + 1);
      if (nilaiAcak == 0) {
        data[i] = 1;
      } else {
        data[i] = nilaiAcak;
      }
      nilaiTotal -= nilaiAcak;
    }
    data[jumlahData - 1] = nilaiTotal;
    return data;
  }
}
