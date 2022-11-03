// To parse this JSON data, do
//
//     final movie = movieFromJson(jsonString);

import 'dart:convert';

List<Movie> movieFromJson(dynamic str) =>
    List<Movie>.from(json.decode(str).map((x) => Movie.fromJson(x)));

String movieToJson(List<Movie> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Movie {
  Movie({
    required this.modified,
    required this.id,
    required this.name,
    required this.originName,
    required this.thumbUrl,
    required this.posterUrl,
    required this.slug,
    required this.year,
  });

  Modified modified;
  String id;
  String name;
  String originName;
  String thumbUrl;
  String posterUrl;
  String slug;
  int year;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        modified: Modified.fromJson(json["modified"]),
        id: json["_id"],
        name: json["name"],
        originName: json["origin_name"],
        thumbUrl: json["thumb_url"],
        posterUrl: json["poster_url"],
        slug: json["slug"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "modified": modified.toJson(),
        "_id": id,
        "name": name,
        "origin_name": originName,
        "thumb_url": thumbUrl,
        "poster_url": posterUrl,
        "slug": slug,
        "year": year,
      };
}

class Modified {
  Modified({
    required this.time,
  });

  DateTime time;

  factory Modified.fromJson(Map<String, dynamic> json) => Modified(
        time: DateTime.parse(json["time"]),
      );

  Map<String, dynamic> toJson() => {
        "time": time.toIso8601String(),
      };
}
