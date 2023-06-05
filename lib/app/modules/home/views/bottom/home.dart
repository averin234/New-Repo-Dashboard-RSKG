import 'package:dashboard_rskg_mobile/app/modules/home/views/component_widgets/compomenet_home.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card.pendapatan.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/dashboard.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/logo.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/static_lainnya.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/title2.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/title3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../component_widgets/compomenet.dart';
import '../widgets/dashboard2.dart';
import '../widgets/slider.dart';
import '../widgets/title4.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          snap: true,
          title: Text("Dashboard"),
          actions: const [
          ],
          bottom: AppBar(
            toolbarHeight: 90,
            automaticallyImplyLeading: false,
            elevation: 0,
            title: Column(
              children: const [
                WidgetTitlelogo(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        // Other Sliver Widgets
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              decoration: BoxDecoration(
                color: Color(0xffecf8ff),
                borderRadius: BorderRadius.circular(0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xffecf8ff).withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: const Offset(2, 1),
                  ),
                ],
              ),
            child : Column(
              children: const [
                WidgetTitlePendapatan(),
                SizedBox(
                  height: 10,
                ),
                // Text("Pendapatan perInstalasi", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                // WidgetSlider(),
                Divider(
                    color: Colors.black
                ),
                WidgetTitlePoli1(),
                WidgetTitlePoli3(),
                SizedBox(
                  height: 15,
                ),
                // Homepage(),
                DashBoard(),
                DashBoard1(),
                SizedBox(
                  height: 10,
                ),
                WidgetTitlePoli2(),
                Homepage2(),
                // StaticLainnya(),
              ],
            ),
            ),
          ]),
        ),
      ],
    );
  }

  String greetings() {
    final hour = DateTime.now().hour;

    if (hour <= 12) {
      return 'Selamat Pagi';
    } else if (hour <= 17) {
      return 'Selamat Siang';
    }
    return 'Selamat Malam';
  }
}
