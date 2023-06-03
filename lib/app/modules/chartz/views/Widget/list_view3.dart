import 'package:flutter/material.dart';

class WidgetListView3 extends StatefulWidget {
  const WidgetListView3({Key? key}) : super(key: key);

  @override
  _WidgetListView3State createState() => _WidgetListView3State();
}

class _WidgetListView3State extends State<WidgetListView3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
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
        padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
      child: Row(
        children: [
          Text(
            "2",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 50,
          ),
          Text(
            "Asuransi/Perusahaan",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 50,
          ),
          Text(
            "7",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ),
          const SizedBox(
            width: 43,
          ), // Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
      ),
    );
  }
}
