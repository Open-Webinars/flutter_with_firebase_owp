import 'package:flutter_with_firebase_owp/movies/models/movie_model.dart';

class PopularMovies {
  int? page;
  List<Movie>? results;
  int? totalPages;
  int? totalResults;

  PopularMovies({this.page, this.results, this.totalPages, this.totalResults});

  PopularMovies.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <Movie>[];
      json['results'].forEach((v) {
        results?.add(Movie.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['page'] = page;
    if (results != null) {
      data['results'] = results?.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }
}
