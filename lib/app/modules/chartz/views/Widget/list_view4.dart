import 'package:flutter/material.dart';

class WidgetListView4 extends StatefulWidget {
  const WidgetListView4({Key? key}) : super(key: key);

  @override
  _WidgetListView4State createState() => _WidgetListView4State();
}

class _WidgetListView4State extends State<WidgetListView4> {
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
            "3",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 50,
          ),
          Text(
            "BPJS",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 145,
          ),
          Text(
            "10",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 45,
          ), // Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
      ),
    );
  }
}
