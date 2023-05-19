import 'package:dashboard_rskg_mobile/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CardKiri extends StatefulWidget {
  final String title;
  final String value;
  final String image;
  final int? color;
  const CardKiri({
    super.key,
    required this.title,
    required this.value,
    required this.image,
    this.color,
  });

  @override
  State<CardKiri> createState() => _CardKiriState();
}

class _CardKiriState extends State<CardKiri> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 5),
      width: MediaQuery.of(context).size.width / 2,
      child: TextButton(
        onPressed: () {
          HapticFeedback.lightImpact();
          Get.toNamed(Routes.CHARTZ, parameters: {'title': widget.title});
        },
        onHover: (value) => setState(() {
          isTapped = value;
        }),
        style: TextButton.styleFrom(
          elevation: isTapped ? 3 : 0,
          backgroundColor: Color(widget.color ?? 0xfff6f5f5),
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 32,
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  widget.image,
                  height: 30,
                  width: 30,
                  color: Colors.blue,
                ),
              ),
            ),
            Text(
              widget.value,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.brown,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 15.0,
                color: Color(0xff4babe7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
