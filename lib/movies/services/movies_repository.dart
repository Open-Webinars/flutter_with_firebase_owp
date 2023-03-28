import 'dart:convert';
import 'package:http/http.dart';

import 'package:flutter_with_firebase_owp/movies/services/movies_api_reposirtory.dart';
import 'package:flutter_with_firebase_owp/movies/models/popular_movies_model.dart';

class MoviesRepository {
  Future<PopularMovies> popularMovies() async {
    try {
      Response bodyRes = await MoviesApiRepository().getReqResPopularMovies();

      final body = bodyRes.body;

      print(body);

      final PopularMovies newPopularMovies =
          PopularMovies.fromJson(jsonDecode(body));

      print(newPopularMovies);

      return newPopularMovies;
    } catch (e) {
      return PopularMovies();
    }
  }
}
