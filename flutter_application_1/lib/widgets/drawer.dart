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
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    "Vaibhav",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22),
                  ),
                  accountEmail: Text(
                    "vbs15052002@yahoo.com",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        NetworkImage("assets/images/profile photo.jpg"),
                  ),
                )),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              child: InkWell(
                onTap: () {
                  color:
                  changeButton
                      ? const Color.fromARGB(255, 88, 13, 102)
                      : Colors.deepPurple;
                },
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Proile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.white,
              ),
              title: Text(
                "Call Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
