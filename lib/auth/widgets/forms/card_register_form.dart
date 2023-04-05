import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_owp/auth/structure/controllers/auth_controller.dart';
import 'package:flutter_with_firebase_owp/auth/utils/validators_utils.dart';

import 'package:get/get.dart';

class CardRegisterForm extends StatelessWidget {
  CardRegisterForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();
    FormValidator formValidator = FormValidator();
    return Form(
      key: _formKey,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              //POSIBLE ERROR
              //Es necesario utilizar los widget de Flutter como hijos del Form
              //Form => TextFormField , TextFormField ... etc => Validate
              //para hacer las validaciones => TextFormField
              Flexible(
                child: TextFormField(
                  obscureText: false,
                  controller: authController.nameController,
                  validator: formValidator.isValidName,
                  decoration:
                      const InputDecoration(hintText: "Escribe tu nombre"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: TextFormField(
                  obscureText: false,
                  controller: authController.emailController,
                  validator: formValidator.isValidEmail,
                  decoration:
                      const InputDecoration(hintText: "Escribe tu email"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: TextFormField(
                  obscureText: true,
                  controller: authController.passwordController,
                  validator: formValidator.isValidPass,
                  decoration:
                      const InputDecoration(hintText: "Escribe tu contraseña"),
                ),
              ),

              const Expanded(
                child: SizedBox(
                  height: 20,
                ),
              ),

              TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    authController.registerWithEmailAndPassword();
                  } else {
                    print("vuelve a intentarlo");
                  }
                },
                child: const Text(
                  "REGISTRARSE",
                  style: TextStyle(
                    color: Colors.pink,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
