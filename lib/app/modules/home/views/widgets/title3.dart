import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetTitlePoli2 extends StatelessWidget {
  const WidgetTitlePoli2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Static Lainnya",
              style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
