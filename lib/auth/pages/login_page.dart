import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_owp/auth/structure/controllers/auth_controller.dart';
import 'package:flutter_with_firebase_owp/auth/widgets/forms/card_login_form.dart';
import 'package:flutter_with_firebase_owp/routes/app_routes.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          authController.signInAnonymous();
        },
      ),
      backgroundColor: Colors.orange,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "¡BIENVENIDO!",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: CardLoginForm(),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              child: const Text(
                "Registrarse",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Get.offAllNamed(Routes.REGISTER);
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
