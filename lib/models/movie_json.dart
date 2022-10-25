// To parse this JSON data, do
//
//     final movie = movieFromJson(jsonString);

import 'dart:convert';

List<Movie> movieFromJson(String str) =>
    List<Movie>.from(json.decode(str).map((x) => Movie.fromJson(x)));

String movieToJson(List<Movie> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Movie {
  Movie({
    required this.imdbId,
    required this.title,
    required this.year,
    required this.poster,
  });

  String imdbId;
  String title;
  String year;
  String poster;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        imdbId: json["imdbID"],
        title: json["title"],
        year: json["year"],
        poster: json["poster"],
      );

  Map<String, dynamic> toJson() => {
        "imdbID": imdbId,
        "title": title,
        "year": year,
        "poster": poster,
      };
}
