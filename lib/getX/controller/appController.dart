import 'package:get/get.dart';

class AppController extends GetxController {
  static AppController instance = Get.find();
  var themeConfig = 'light'.obs;
  changeThemeConfig() {
    themeConfig.value = 'dark';
  }
}
