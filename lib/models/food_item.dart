class FoodItem {
  final int id;
  final String name;
  final String imageName;
  final String description;
  final double price;
  int allTimeOrders;
  int todayOrders;

  FoodItem(this.id, this.name, this.imageName, this.description, this.price,
      {this.allTimeOrders: 0, this.todayOrders: 0});
}
