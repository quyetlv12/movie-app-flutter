import 'package:get/get.dart';
import 'package:movieapp/models/movie_json.dart';
// import 'package:movieapp/models/movie_json.dart';
import 'package:movieapp/services/movie_service.dart';

class MoviesController extends GetxController {
  final currentPage = 1.obs;
  var moviesList = <Movie>[].obs;
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    fetchMovies();
    // TODO: implement onInit
    super.onInit();
  }

  void fetchMovies() async {
    var movies = await MovieService.getMovie('2');
    if (movies != null) {
      moviesList.value = movies;
      isLoading.value = true;
    }
  }

  incrementCurrentPage(String page) {
    this.currentPage.value++;
  }

  decreaseCurrentPage(String page) {
    this.currentPage.value--;
  }
}
