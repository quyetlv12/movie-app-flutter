import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/getX/controller/movie_controller.dart';
import 'package:movieapp/models/movie_json.dart';

class MoviesDetailScreen extends StatelessWidget {
  final Movie movie;
  const MoviesDetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    final movieController = Get.put(MoviesController());
    print('detail ${movieController.episodesList}');
    // print('movieController ${movieController.slugId}');
    return Container(
      child: Column(children: [
        Image.network(movie.posterUrl),
        Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text(
            movie.name,
            style: TextStyle(fontSize: 15),
          ),
        )
      ]),
    );
  }
}
