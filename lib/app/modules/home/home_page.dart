import 'package:color_generation/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Main page to change background color
class HomePage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          controller.changeColor();
        },
        child: Scaffold(
            backgroundColor: controller.color.value,
            body: Center(
              child:  Text(
                'hello'.tr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 50,
                  fontFamily: 'ShadowsIntoLight',
                  color: Colors.white,
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {
               controller.onClose();
               Get.snackbar(
                  'snackbar_title'.tr,
                  'snackbar_message'.tr,
                  snackPosition: SnackPosition.TOP,
                );
              },
              label: Text(
                'back'.tr,
                style: const TextStyle(
                  fontFamily: 'Righteous',
                ),
              ),
              icon: const Icon(Icons.arrow_back_ios),
              backgroundColor: Colors.pink,
            ),
          ),
      ),
    );
  }
}
