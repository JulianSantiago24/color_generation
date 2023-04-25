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
            body: const Center(
              child:  Text(
                'Hello There',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
      ),
    );
  }
}
