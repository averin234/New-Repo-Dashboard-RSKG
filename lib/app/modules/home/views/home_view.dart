import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/logo.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/dashboard.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/static_lainnya.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/title2.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/title3.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            stretch: true,
            centerTitle: true,
            title: Text(
                greetings()
            ),
            actions: const [
              // Icon(
              //     onPressed: () => Navigator.of(context)
              //         .push(MaterialPageRoute(builder: (_) => const SearchPage())),
              //     icon: const Icon(Icons.search))
            ],
            bottom: AppBar(
              toolbarHeight: 100,
              automaticallyImplyLeading: false,
              elevation: 1,
              title: Column(
                children: [
                  WidgetTitlelogo(),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: const [
                  SizedBox(
                    height: 10,
                  ),
                  WidgetTitlePoli1(),
                  DashBoard(),
                  SizedBox(
                    height: 10,
                  ),
                  WidgetTitlePoli2(),
                  StaticLainnya(),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
  String greetings(){
    final hour = DateTime.now().hour;

    if(hour <= 12){
      return 'Selamat Pagi';
    } else if (hour <= 17){
      return 'Selamat Siang';
    }
    return 'Selamat Malam';
  }
}

