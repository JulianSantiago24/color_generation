import 'package:color_generation/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {

  /// Store data in memory
  final getStorge = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  ///
  void login() {
    Get.offAllNamed<dynamic>(Routes.HOME);
  }
}
