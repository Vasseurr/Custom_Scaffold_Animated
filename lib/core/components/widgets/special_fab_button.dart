// ignore_for_file: prefer_const_constructors, avoid_print, prefer_final_fields, must_be_immutable

import 'package:animated_bar_fab/core/extension/context_extension.dart';
import 'package:animated_bar_fab/core/routes/app_routes.dart';
import 'package:animated_bar_fab/view/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpecialFABButton extends StatefulWidget {
  int type;
  SpecialFABButton({Key? key, required this.type}) : super(key: key);

  @override
  _SpecialFABButtonState createState() => _SpecialFABButtonState();
}

class _SpecialFABButtonState extends State<SpecialFABButton>
    with SingleTickerProviderStateMixin {
  HomeController _homeController = Get.find<HomeController>();
  late AnimationController _animationController;
  Icon mainFabIcon = Icon(Icons.add);
  late Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100))
          ..addListener(() {
            setState(() {});
          });
    _translateButton = Tween<double>(
      begin: 0,
      end: _fabHeight,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.00,
        1.00,
        curve: _curve,
      ),
    ));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform(
            transform: Matrix4.translationValues(
                0.0, -_translateButton.value * 3.6, 0.0),
            child: notificationButton()),
        Transform(
            transform: Matrix4.translationValues(
                0.0, -_translateButton.value * 2.4, 0.0),
            child: mailButton()),
        Transform(
            transform: Matrix4.translationValues(
                0.0, -_translateButton.value * 1.2, 0.0),
            child: profileButton()),
        mainFAB(context),
      ],
    );
  }

  FloatingActionButton notificationButton() => FloatingActionButton(
      heroTag: "Notifications",
      onPressed: null,
      backgroundColor: context.darkblue,
      child: Icon(Icons.notification_add, size: 40));

  FloatingActionButton mailButton() => FloatingActionButton(
        heroTag: "Mail",
        onPressed: null,
        backgroundColor: context.darkblue,
        child: Icon(Icons.mail, size: 40),
      );

  FloatingActionButton profileButton() => FloatingActionButton(
        heroTag: "Profile",
        onPressed: () {
          Get.toNamed(Routes.PROFILE);
        },
        backgroundColor: context.darkblue,
        child: Icon(Icons.person, size: 40),
      );

  mainFAB(BuildContext context) {
    return FloatingActionButton(
        onPressed: animate,
        backgroundColor: widget.type == 1
            ? _homeController.mainFabIsClosed == true
                ? context.darkblue
                : Colors.red
            : _homeController.otherFabIsClosed == true
                ? context.darkblue
                : Colors.red,
        child: widget.type == 1
            ? _homeController.mainFabIsClosed == true
                ? mainFabIcon
                : Icon(Icons.close)
            : _homeController.otherFabIsClosed == true
                ? mainFabIcon
                : Icon(Icons.close));
  }

  void animate() {
    if (widget.type == 1) {
      if (_homeController.mainFabIsClosed) {
        print("Opening");
        _animationController.forward();
      } else {
        print("Closing");
        _animationController.reverse();
      }
      _homeController.mainFabIsClosed = !_homeController.mainFabIsClosed;
    } else {
      if (_homeController.otherFabIsClosed) {
        print("Opening");
        _animationController.forward();
      } else {
        print("Closing");
        _animationController.reverse();
      }
      _homeController.otherFabIsClosed = !_homeController.otherFabIsClosed;
    }
  }
}
