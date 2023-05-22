import 'package:flutter/material.dart';

class WidgetTitlePendapatan extends StatefulWidget {
  const WidgetTitlePendapatan({Key? key}) : super(key: key);

  @override
  _WidgetTitlePendapatanState createState() => _WidgetTitlePendapatanState();
}

class _WidgetTitlePendapatanState extends State<WidgetTitlePendapatan> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child : Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Row(
        children: [
          const SizedBox(
            width: 50,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  "Pendapatan Bulan Mei - Sekarang",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Total Pendapatan",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Rp. 1.250.000",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ), // Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
      ),
    );
  }
}
