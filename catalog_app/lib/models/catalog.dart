class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}
class CatalogModel {

static final items = [
  Item(
      id: 1,
      name: "iPhone 14 Pro",
      desc: "Apple iPhone 14th generation",
      price: 1499,
      color: "#33505a",
      image:
      "https://www.apple.com/v/iphone-14-pro/h/images/key-features/features/dynamic-island/dd_dynamic_island_bubbles__eta5uuag8ay6_medium.jpg")
];
}
