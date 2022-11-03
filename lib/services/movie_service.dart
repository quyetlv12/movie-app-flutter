import 'dart:convert';
import 'dart:io';

import 'package:movieapp/models/movie_json.dart';
import 'package:http/http.dart' as http;

class MovieService {
  static var client = http.Client();
  static Future<List<Movie>?> getMovie() async {
    final queryParameters = {
      'page': '1',
    };
    final uri = Uri.https(
        'www.ophim1.com', '/danh-sach/phim-moi-cap-nhat', queryParameters);
    var response = await http.get(uri, headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
    });
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['items'];
      return result.map((e) => Movie.fromJson(e)).toList();
    } else {
      return null;
    }
  }
}
