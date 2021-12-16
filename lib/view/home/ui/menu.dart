// ignore_for_file: prefer_const_constructors

import 'package:animated_bar_fab/core/components/widgets/custom_scaffold_with_animated_fab.dart';
import 'package:animated_bar_fab/core/extension/context_extension.dart';
import 'package:animated_bar_fab/view/home/controller/home_controller.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    final HomeController _homeController = Get.find<HomeController>();
    return WillPopScope(
      onWillPop: () async => false,
      child: CustomScaffold(
        type: 2,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.white, Colors.black])),
          child: list(),
        ),
      ),
    );
  }

  ListView list() {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        SizedBox(
          child: DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                profileImage(),
                Text(
                  "Vasseurr",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: context.getHeight * 0.02),
                Text(
                  "Software Developer",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.folder, color: Colors.white),
          title: Text("My Files",
              style: TextStyle(
                color: Colors.white,
              )),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.star, color: Colors.white),
          title: Text("Starred",
              style: TextStyle(
                color: Colors.white,
              )),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.payment, color: Colors.white),
          title: Text("Payment",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        ListTile(
          leading: Icon(Icons.notifications, color: Colors.white),
          title: Text(
            "Notifications",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.person, color: Colors.white),
          title: Text("My Profile",
              style: TextStyle(
                color: Colors.white,
              )),
          onTap: () {},
        ),
        SizedBox(
          height: context.getHeight * 0.01,
        ),
        Divider(
          color: Colors.blue[100],
          thickness: 1,
        ),
        SizedBox(
          height: context.getHeight * 0.01,
        ),
        ListTile(
          title: Text("Contact Us",
              style: TextStyle(
                color: Colors.white,
              )),
          onTap: () {},
        ),
        ListTile(
          title: Text("About Us",
              style: TextStyle(
                color: Colors.white,
              )),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            "Logout",
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            final snackBar = SnackBar(
                backgroundColor: Colors.blue, content: Text("Çıkış yapıldı"));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ),
        SizedBox(
          height: context.getHeight * 0.02,
        ),
      ],
    );
  }

  Container profileImage() {
    String imageLink =
        "https://www.seekpng.com/png/detail/1010-10108361_person-icon-circle.png";
    return Container(
      width: context.getWidth * 0.2,
      height: context.getHeight * 0.1,
      padding: EdgeInsets.only(bottom: 10),
      child: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(imageLink),
      ),
      /*DecoratedBox(
          decoration: ShapeDecoration(
              shape: CircleBorder(),
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage(imageLink),
              ))),*/
    );
  }
}
