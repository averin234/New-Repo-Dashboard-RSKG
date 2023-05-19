import 'package:dashboard_rskg_mobile/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CardKanan extends StatefulWidget {
  final String title;
  final String value;
  final String image;
  final int? color;
  const CardKanan({
    super.key,
    required this.title,
    required this.value,
    required this.image,
    this.color,
  });

  @override
  State<CardKanan> createState() => _CardKananState();
}

class _CardKananState extends State<CardKanan> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 10),
      width: MediaQuery.of(context).size.width / 2,
      child: TextButton(
        onPressed: () {
          HapticFeedback.lightImpact();
          Get.toNamed(Routes.CHARTZ, parameters: {'title': widget.title});
        },
        onFocusChange: (value) => setState(() {
          isTapped = value;
          print(isTapped);
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

class MyCustomWidget extends StatefulWidget {
  const MyCustomWidget({super.key});

  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget>
    with TickerProviderStateMixin {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onHighlightChanged: (value) {
            setState(() {
              isTapped = value;
            });
          },
          onTap: () {},
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastLinearToSlowEaseIn,
            height: isTapped ? 55 : 60,
            width: isTapped ? 150 : 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 30,
                  offset: const Offset(3, 7),
                ),
              ],
            ),
            child: Center(
              child: Text(
                'TAP HERE',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
