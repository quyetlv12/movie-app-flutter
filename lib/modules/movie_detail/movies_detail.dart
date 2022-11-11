import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/getX/controller/movie_controller.dart';
import 'package:movieapp/models/movie_json.dart';
import 'package:movieapp/widgets/title_widget.dart';

class MoviesDetailScreen extends StatelessWidget {
  final Movie movie;
  const MoviesDetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    final movieController = Get.put(MoviesController());

    // print('movieController ${movieController.slugId}');
    return Obx(() {
      print('detail ${movieController.episodesList}');
      return Scaffold(
        body: Container(
          child: Column(children: [
            Image.network(movie.posterUrl),
            Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TitleWidget(
                  content: movie.name,
                )),
            // ListView.builder(
            //   itemBuilder: (context, index) => Text('hello'),
            //   itemCount: movieController.episodesList.length,
            // )
          ]),
        ),
      );
    });
  }
}
