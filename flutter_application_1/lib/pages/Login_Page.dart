// import 'dart:html';
import 'package:flutter/src/material/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(height: 50),
                Image.asset("assets/images/undraw_Mobile_login_re_9ntv.png",
                    fit: BoxFit.cover),
                SizedBox(height: 25),
                Text(
                  "Welcome, $name !",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(height: 25),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be Empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),

                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be Empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      Material(
                        borderRadius:
                            BorderRadius.circular(changeButton ? 35 : 10),
                        color: Colors.deepPurple,
                        child: InkWell(
                          onTap: () => movetoHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 2),
                            height: 40,
                            width: changeButton ? 40 : 150,
                            alignment: Alignment.center,
                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                            //      // decoration: BoxDecoration(
                            //         color: Colors.deepPurple,
                            //         //shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                            //         borderRadius:changeButton? BorderRadius.circular(35):BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      // )
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      //   },
                      //   child: Text(
                      //     "Login",
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                      //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
