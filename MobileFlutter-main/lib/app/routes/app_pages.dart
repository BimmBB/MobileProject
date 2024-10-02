import 'package:get/get.dart';
import 'package:modul_1/app/modules/home/login/login.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => LoginView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<LandingPage>(() => LandingPage());
      }), // Menghubungkan HomeController ke LoginView
    ),
  ];
}
