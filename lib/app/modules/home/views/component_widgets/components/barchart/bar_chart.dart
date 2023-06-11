// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'barchart_data.dart';
import 'package:google_fonts/google_fonts.dart';

class BarChart extends StatelessWidget {
  final Color color;
  final DisplayType display;
  final Icon icon;
  final String title;
  final String subTitle;

  final List<BarchartData> data;
  BarChart({
    Key? key,
    required this.display,
    required this.color,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.data,
  }) : super(key: key);
  final formatter = NumberFormat('#,##,000');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      height: 175,
      width: 175,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              icon
            ],
          ),
          SizedBox(height: 10),
          Spacer(),
          // Chart
          SizedBox(
            height: 50,
            width: double.infinity,
            child: CustomPaint(
                foregroundPainter: ChartPainter(color: color, data: data)),
          ),
          SizedBox(height: 10),
          Spacer(),
          SizedBox(height: 3),
          Text(
            subTitle,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w500, fontSize: 11, color: Colors.grey),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class ChartPainter extends CustomPainter {
  final Color color;
  final List<BarchartData> data;
  ChartPainter({required this.color, required this.data});

  @override
  void paint(Canvas canvas, Size size) {
    BarchartData max =
        data.reduce((curr, next) => curr.value > next.value ? curr : next);
    Paint bgPaint = Paint()
      ..color = Color.fromARGB(255, 246, 246, 246)
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;
    Paint activePaint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;

    double startingPoint = size.width * 0;
    double space = size.width / data.length;
    if (space < 6.5) {
      activePaint.strokeWidth = space / 2.3;
      bgPaint.strokeWidth = space / 2.3;
    }

    for (var prop in data) {
      canvas.drawLine(Offset(startingPoint + (space / 2), size.height * 1),
          Offset(startingPoint + (space / 2), size.height * 0), bgPaint);

      canvas.drawLine(
          Offset(startingPoint + (space / 2), size.height * 1),
          Offset(startingPoint + (space / 2),
              size.height * (100 - ((prop.value / max.value) * 100)) / 100),
          activePaint);

      startingPoint += space;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
