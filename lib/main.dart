import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/config/routes/router.dart';
import 'package:movieapp/modules/wellcome_page/index.dart';
import 'package:movieapp/widgets/stateFull/movie_overview.dart';
import 'config/routes/router.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // var AppController _appController =  Get.find();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie app',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      onGenerateRoute: route.controller,
    );
  }
}
