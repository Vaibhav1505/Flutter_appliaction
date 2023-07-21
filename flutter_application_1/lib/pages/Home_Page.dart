// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/pages/home_widget/catalog_header.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'home_widget/Catalog_list.dart';

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
    //await Future.delayed(Duration(seconds: 4));
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
        backgroundColor: context.canvasColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.CartRoute),
          child: Icon(CupertinoIcons.cart),
          backgroundColor: myTheme.DarkBluish,
        ),
        bottomNavigationBar: ButtonBar(),
        body: SafeArea(
          child: Container(
            padding: Vx.m16,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().py12().expand()
              else
                const CircularProgressIndicator()
            ]),
          ),
        ));
  }
}
