import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'pages/Home_Page.dart';
import 'pages/Login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/drawer.dart';
import 'widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: myTheme.lightTheme(context),
      darkTheme: myTheme.darkTheme(context),
      
        
      
        initialRoute: "/Home",
        routes: {
        "/": (context) => LoginPage(),
        MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.LoginRoute: (context) => LoginPage()
      },
    );
  }
}
