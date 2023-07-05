import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 10;
  final String name = "Vaibhav";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to journey of $days days of flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}