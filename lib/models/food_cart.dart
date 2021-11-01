import 'food_item.dart';

class FoodCart {
  var foodItems = <FoodItem, int>{}; //dart map
  // List<FoodItem> cartitems = [];
  void addToCart(FoodItem item, int quantity) {
    this.foodItems[item] = quantity;
  }

  void getCartItems() {}
}
