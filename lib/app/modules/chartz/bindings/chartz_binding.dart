import 'package:get/get.dart';

import '../controllers/chartz_controller.dart';

class ChartzBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartzController>(
      () => ChartzController(),
    );
  }
}
