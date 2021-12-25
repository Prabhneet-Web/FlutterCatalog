import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  //catalog field
  late CatalogModel _catalog;
  //Collection of IDs - store Ids of each item
  final List<int> _itemIds = [];
  //Get Catalog
  CatalogModel get catalog => _catalog;
  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //Get item in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //Get Total Price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //AddItem
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //RemoveItem
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
