import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/ItemWidget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 10;

  final String name = "Vaibhav";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(Duration(seconds:4 ));
    final CatalogJSON =
        await rootBundle.loadString("assets/files/catalog.json");
    final DecodedData = jsonDecode(CatalogJSON);
    var productsData = DecodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    //map<string, dynamic> map = Map.fromMap(item);
    setState(() {});
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
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 16,
                    crossAxisCount: 2,
                    crossAxisSpacing: 16),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                          child: Text(
                            item.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(color: Colors.deepPurple),
                          padding: EdgeInsets.all(12),
                        ),
                        child: Image.network(item.image),
                        footer: Container(
                          
                          child: Text(
                            item.price.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          
                          decoration: BoxDecoration(color: Colors.black),
                          padding: EdgeInsets.all(12),
                        ),
                      ));
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(child: CircularProgressIndicator()),
      ),
      drawer: Mydrawer(),
    );
  }
}
