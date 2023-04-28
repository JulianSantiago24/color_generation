import 'dart:ui';

import 'package:get/get.dart';

class MessageController extends GetxController {

  ///Controller to Change the languague to internationalzation
  void chaneLanguague(String languageCode, String countryCode){
    final locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }
}
