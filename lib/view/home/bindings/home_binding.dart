import 'package:animated_bar_fab/view/home/controller/home_controller.dart';
import 'package:animated_bar_fab/view/home/repository/home_repository.dart';
import 'package:animated_bar_fab/view/home/service/home_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(HomeRepository(HomeService(Dio())));
    });
  }
}
