import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../controllers/chartz_controller.dart';

class MyDropDown extends StatelessWidget {
  final List<String> items;
  const MyDropDown({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    ChartzController controller = Get.put(ChartzController());
    return DropdownSearch<String>(
      popupProps: const PopupProps.modalBottomSheet(
        fit: FlexFit.loose,
        showSelectedItems: true,
        showSearchBox: false,
      ),
      items: items,
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          fillColor: const Color(0xfff0fff0),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              style: BorderStyle.none,
              width: 0,
              color: Colors.transparent,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              style: BorderStyle.none,
              width: 0,
              color: Colors.black,
            ),
          ),
        ),
      ),
      onChanged: (value) {
        controller.kalender.value = value!;
        final date = DateTime.now();
        if (controller.kalender.value == 'Tahun') {
          controller.dateController.text = DateFormat('yyyy').format(date);
          controller.stringDate.value = controller.dateController.text;
        } else if (controller.kalender.value == 'Bulan') {
          controller.dateController.text = DateFormat('yyyy-MM').format(date);
          controller.stringDate.value = controller.dateController.text;
        } else {
          controller.dateController.text =
              DateFormat('yyyy-MM-dd').format(date);
          controller.stringDate.value = controller.dateController.text;
        }
      },
      selectedItem: controller.kalender.value,
    );
  }
}
