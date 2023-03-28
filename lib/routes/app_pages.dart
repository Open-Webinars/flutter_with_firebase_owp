import 'package:flutter_with_firebase_owp/movies/pages/movies_home.dart';
import 'package:get/get.dart';
import 'package:flutter_with_firebase_owp/routes/app_routes.dart';
import 'package:flutter_with_firebase_owp/structure/bindings/movies_binding.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const MoviesHome(),
      binding: MoviesBinding(),
    ),
  ];
}
