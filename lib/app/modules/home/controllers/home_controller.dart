import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final selectedValue = ''.obs;
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
  @override
  void onInit() {
    selectedValue.value = items.first;
    super.onInit();
  }
}
