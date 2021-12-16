// ignore_for_file: prefer_const_constructors

import 'package:animated_bar_fab/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String androidSrc =
      "https://thumbs.dreamstime.com/b/android-logo-vector-illustration-white-background-application-system-149046923.jpg";
  String iosSrc =
      "https://i.joecomp.com/img/ipad/965/type-apple-logo-icon-iphone.gif";
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Card(
          child: Center(
            child: index == 0 || index == 3 || index == 4
                ? Image.network(androidSrc)
                : Image.network(iosSrc),
          ),
        );
      },
      padding: EdgeInsets.only(
        top: context.getHeight * 0.05,
        left: context.getWidth * 0.02,
        right: context.getWidth * 0.02,
      ),
      itemCount: 6,
    );
  }
}
