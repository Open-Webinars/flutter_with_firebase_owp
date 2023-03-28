import 'package:http/http.dart' as http;

class MoviesApiRepository {
  Future<http.Response> getReqResPopularMovies() async {
    final Map<String, dynamic> queryParameters = {
      "api_key": "eae50e8d6704551bcafaef3f74eeb17e",
      "language": "en-US",
      "page": "1",
    };

    var url =
        Uri.https("api.themoviedb.org", "/3/movie/popular", queryParameters);
    print(url);
    return await http.get(
      url,
      headers: {},
    );
  }
}
