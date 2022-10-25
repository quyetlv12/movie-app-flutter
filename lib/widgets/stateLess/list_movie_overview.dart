import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movieapp/models/movie_json.dart';
import 'package:movieapp/services/movie_service.dart';

class MovieOverViewList extends StatefulWidget {
  const MovieOverViewList({super.key});

  @override
  State<MovieOverViewList> createState() => _MovieOverViewListState();
}

class _MovieOverViewListState extends State<MovieOverViewList> {
  List<Movie>? movies;
  var isLoaded = false;
  @override
  void initState() {
    super.initState();
    // fetch data to api
    getData();
  }

  getData() async {
    movies = await MovieService().getMovie();
    if (movies != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: movies?.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(movies![index].poster,
                            fit: BoxFit.cover, height: 200.0, width: 200.0),
                      ),
                      Container(
                        child: Text(movies![index].title),
                      )
                    ],
                  )),
            );
          },
        ),
        replacement: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
