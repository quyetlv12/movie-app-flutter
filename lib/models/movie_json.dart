class movieModel {
  String? _imdbID;
  String? _title;
  String? _year;
  String? _poster;

  movieModel({String? imdbID, String? title, String? year, String? poster}) {
    if (imdbID != null) {
      this._imdbID = imdbID;
    }
    if (title != null) {
      this._title = title;
    }
    if (year != null) {
      this._year = year;
    }
    if (poster != null) {
      this._poster = poster;
    }
  }

  String? get imdbID => _imdbID;
  set imdbID(String? imdbID) => _imdbID = imdbID;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get year => _year;
  set year(String? year) => _year = year;
  String? get poster => _poster;
  set poster(String? poster) => _poster = poster;

  movieModel.fromJson(Map<String, dynamic> json) {
    _imdbID = json['imdbID'];
    _title = json['Title'];
    _year = json['Year'];
    _poster = json['Poster'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imdbID'] = this._imdbID;
    data['Title'] = this._title;
    data['Year'] = this._year;
    data['Poster'] = this._poster;
    return data;
  }
}
