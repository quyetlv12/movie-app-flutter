import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/config/routes/router.dart';
import 'package:movieapp/getX/controller/appController.dart';
import 'package:movieapp/modules/wellcome_page/index.dart';
import 'config/routes/router.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // var AppController _appController =  Get.find();
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppController());
    return Obx(() => MaterialApp(
          title: 'Movie app',
          theme: ThemeData(
            brightness: controller.themeConfig.value,
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/home',
          onGenerateRoute: route.controller,
        ));
  }
}
