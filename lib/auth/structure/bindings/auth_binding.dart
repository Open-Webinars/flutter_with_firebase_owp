import 'package:get/get.dart';
import 'package:flutter_with_firebase_owp/auth/structure/controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(),
    );
  }
}
