import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_owp/movies/widgets/movies_list_firebase_widget.dart';
import 'package:flutter_with_firebase_owp/movies/widgets/movies_list_popular_widget.dart';
import 'package:flutter_with_firebase_owp/themes/colors_theme.dart';

class SectionFilmsWidget extends StatelessWidget {
  const SectionFilmsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.darkBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              //Esta es la lista de las peliculas populares de origen
              MoviesListPopularWidget(
                titleSection: "RECOMENDADO PARA TI",
              ),
              //Esta es la lista de películas ordenadas en función de la popularidad
              MoviesListFirebaseWidget(
                titleSection: "PELÍCULAS DESDE FIREBASE",
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
