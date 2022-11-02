import 'package:get/get.dart';

class MoviesController extends GetxController {
  RxBool isLoading = false.obs;
  List movies = [].obs;
}
