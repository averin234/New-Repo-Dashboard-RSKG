import 'package:flutter/material.dart';

class WidgetTitlePendapatan extends StatefulWidget {
  const WidgetTitlePendapatan({Key? key}) : super(key: key);

  @override
  _WidgetTitlePendapatanState createState() => _WidgetTitlePendapatanState();
}

class _WidgetTitlePendapatanState extends State<WidgetTitlePendapatan> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child : Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
                'assets/images/bg1.png'),
            fit: BoxFit.fill,
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xffd5d7d7).withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(2, 1),
            ),
          ],
        ),
      child : Padding(
      padding: const EdgeInsets.fromLTRB(17, 10, 10, 10),
      child: Column(
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pendapatan",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "bulan Mei - Sekarang",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Rp. 20.250.000",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Total Pendapatan",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),

              ],
            ),
          ), // Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
        Divider(
            color: Colors.black
        ),
        Text(
          "Lihat Total pendapatan",
          style: TextStyle(color : Colors.blue ,fontSize: 16, fontWeight: FontWeight.bold),
        ),
        ]
      )
      ),
      ),
    );
  }
}
