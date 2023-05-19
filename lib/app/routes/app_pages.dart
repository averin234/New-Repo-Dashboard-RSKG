import 'package:get/get.dart';
import '../modules/chartz/bindings/chartz_binding.dart';
import '../modules/chartz/views/chartz_view.dart';
import '../modules/detail_umum/detail_umum/bindings/detail_umum_binding.dart';
import '../modules/detail_umum/detail_umum/views/detail_umum_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

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
      name: _Paths.DETAIL_UMUM,
      page: () => const DetailUmumView(),
      binding: DetailUmumBinding(),
    ),
  ];
}
