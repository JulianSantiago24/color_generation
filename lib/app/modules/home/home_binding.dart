import 'package:color_generation/app/modules/home/home_controller.dart';
import 'package:get/get.dart';

/// Binding to Home Controller

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
