import 'package:flutter/material.dart';

class WidgetListView2 extends StatefulWidget {
  const WidgetListView2({Key? key}) : super(key: key);

  @override
  _WidgetListView2State createState() => _WidgetListView2State();
}

class _WidgetListView2State extends State<WidgetListView2> {
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
            "1",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 50,
          ),
          Text(
            "Umum",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 136,
          ),
          Text(
            "31.381",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            padding:
            const EdgeInsets.only(left: 2, right: 2,),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
          child : Text(
            "Detail",
            textAlign: TextAlign.center,
            style: TextStyle(color : Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
          ),
          ),// Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
      ),
    );
  }
}
