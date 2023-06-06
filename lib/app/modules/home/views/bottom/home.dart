import 'package:dashboard_rskg_mobile/app/modules/home/views/component_widgets/compomenet_home.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card.pendapatan.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/dashboard.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/logo.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/mydropdown.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/title3.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard2.dart';
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
          title: const Text("Dashboard"),
          actions: const [],
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
            const Divider(
              color: Colors.black,
              height: 1.5,
            ),
            Column(
              children: const [
                WidgetTitlePendapatan(),
                SizedBox(
                  height: 10,
                ),
                // Text("Pendapatan perInstalasi", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                // WidgetSlider(),
                Divider(color: Colors.black),
                WidgetTitle3(),
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
