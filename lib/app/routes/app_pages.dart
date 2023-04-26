import 'package:color_generation/app/modules/home/home_binding.dart';
import 'package:color_generation/app/modules/home/home_page.dart';
import 'package:color_generation/app/modules/login/login_binding.dart';
import 'package:color_generation/app/modules/login/login_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

/// Routes to pages
class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage<dynamic>(
      name: _Paths.LOGIN,
      page: () =>  LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage<dynamic>(
      name: _Paths.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
