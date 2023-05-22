import 'package:get/get.dart';

import '../controllers/detail_umum_controller.dart';

class DetailUmumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailUmumController>(
      () => DetailUmumController(),
    );
  }
}
