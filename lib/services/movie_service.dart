import 'package:movieapp/models/movie_json.dart';
import 'package:http/http.dart' as http;

class MovieService {
  Future<List<Movie>?> getMovie() async {
    var client = http.Client();
    var uri = Uri.parse('https://63569a819243cf412f890457.mockapi.io/moive');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return movieFromJson(json);
    }
  }
}
