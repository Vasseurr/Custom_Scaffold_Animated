// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StarPage extends StatefulWidget {
  const StarPage({Key? key}) : super(key: key);

  @override
  _StarPageState createState() => _StarPageState();
}

class _StarPageState extends State<StarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("STAR"),
      ),
    );
  }
}
