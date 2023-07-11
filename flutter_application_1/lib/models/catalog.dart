class CatalogModel {
 static final items = [
    Item(1, "Pixel 1", "This is new pixel 1", 299, "black",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpe3KCFYBzYkAAxKf-6Ggf_Lwt8r9Jr3UYfw&usqp=CAU",
        )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String ImageUrl;

  Item(this.id, this.name, this.desc, this.price, this.color, this.ImageUrl);
}
