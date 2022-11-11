import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movieapp/getX/controller/appController.dart';

class TitleWidget extends StatelessWidget {
  late String content = '';
  late String configOpts = '';
  TitleWidget({
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    final appController = Get.put(AppController());
    return Obx(() => Text(
          content,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: appController.themeConfig.value == Brightness.dark
                ? Colors.green
                : Colors.black,
          ),
        ));
  }
}
