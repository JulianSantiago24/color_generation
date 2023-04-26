import 'package:color_generation/app/config/translations/translations_controller.dart';
import 'package:color_generation/app/modules/login/login_controller.dart';
import 'package:color_generation/app/widgets/login_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children:[
          LoginBackground(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    'start'.tr,
                    style: const TextStyle(
                      fontSize: 45,
                      color: Colors.white,              
                    ),
                  ),
                  onPressed: () {
                    controller.login();
                  },
                ),
                _LanguagueButtons()
            
              ],
            ),
          ),
        ], 
      ),
    );
  }
}


class _LanguagueButtons extends StatelessWidget {

  final messagesController = Get.put(MessageController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FilledButton.tonal(
          onPressed: () => messagesController.chaneLanguague(
            'en', 'US',
          ),
          child: const Text('English'),
        ),
        FilledButton.tonal(
          onPressed: () => messagesController.chaneLanguague(
            'es', 'CO',
          ),
          child: const Text('Español'),
        ),
      ],
    );
  }
}
