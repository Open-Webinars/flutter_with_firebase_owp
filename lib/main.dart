import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_owp/auth/structure/controllers/auth_controller.dart';
import 'package:flutter_with_firebase_owp/routes/app_pages.dart';
import 'package:flutter_with_firebase_owp/routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      getPages: AppPages.routes,
      initialRoute: Routes.HOME,
      // initialBinding: BindingsBuilder(() {
      //   Get.put<AuthController>(AuthController());
      // }),
    );
  }
}
