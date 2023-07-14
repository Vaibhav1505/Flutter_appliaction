// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imgUrl = Image.asset("assets/images/profile photo.jpg");
    bool changeButton = false;
    return Drawer(
      width: 250,
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: Colors.deepPurple,
              child: DrawerHeader(

                  // decoration: BoxDecoration(color: Colors.black),

                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountName: Text(
                      "Vaibhav",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22),
                    ),
                    accountEmail: Text(
                      "vbs15052002@yahoo.com",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12),
                    ),
                    currentAccountPicture: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile photo.jpg')),
                  )),
            ),
            Divider(
              color: Colors.black,
              thickness: 1.5,
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.black,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Proile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.black,
              ),
              title: Text(
                "Call Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
