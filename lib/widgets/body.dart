import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movieapp/models/movie_json.dart';

class BodyMovieDetail extends StatelessWidget {
  final Movie movie;
  BodyMovieDetail({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.network(movie.posterUrl)],
    );
  }
}
