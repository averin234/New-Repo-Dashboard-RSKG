import 'package:dashboard_rskg_mobile/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CardKiri2 extends StatelessWidget {
  final String title;
  final String value;
  final String image;
  final bool isUmum;
  final String path;
  final int? color;
  const CardKiri2({
    super.key,
    required this.title,
    required this.value,
    required this.image,
    required this.isUmum,
    required this.path,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: 2, right: 30,bottom: 0),
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(
              'assets/images/bgmenu.png'),
          fit: BoxFit.fill,
        ),
        // gradient: const LinearGradient(
        //   begin: Alignment.topRight,
        //   end: Alignment.bottomLeft,
        //   stops: [0.1, 0.5, 0.7, 0.9],
        //   colors: [
        //     Color(0xff62cdff),
        //     Color(0xff62cdff),
        //     Color(0xff29b9fd),
        //     Color(0xff14b1fc),
        //   ],
        // ),
      ),
      width: 182,
      child: TextButton(
        onPressed: () {
          HapticFeedback.lightImpact();
          Get.toNamed(Routes.CHARTZ,
              arguments: {'title': title, 'path': path, 'isUmum': isUmum});
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 4,
            ),
            Row(children: [
              Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    image,
                    height: 30,
                    width: 30,
                    color: Color(0xff379fff),
                  ),
                ),
              ),
              SizedBox(
                width: 55,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Lihat",style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),)
              ),
            ],),
            SizedBox(
              height: 10,
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: const Color(0xffecf8ff).withOpacity(0.5),
                  //     spreadRadius: 0,
                  //     blurRadius: 10,
                  //     offset: const Offset(2, 1),
                  //   ),
                  // ],
                ),
                child :Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
