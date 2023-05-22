import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/card.pendapatan.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/logo.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/dashboard.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/static_lainnya.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/title2.dart';
import 'package:dashboard_rskg_mobile/app/modules/home/views/widgets/title3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            stretch: true,
            centerTitle: true,
            title: Text(greetings()),
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
              title:  Column(
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
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  WidgetTitlePendapatan(),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        selectedItemColor: Colors.blue,
      ),
      // bottomNavigationBar: Container(
      //   margin: EdgeInsets.all(20),
      //   height: Get.width * .155,
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.black.withOpacity(.15),
      //         blurRadius: 30,
      //         offset:  Offset(0, 10),
      //       ),
      //     ],
      //     borderRadius: BorderRadius.circular(50),
      //   ),
      //   child: ListView.builder(
      //     itemCount: 4,
      //     scrollDirection: Axis.horizontal,
      //     padding: EdgeInsets.symmetric(horizontal: Get.width * .024),
      //     itemBuilder: (context, index) => InkWell(
      //       onTap: () {
      //         controller.currentIndex.value = index;
      //         HapticFeedback.lightImpact();
      //         print(controller.currentIndex.value);
      //       },
      //       splashColor: Colors.transparent,
      //       highlightColor: Colors.transparent,
      //       child: Stack(
      //         children: [
      //           SizedBox(
      //             width: Get.width * .2125,
      //             child: Center(
      //               child: Obx(() {
      //                 return AnimatedContainer(
      //                   duration: Duration(seconds: 1),
      //                   curve: Curves.fastLinearToSlowEaseIn,
      //                   height: index == controller.currentIndex.value
      //                       ? Get.width * .12
      //                       : 0,
      //                   width: index == controller.currentIndex.value
      //                       ? Get.width * .2125
      //                       : 0,
      //                   decoration: BoxDecoration(
      //                     color: index == controller.currentIndex.value
      //                         ? Colors.blueAccent.withOpacity(.2)
      //                         : Colors.transparent,
      //                     borderRadius: BorderRadius.circular(50),
      //                   ),
      //                 );
      //               }),
      //             ),
      //           ),
      //           Obx(() {
      //             return Container(
      //               width: Get.width * .2125,
      //               alignment: Alignment.center,
      //               child: Icon(
      //                 controller.listOfIcons[index],
      //                 size: Get.width * .076,
      //                 color: index == controller.currentIndex.value
      //                     ? Colors.blueAccent
      //                     : Colors.black26,
      //               ),
      //             );
      //           }),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
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
