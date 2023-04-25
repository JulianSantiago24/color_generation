import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

/// Controller of Home Page

class HomeController extends GetxController {

  /// Store data in memory
  final getStorge = GetStorage();
  /// Initialize background color variable
  Rx<MaterialColor> color = Colors.blue.obs;

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
  
  /// Controller to Change background Color
  void changeColor() {
    color.value = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }
}
