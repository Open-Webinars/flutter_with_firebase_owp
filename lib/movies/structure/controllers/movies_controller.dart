import 'package:flutter_with_firebase_owp/movies/services/movies_firebase_repository.dart';
import 'package:get/get.dart';

import 'package:flutter_with_firebase_owp/movies/models/movie_model.dart';
import 'package:flutter_with_firebase_owp/movies/models/popular_movies_model.dart';
import 'package:flutter_with_firebase_owp/movies/services/movies_repository.dart';

class MoviesController extends GetxController {
  Rx<PopularMovies> popularMovies = PopularMovies().obs;

  RxList<Movie> firebaseMovies = <Movie>[].obs;

  Future<void> getPopularMovies() async {
    final PopularMovies newPopularMovies =
        await MoviesRepository().popularMovies();
    print(popularMovies.value);
    popularMovies.value = newPopularMovies;
  }

  Future<void> getMoviesFromFirebase() async {
    final List<Movie> newMovies =
        await MoviesFirebaseRepository().getMoviesFirebase();
    print(popularMovies.value);
    firebaseMovies.value = newMovies;
  }
}
