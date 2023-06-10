import 'package:flutter/material.dart';

class WidgetTitlelogo extends StatefulWidget {
  WidgetTitlelogo({Key? key}) : super(key: key);

  @override
  _WidgetTitlelogoState createState() => _WidgetTitlelogoState();
}

class _WidgetTitlelogoState extends State<WidgetTitlelogo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo_rskg.png',
            width: 70.0,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  "Rumah Sakit Khusus Ginjal",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "jl. Tubagus Ismail Raya No, Sekeloa, \nKecamatan Coblong",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ), // Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
    );
  }
}
