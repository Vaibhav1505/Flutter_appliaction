import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;
  //catalog field
  late CatalogModel _catalog;
//Collection of IDs-> store IDs of each items
  final List<int> _ItemIds = [];
  CatalogModel get catalog => _catalog;
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get Items in the cart-->
  List<Item> get items => _ItemIds.map((id) => catalog.getById(id)).toList();

  //Total Price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _ItemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _ItemIds.remove(item.id);
  }
}
