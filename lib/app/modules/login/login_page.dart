import 'package:color_generation/app/modules/login/login_controller.dart';
import 'package:color_generation/widgets/login_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class LoginPage extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children:[
          LoginBackground(),
          Center(
            child: TextButton(
              child: const Text(
                "Let's start",
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,              
                ),
              ),
              onPressed: () {
                controller.login();
              },
            ),
          ),
        ], 
      ),
    );
  }
}
