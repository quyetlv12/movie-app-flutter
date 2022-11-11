import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  static AppController instance = Get.find();
  RxBool loginStatus = false.obs;
  var themeConfig = Brightness.light.obs;
  changeThemeConfig(dynamic config) {
    themeConfig.value = config;
  }
}
