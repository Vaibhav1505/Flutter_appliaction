import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_detail_page.dart';
import 'package:flutter_application_1/pages/home_widget/catalog_image.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import '../../models/catalog.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => HomeDetailPage(catalog: catalog))),
            ),
            child: CatalogItem(catalog: catalog),
          );
        });
  }
}

class CatalogItem extends StatelessWidget {
  const CatalogItem({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
              tag: Key(catalog.id.toString()),
              child: CatalogImage(image: catalog.image)),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                catalog.name.text.bold.lg.color(myTheme.DarkBluish).make(),
                catalog.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    buttonPadding: Vx.mOnly(top: 15, right: 20),
                    children: [
                      "\$${catalog.price}".text.bold.xl.make(),
                      ElevatedButton(
                          style: ButtonStyle(
                              //padding: EdgeInsets.Vx.mOnly(right: 20),
                              backgroundColor:
                                  MaterialStateProperty.all(myTheme.DarkBluish),
                              shape:
                                  MaterialStateProperty.all(StadiumBorder())),
                          onPressed: () {
                            print("Object added to the Cart!");
                          },
                          child: const Text('Buy')),
                    ]),
                // ElevatedButton.icon(
                //     style: ElevatedButton.styleFrom(
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(50))),
                //     onPressed: () {
                //       print("Object added to the Cart!");
                //     },
                //     icon: const Icon(Icons.shopping_cart),
                //     label: const Text('Buy')),

                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(50))),
                //   onPressed: () {},
                //   child: "Buy".text.make(),
                // )
              ]))
        ],
      ),
    ).white.py1.square(150).roundedLg.make().p8();
  }
}
