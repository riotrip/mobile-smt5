import '../models/item.dart';

class ItemData {
  static final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imagePath: 'assets/images/sugar.jpg',
      stock: 25,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imagePath: 'assets/images/salt.jpg',
      stock: 50,
      rating: 4.8,
    ),
    // Additional items can be added here
    // Item(
    //   name: 'Rice',
    //   price: 12000,
    //   imagePath: 'assets/images/rice.jpg',
    //   stock: 15,
    //   rating: 4.3,
    // ),
    // Item(
    //   name: 'Cooking Oil',
    //   price: 18000,
    //   imagePath: 'assets/images/cooking_oil.jpg',
    //   stock: 8,
    //   rating: 4.6,
    // ),
  ];
}
