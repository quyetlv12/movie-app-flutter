import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movieapp/getX/controller/movie_controller.dart';

class ListMovies extends StatelessWidget {
  const ListMovies({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesController = Get.put(MoviesController());
    return Container(
        child: Obx(() => Scaffold(
              body: Visibility(
                visible: moviesController.isLoading.value,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: moviesController.movies.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Text(moviesController.movies![index]),
                      );
                    }),
                replacement: const Center(child: CircularProgressIndicator()),
              ),
            )));
  }
}
