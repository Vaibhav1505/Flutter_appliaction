import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 10;
  final String name = "Vaibhav";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
