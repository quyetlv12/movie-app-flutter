import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:movieapp/models/movie_detail.dart';
import 'package:movieapp/models/movie_json.dart';
import 'package:http/http.dart' as http;

class MovieService {
  static var client = http.Client();
  static Future<List<Movie>?> getMovie(String page) async {
    final queryParameters = {
      'page': page,
    };
    final uri = Uri.https(
        'www.ophim1.com', '/danh-sach/phim-moi-cap-nhat', queryParameters);
    var response = await http.get(uri, headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
    });

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['items'];
      final String pathImage = jsonDecode(response.body)['pathImage'];
      // generate again array and replace link poster
      for (var i = 0; i < result.length; i++) {
        result[i]['thumb_url'] = 'http://img.ophim1.cc/uploads/movies/' +
            '${result[i]['thumb_url'] != "" ? result[i]['thumb_url'] : result[i]['poster_url']}';
        result[i]['poster_url'] = 'http://img.ophim1.cc/uploads/movies/' +
            '${result[i]['poster_url'] != "" ? result[i]['poster_url'] : result[i]['thumb_url']}';
      }
      return result.map((e) => Movie.fromJson(e)).toList();
    } else {
      return null;
    }
  }
}
