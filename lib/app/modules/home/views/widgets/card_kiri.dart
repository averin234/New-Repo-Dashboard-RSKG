import 'package:dashboard_rskg_mobile/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CardKiri extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.CHARTZ, parameters: {'title': title});
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2 - 25,
        margin: const EdgeInsets.only(left: 16.0),
        padding:
            const EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 10),
        decoration: BoxDecoration(
          color: Color(color ?? 0xfff6f5f5),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
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
                  image,
                  height: 30,
                  width: 30,
                  color: Colors.blue,
                ),
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              title,
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
