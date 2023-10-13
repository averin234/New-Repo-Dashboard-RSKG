import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetTitlelogo extends StatefulWidget {
  const WidgetTitlelogo({Key? key}) : super(key: key);

  @override
  _WidgetTitlelogoState createState() => _WidgetTitlelogoState();
}

class _WidgetTitlelogoState extends State<WidgetTitlelogo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo_rskg.png',
            width: 70.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rumah Sakit Khusus Ginjal",
                  style: GoogleFonts.nunito(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "jl. Tubagus Ismail Raya No, Sekeloa, Kecamatan Coblong",
                  style: GoogleFonts.nunito(
                      fontSize: 14, fontWeight: FontWeight.bold),
                  maxLines: 2,
                ),
              ],
            ),
          ), // Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
    );
  }
}
