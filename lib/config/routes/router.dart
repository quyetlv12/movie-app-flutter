import 'package:flutter/material.dart';
import 'package:movieapp/modules/home/HomePage.dart';
import 'package:movieapp/modules/login/Login.dart';
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
    case '/signup':
      return MaterialPageRoute(builder: (context) => SignUp());
    default:
      throw ('this route name does not exist');
  }
}
