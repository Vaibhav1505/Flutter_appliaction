import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/ItemWidget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 10;

  final String name = "Vaibhav";

  final DummyList = List.generate(20, (index) => CatalogModel.items[0]);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var CatalogJSON = await rootBundle.loadString("assets/files/catalog.json");
    var DecodedData = JsonDecoder(CatalogJSON);
    print(DecodedData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: DummyList.length,
            itemBuilder: ((context, index) {
              return ItemWidget(
                item: DummyList[index],
              );
            })),
      ),
      drawer: Mydrawer(),
    );
  }
}
