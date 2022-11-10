// To parse this JSON data, do
//
//     final movieDetail = movieDetailFromJson(jsonString);

import 'dart:convert';

MovieDetail movieDetailFromJson(String str) =>
    MovieDetail.fromJson(json.decode(str));

String movieDetailToJson(MovieDetail data) => json.encode(data.toJson());

class MovieDetail {
  MovieDetail({
    required this.modified,
    required this.id,
    required this.name,
    required this.originName,
    required this.content,
    required this.type,
    required this.status,
    required this.thumbUrl,
    required this.posterUrl,
    required this.isCopyright,
    required this.subDocquyen,
    required this.chieurap,
    required this.trailerUrl,
    required this.time,
    required this.episodeCurrent,
    required this.episodeTotal,
    required this.quality,
    required this.lang,
    required this.notify,
    required this.showtimes,
    required this.slug,
    required this.year,
    required this.actor,
    required this.director,
    required this.category,
    required this.country,
  });

  Modified modified;
  String id;
  String name;
  String originName;
  String content;
  String type;
  String status;
  String thumbUrl;
  String posterUrl;
  String isCopyright;
  String subDocquyen;
  bool chieurap;
  String trailerUrl;
  String time;
  String episodeCurrent;
  String episodeTotal;
  String quality;
  String lang;
  String notify;
  String showtimes;
  String slug;
  int year;
  List<String> actor;
  List<String> director;
  List<Category> category;
  List<Category> country;

  factory MovieDetail.fromJson(Map<String, dynamic> json) => MovieDetail(
        modified: Modified.fromJson(json["modified"]),
        id: json["_id"],
        name: json["name"],
        originName: json["origin_name"],
        content: json["content"],
        type: json["type"],
        status: json["status"],
        thumbUrl: json["thumb_url"],
        posterUrl: json["poster_url"],
        isCopyright: json["is_copyright"],
        subDocquyen: json["sub_docquyen"],
        chieurap: json["chieurap"],
        trailerUrl: json["trailer_url"],
        time: json["time"],
        episodeCurrent: json["episode_current"],
        episodeTotal: json["episode_total"],
        quality: json["quality"],
        lang: json["lang"],
        notify: json["notify"],
        showtimes: json["showtimes"],
        slug: json["slug"],
        year: json["year"],
        actor: List<String>.from(json["actor"].map((x) => x)),
        director: List<String>.from(json["director"].map((x) => x)),
        category: List<Category>.from(
            json["category"].map((x) => Category.fromJson(x))),
        country: List<Category>.from(
            json["country"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "modified": modified.toJson(),
        "_id": id,
        "name": name,
        "origin_name": originName,
        "content": content,
        "type": type,
        "status": status,
        "thumb_url": thumbUrl,
        "poster_url": posterUrl,
        "is_copyright": isCopyright,
        "sub_docquyen": subDocquyen,
        "chieurap": chieurap,
        "trailer_url": trailerUrl,
        "time": time,
        "episode_current": episodeCurrent,
        "episode_total": episodeTotal,
        "quality": quality,
        "lang": lang,
        "notify": notify,
        "showtimes": showtimes,
        "slug": slug,
        "year": year,
        "actor": List<dynamic>.from(actor.map((x) => x)),
        "director": List<dynamic>.from(director.map((x) => x)),
        "category": List<dynamic>.from(category.map((x) => x.toJson())),
        "country": List<dynamic>.from(country.map((x) => x.toJson())),
      };
}

class Category {
  Category({
    required this.name,
  });

  String name;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
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

// To parse this JSON data, do
//
//     final episodesModel = episodesModelFromJson(jsonString);

List<EpisodesModel> episodesModelFromJson(String str) =>
    List<EpisodesModel>.from(
        json.decode(str).map((x) => EpisodesModel.fromJson(x)));

String episodesModelToJson(List<EpisodesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EpisodesModel {
  EpisodesModel({
    required this.serverName,
    required this.serverData,
  });

  String serverName;
  List<ServerDatum> serverData;

  factory EpisodesModel.fromJson(Map<String, dynamic> json) => EpisodesModel(
        serverName: json["server_name"],
        serverData: List<ServerDatum>.from(
            json["server_data"].map((x) => ServerDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "server_name": serverName,
        "server_data": List<dynamic>.from(serverData.map((x) => x.toJson())),
      };
}

class ServerDatum {
  ServerDatum({
    required this.name,
    required this.slug,
    required this.filename,
    required this.linkEmbed,
    required this.linkM3U8,
  });

  String name;
  String slug;
  String filename;
  String linkEmbed;
  String linkM3U8;

  factory ServerDatum.fromJson(Map<String, dynamic> json) => ServerDatum(
        name: json["name"],
        slug: json["slug"],
        filename: json["filename"],
        linkEmbed: json["link_embed"],
        linkM3U8: json["link_m3u8"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "slug": slug,
        "filename": filename,
        "link_embed": linkEmbed,
        "link_m3u8": linkM3U8,
      };
}
