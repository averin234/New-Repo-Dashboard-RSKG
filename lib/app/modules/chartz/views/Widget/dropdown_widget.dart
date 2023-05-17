import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/chartz_controller.dart';

class MyDropDown extends StatelessWidget {
  final List<String> items;
  const MyDropDown({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    ChartzController controller = Get.put(ChartzController());
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: const BoxDecoration(
        color: Color(0xfff3f3f4),
      ),
      child: DropdownSearch<String>(
        popupProps: const PopupProps.modalBottomSheet(
          fit: FlexFit.loose,
          showSelectedItems: true,
          showSearchBox: true,
          searchFieldProps: TextFieldProps(
            decoration: InputDecoration(
              hintText: "Pencarian berdasarkan Tahun",
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0xff4babe7),
              )),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff4babe7),
                ),
              ),
            ),
          ),
        ),
        items: items,
        dropdownDecoratorProps: const DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff4babe7),
              ),
            ),
          ),
        ),
        onChanged: (value) => controller.tahun.value = value!,
        selectedItem: '2020',
      ),
    );
  }
}
