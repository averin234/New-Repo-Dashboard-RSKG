import 'package:dashboard_rskg_mobile/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CardKiri2 extends StatelessWidget {
  final String title;
  final String value;
  final String image;
  final int? color;
  const CardKiri2({
    super.key,
    required this.title,
    required this.value,
    required this.image,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.only(left: 14, right: 10),
      child : Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xffd5d7d7).withOpacity(0.5),
            spreadRadius: 10,
            blurRadius: 10,
            offset: const Offset(2, 1),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Color(0xffb5f1cc),
            Color(0xffbef0cb),
            Color(0xffade792),
            Color(0xffade792),
          ],
        ),
      ),

      width: MediaQuery.of(context).size.width / 2.3,
      child: TextButton(
        onPressed: () {
          HapticFeedback.lightImpact();
          Get.toNamed(Routes.CHARTZ, parameters: {'title': title});
        },
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
            SizedBox(
              height: 10,
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
      ),
    );
  }
}
