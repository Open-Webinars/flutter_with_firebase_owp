import 'package:flutter_with_firebase_owp/auth/pages/loading_page.dart';
import 'package:flutter_with_firebase_owp/auth/pages/login_page.dart';
import 'package:flutter_with_firebase_owp/auth/pages/register_page.dart';
import 'package:flutter_with_firebase_owp/auth/structure/bindings/auth_binding.dart';
import 'package:flutter_with_firebase_owp/movies/pages/movies_home.dart';
import 'package:get/get.dart';
import 'package:flutter_with_firebase_owp/routes/app_routes.dart';
import 'package:flutter_with_firebase_owp/movies/structure/bindings/movies_binding.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.LOADING,
      page: () => const LoadingPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const MoviesHome(),
      binding: MoviesBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterPage(),
    ),
  ];
}
