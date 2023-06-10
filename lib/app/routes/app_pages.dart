import 'package:dashboard_rskg_mobile/app/modules/chartz2/views/chartz_view.dart';
import 'package:get/get.dart';

import '../modules/chartz/bindings/chartz_binding.dart';
import '../modules/chartz/views/chartz_view.dart';
import '../modules/chartz2/bindings/chartz_binding.dart';
import '../modules/detail_umum/detail_umum/bindings/detail_umum_binding.dart';
import '../modules/detail_umum/detail_umum/views/detail_umum_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/jenis_pasien/bindings/jenis_pasien_binding.dart';
import '../modules/jenis_pasien/views/jenis_pasien_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/user/bindings/user_binding.dart';
import '../modules/user/views/user_view.dart';
import '../modules/wrapper/bindings/wrapper_binding.dart';
import '../modules/wrapper/views/wrapper_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      transition: Transition.cupertino,
      name: _Paths.CHARTZ,
      page: () => const ChartzView(),
      binding: ChartzBinding(),
    ),
    GetPage(
      transition: Transition.cupertino,
      name: _Paths.CHARTZ2,
      page: () => const ChartzView2(),
      binding: ChartzBinding2(),
    ),
    GetPage(
      name: _Paths.DETAIL_UMUM,
      page: () => const DetailUmumView(),
      binding: DetailUmumBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => const UserView(),
      binding: UserBinding(),
    ),
    GetPage(
      name: _Paths.JENIS_PASIEN,
      page: () => const JenisPasienView(),
      binding: JenisPasienBinding(),
    ),
    GetPage(
      name: _Paths.WRAPPER,
      page: () => const WrapperView(),
      binding: WrapperBinding(),
    ),
  ];
}
