import 'package:flutter/material.dart';
import 'package:movieapp/modules/home/HomePage.dart';
import 'package:movieapp/modules/login/Login.dart';
import 'package:movieapp/modules/movie_detail/movies_detail.dart';
import 'package:movieapp/modules/search/search.dart';
import 'package:movieapp/modules/signup/SignUp.dart';
import 'package:movieapp/modules/wellcome_page/index.dart';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => WellcomePage());
    case '/home':
      return MaterialPageRoute(builder: (context) => HomePage());
    case '/login':
      return MaterialPageRoute(builder: (context) => LoginPage());
    case '/search':
      return MaterialPageRoute(builder: (context) => SearchPage());
    case '/signup':
      return MaterialPageRoute(builder: (context) => SignUp());
    // case '/detail':
    //   return MaterialPageRoute(builder: (context) => MoviesDetailScreen());
    default:
      throw ('this route name does not exist');
  }
}
