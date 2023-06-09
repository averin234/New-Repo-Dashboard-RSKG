import 'package:dashboard_rskg_mobile/app/data/component/fetch_data.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/controllers/home_controller.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/component_widgets/compomenet_home.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card_pendapatan.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/dashboard.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/logo.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/mydropdown.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/title3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../widgets/title4.dart';

class HomeBottom extends GetView<HomeController> {
  const HomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          snap: true,
          toolbarHeight: 10,
          centerTitle: true,
          // title: const Text("Dashboard"),
          bottom: AppBar(
            toolbarHeight: 90,
            automaticallyImplyLeading: false,
            elevation: 0,
            title: Column(
              children: const [
                WidgetTitlelogo(),
                SizedBox(height: 10),
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
              children: [
                FutureBuilder(
                    future: API.getPendapatan(
                        date: DateFormat('yyyy-MM-dd').format(DateTime.now())),
                    builder: (context, snapshot) {
                      if (snapshot.hasData &&
                          snapshot.connectionState != ConnectionState.waiting &&
                          snapshot.data != null) {
                        return WidgetTitlePendapatan(
                          pendapatan: snapshot.data!,
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
                const SizedBox(
                  height: 10,
                ),
                // Text("Pendapatan perInstalasi", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                // WidgetSlider(),
                const Divider(color: Colors.black),

                // WidgetTitlePoli3(),
                // WidgetTitle3(),

                const SizedBox(
                  height: 8,
                ),
                // Homepage(),
                Obx(() {
                  return FutureBuilder(
                    future: API.getPasien(date: controller.stringDate.value),
                    builder: (context, snapshot) {
                      if (snapshot.hasData &&
                          snapshot.connectionState != ConnectionState.waiting &&
                          snapshot.data != null) {
                        return DashBoard(pasien: snapshot.data!);
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  );
                }),
                const SizedBox(
                  height: 10,
                ),
                const WidgetTitlePoli2(),
                const Homepage2(),
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
