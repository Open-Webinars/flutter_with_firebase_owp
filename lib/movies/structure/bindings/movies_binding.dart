import 'package:get/get.dart';
import 'package:flutter_with_firebase_owp/movies/structure/controllers/movies_controller.dart';

class MoviesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MoviesController>(() => MoviesController());
  }
}
