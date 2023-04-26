import 'dart:math';
import 'package:color_generation/app/routes/app_pages.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

/// Controller of Home Page

class HomeController extends GetxController {

  /// Store data in memory
  final getStorge = GetStorage();
  /// Initialize background color variable
  Rx<Color> color = Color.fromARGB(255, 30, 31, 56).obs;

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
    Get.offNamed<dynamic>(Routes.LOGIN);
    
  }
  
  /// Controller to Change background Color
  void changeColor() {
    color.value = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }
}
