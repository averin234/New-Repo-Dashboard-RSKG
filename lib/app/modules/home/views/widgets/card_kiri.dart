import 'package:dashboard_rskg_mobile/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 5),
      width: MediaQuery.of(context).size.width / 2,
      child: TextButton(
        onPressed: () {
          HapticFeedback.lightImpact();
          Get.toNamed(Routes.CHARTZ, parameters: {'title': title});
        },
        style: TextButton.styleFrom(
          elevation: 10,
          shadowColor: Colors.grey[100],
          backgroundColor: Color(0xff41b2fd),
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
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xffecf8ff).withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(2, 1),
                    ),
                  ],
                ),
                child : Padding(padding: EdgeInsets.all(6),
                  child : Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: Color(0xff4babe7),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
