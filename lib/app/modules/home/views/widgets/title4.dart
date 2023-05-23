import 'package:flutter/material.dart';

class WidgetTitlePoli3 extends StatelessWidget {
  const WidgetTitlePoli3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
        children: [
          Expanded(
            child: Text(
              "Kunjungan Pasien",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Jumlah Kunjungan di sesuaikan dengan bulan yang dipilih",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
      ]
      ),
    );
  }
}
