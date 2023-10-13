import 'package:get/get.dart';

import '../controllers/jenis_pasien_controller.dart';

class JenisPasienBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JenisPasienController>(
      () => JenisPasienController(),
    );
  }
}
