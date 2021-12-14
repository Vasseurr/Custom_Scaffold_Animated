// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_bar_fab/core/components/widgets/custom_scaffold_with_animated_fab.dart';
import 'package:animated_bar_fab/view/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';
import 'mail.dart';
import 'profile_page.dart';
import 'star.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final HomeController _homeController = Get.find<HomeController>();
    return CustomScaffold(
      type: 1,
      body: Obx(() => IndexedStack(
            index: _homeController.tabIndex,
            children: [
              //pages
              HomePage(),
              StarPage(),
              MailPage(),
              ProfilePage(),
            ],
          )),
    );
  }
}
