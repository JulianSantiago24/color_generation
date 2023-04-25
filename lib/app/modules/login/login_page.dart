

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:color_generation/app/modules/login/login_controller.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class LoginPage extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login View'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Login"),
          onPressed: () {
            controller.login();
          },
        ),
      ),
    );
  }
}
