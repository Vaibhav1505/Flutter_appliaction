// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/pages/home_widget/catalog_image.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: Vx.mOnly(top: 15, right: 20),
            children: [
              "\$${catalog.price}".text.bold.red700.xl4.make(),
              ElevatedButton(
                      style: ButtonStyle(
                          //padding: EdgeInsets.Vx.mOnly(right: 20),
                          backgroundColor:
                              MaterialStateProperty.all(myTheme.DarkBluish),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      onPressed: () {
                        print("Object added to the Cart!");
                      },
                      child: "Buy".text.xl.bold.make())
                  .wh(100, 50),
            ]),
      ),
      backgroundColor: myTheme.CremColor,
      body: SafeArea(
          bottom: false,
          child: Column(children: [
            Hero(
                    tag: (catalog.image.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl4
                          .color(myTheme.DarkBluish)
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                    ],
                  ).py64(),
                ),
              ),
            )
          ])),
    );
  }
}
