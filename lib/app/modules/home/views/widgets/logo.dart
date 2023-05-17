import 'package:flutter/material.dart';

class WidgetTitlelogo extends StatefulWidget {
  const WidgetTitlelogo({Key? key}) : super(key: key);

  @override
  _WidgetTitlelogoState createState() => _WidgetTitlelogoState();
}

class _WidgetTitlelogoState extends State<WidgetTitlelogo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 10, 0),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo_rskg.png',
            width: 70.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            child: const Column(
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
          ),

          const SizedBox(
            width: 10,
          ),
          // Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
    );
  }
}
