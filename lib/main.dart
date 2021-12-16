import 'package:animated_bar_fab/core/constants/hive_keys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/init/cache/hive_manager.dart';
import 'core/routes/app_pages.dart';
import 'core/routes/app_routes.dart';

//Vasseurr - CopyRight

void main() async {
  await HiveManager.preferencesInit();
  //await Hive.initFlutter();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.HOME,
    //theme: AppThemeLight.instance.theme,
    getPages: AppPages.pages,
  ));
}
