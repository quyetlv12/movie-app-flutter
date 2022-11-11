import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:get/get.dart';
import 'package:movieapp/models/movie_detail.dart';
import 'package:movieapp/models/movie_json.dart';
import 'package:http/http.dart' as http;
import 'package:movieapp/services/movie_service.dart';

class MoviesController extends GetxController {
  final currentPage = 1.obs;
  var moviesList = <Movie>[].obs;
  var slugId = ''.obs;
  RxBool isLoading = false.obs;
  var movie = <MovieDetail>{}.obs;
  var episodesList = <EpisodesModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    fetchMovies();
    super.onInit();
  }

  static var client = http.Client();
  void fetchMovies() async {
    var movies = await MovieService.getMovie('1');
    if (movies != null) {
      moviesList.value = movies;
      isLoading.value = true;
    }
  }

  void fetchDetailMovie(String slug) async {
    // await MovieService.getMovieDetail(slug);

    final uri = await Uri.https('www.ophim1.com', '/phim/${slug}');
    var response = await http.get(uri, headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
    });
    if (response.statusCode == 200) {
      final movie = jsonDecode(response.body)['movie'];
      final List episodes = jsonDecode(response.body)['episodes'];
      this.episodesList.value =
          episodes.map((e) => EpisodesModel.fromJson(e)).toList();
    }
  }

  changeSlugId(String slug) {
    slugId.value = slug;
    if (slugId != '') {
      fetchDetailMovie(slug);
    }
  }
}
