import 'package:color_generation/app/modules/login/login_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  testWidgets('Login controller test', (WidgetTester tester) async {
    final bindings = BindingsBuilder<dynamic>(() {
      Get.lazyPut<LoginController>(
        () => LoginController(),
      );
    });

    bindings.builder();
  });
}
