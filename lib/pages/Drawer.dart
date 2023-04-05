import 'dart:convert';
import 'home_page.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  bool vary = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: vary ? Colors.deepPurple : Color.fromARGB(255, 177, 33, 84),
        child: ListView(
          children: [
            DrawerHeader(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                onDetailsPressed: () {
                  vary = false;
                },
                accountName: Text(
                  "Shivanshu Ranjan",
                ),
                accountEmail: Text("shivanshu264@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/shivi.png")),
                currentAccountPictureSize: Size.fromRadius(40),
              ),
            ),
            ListTile(
              onTap: () {
                vary = false;
              },
              leading: Icon(
                Icons.home,
                color: Colors.white,
                size: 40,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            ListTile(
              onTap: () {
                vary = false;
              },
              leading: Icon(
                Icons.person_2_outlined,
                color: Colors.white,
                size: 40,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.white,
                size: 40,
              ),
              title: Text(
                "Email us!",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.subscriptions,
                color: Colors.white,
                size: 40,
              ),
              title: Text(
                "Subscribe!",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.add_location_alt_sharp,
                color: Colors.white,
                size: 40,
              ),
              title: Text(
                "Reach out to us!",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            )
          ],
        ),
      ),
    );
  }
}
