import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:flutter_with_firebase_owp/movies/structure/controllers/movies_controller.dart';
import 'package:flutter_with_firebase_owp/movies/widgets/movies_list_widget.dart';

class MoviesListMostPopularWidget extends StatelessWidget {
  final String titleSection;
  const MoviesListMostPopularWidget({
    Key? key,
    required this.titleSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MoviesController>(builder: (controller) {
      //Esta lista es la lista peliculas populares ordenadas de mayor a menor valoración
      controller.getMostPopularMovies();
      return Obx(() => MoviesListWidget(
            movies: controller.mostPopularMovies.value,
            titleSection: titleSection,
          ));
    });
  }
}
