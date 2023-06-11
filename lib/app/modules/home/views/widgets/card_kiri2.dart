import 'package:dashboard_rskg_mobile/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
      margin: const EdgeInsets.only(left: 10, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('assets/images/bgmenu.png'),
          fit: BoxFit.fill,
        ),
        // gradient:  LinearGradient(
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
      child: TextButton(
        onPressed: () {
          HapticFeedback.lightImpact();
          Get.toNamed(Routes.CHARTZ2,
              arguments: {'title': title, 'path': path, 'isUmum': isUmum});
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    image,
                    height: 30,
                    width: 30,
                    color: const Color(0xff379fff),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Lihat",
                    style: GoogleFonts.nunito(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              value,
              style: GoogleFonts.nunito(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: GoogleFonts.nunito(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
