import 'package:flutter/material.dart';

class WidgetListView extends StatefulWidget {
  const WidgetListView({Key? key}) : super(key: key);

  @override
  _WidgetListViewState createState() => _WidgetListViewState();
}

class _WidgetListViewState extends State<WidgetListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.only(left: 5, right: 5,),
      decoration: BoxDecoration(
        color: Color(0xffecf8ff),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color(0xffecf8ff).withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(2, 1),
          ),
        ],
      ),
      child : Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        children: [
          Text(
            "No",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 40,
          ),
          Text(
            "JENIS PASIEN",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 90,
          ),
          Text(
            "JUMLAH",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ), // Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
      ),
    );
  }
}
