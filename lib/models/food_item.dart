class FoodItem {
  final int id;
  final String name;
  final String imageUrl;
  final String description;
  final double price;
  int orders = 0;

  FoodItem(
    this.id,
    this.name,
    this.imageUrl,
    this.description,
    this.price,
  );
}

List<FoodItem> chinese = [
  FoodItem(
      1, 'Veg Fried Rice 1', 'assets/images/burger2.jpg', 'Very tasty', 180),
  FoodItem(
      2, 'Veg Fried Rice 2', 'assets/images/burger2.jpg', 'Very tasty', 180),
  FoodItem(
      3, 'Veg Fried Rice 3', 'assets/images/burger2.jpg', 'Very tasty', 180),
  FoodItem(
      4, 'Veg Fried Rice 4', 'assets/images/burger2.jpg', 'Very tasty', 180),
];

List<FoodItem> burgers = [
  FoodItem(5, 'Veg burger 1', 'assets/images/burger2.jpg', 'Very tasty', 180),
  FoodItem(6, 'Veg burger 2', 'assets/images/burger2.jpg', 'Very tasty', 180),
  FoodItem(7, 'Veg burger 3', 'assets/images/burger2.jpg', 'Very tasty', 180),
  FoodItem(8, 'Veg burger 4', 'assets/images/burger2.jpg', 'Very tasty', 180),
];

List todaysSpecial = [1, 2, 5];

List mostPopular = [2, 3, 4];
