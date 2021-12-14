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
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Card(
          child: Center(
              child: Image.network(
                  "https://i.pinimg.com/originals/44/51/b1/4451b16f14d94961bbc5a1a29c2d3459.jpg")),
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
