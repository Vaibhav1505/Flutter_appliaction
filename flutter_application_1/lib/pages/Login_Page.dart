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
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
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
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        
                         await Future.delayed(  Duration(seconds: 1));
                         Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 4),
                        height: 40,
                        width: changeButton? 40: 150,
                        alignment: Alignment.center,
                        child:
                        changeButton?
                        Icon(
                          Icons.done,
                          color:Colors.white,
                          
                          
                          ):
                         Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          //shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                          borderRadius:changeButton? BorderRadius.circular(35):BorderRadius.circular(10),
                        ),
                      ),
                    )
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
        ));
  }
}
