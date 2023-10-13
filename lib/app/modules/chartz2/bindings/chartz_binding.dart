import 'package:get/get.dart';

import '../controllers/chartz_controller.dart';

class ChartzBinding2 extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartzController2>(
      () => ChartzController2(),
    );
  }
}
