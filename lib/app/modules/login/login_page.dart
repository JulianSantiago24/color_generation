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
                  key: const Key('start_textButton'),
                  child: Text(
                    'start'.tr,
                    key: const Key('start_text'),
                    style: const TextStyle(
                      fontSize: 45,
                      fontFamily: 'Pacifico',
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
          child: const Text(
            'English',
            style: TextStyle(
              fontFamily: 'Righteous',
            ),
          ),
        ),
        FilledButton.tonal(
          onPressed: () => messagesController.chaneLanguague(
            'es', 'CO',
          ),
          child: const Text(
            'Español',
            style: TextStyle(
              fontFamily: 'Righteous',
            ),
          ),
        ),
      ],
    );
  }
}
