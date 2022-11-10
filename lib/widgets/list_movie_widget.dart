import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:movieapp/getX/controller/movie_controller.dart';
import 'package:movieapp/modules/movie_detail/movies_detail.dart';
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
                      return Card(
                          borderOnForeground: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          )),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Container(
                                    child: Image.network(
                                      moviesController
                                          .moviesList[index].thumbUrl,
                                      height: 210,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Center(
                                        child: TitleWidget(
                                      content: moviesController
                                          .moviesList[index].name,
                                    )),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                      child: OutlinedButton.icon(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.orange)),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MoviesDetailScreen(
                                                    movie: moviesController
                                                        .moviesList[index]),
                                          ));
                                      moviesController.changeSlugId(
                                          moviesController
                                              .moviesList[index].slug);
                                    },
                                    icon: Icon(
                                      Icons.play_arrow_outlined,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      "Xem phim",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                                )
                              ],
                            ),
                          ));
                    }),
                replacement: const Center(child: CircularProgressIndicator()),
              ),
            )));
  }
}
