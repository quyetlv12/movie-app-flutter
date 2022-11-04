import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:movieapp/getX/controller/movie_controller.dart';
import 'package:movieapp/widgets/title_widget.dart';

class ListMovies extends StatelessWidget {
  const ListMovies({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesController = Get.put(MoviesController());

    return Container(
        child: Obx(() => Scaffold(
              body: Visibility(
                visible: moviesController.isLoading.value,
                child: StaggeredGridView.countBuilder(
                    itemCount: moviesController.moviesList.length,
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 300,
                        width: 100,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Container(
                                child: Image.network(
                                  moviesController.moviesList[index].posterUrl,
                                  height: 210,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Center(
                                    child: TitleWidget(
                                  content:
                                      moviesController.moviesList[index].name,
                                )),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                replacement: const Center(child: CircularProgressIndicator()),
              ),
            )));
  }
}
