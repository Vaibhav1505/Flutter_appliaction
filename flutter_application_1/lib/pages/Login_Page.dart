// import 'dart:html';
import 'package:flutter/src/material/text_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 50),
            Image.asset("assets/images/undraw_Mobile_login_re_9ntv.png",
                fit: BoxFit.cover),
            SizedBox(height: 25),
            Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
              child: Column(
                children: [
                  SizedBox(height: 25),
                  
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("User Logged in Successfully!");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextButton.styleFrom(),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
