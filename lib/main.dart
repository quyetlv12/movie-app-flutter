import 'package:flutter/material.dart';
import 'package:movieapp/config/routes/router.dart';
import 'package:movieapp/modules/wellcome_page/index.dart';
import 'package:movieapp/widgets/stateFull/movie_overview.dart';
import 'config/routes/router.dart' as route;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: route.controller,
    );
  }
}

