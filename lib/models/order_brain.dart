import 'package:foodbyte/models/food_item.dart';
import 'package:foodbyte/models/order.dart';

class OrderBrain {
  List<Order> myOrders = [
    Order(
        1,
        DateTime.now().toString(),
        <FoodItem, int>{
          FoodItem(11, 'Veggie Paradise', 'pizza3.png',
              'Veg pizza with corn, olives & red paprika', 200): 2,
          FoodItem(4, 'Veg Noodle Soup', 'chinese4.jpg',
              'Delicious vegan soup with chinese noodles', 90): 4,
          FoodItem(7, 'Paneer King', 'burger3.jfif',
              'Fresh crumbled Paneer and red, yellow and green peppers', 130): 6
        },
        100,
        30,
        20,
        5,
        200),
    Order(
        1,
        DateTime.now().toString(),
        <FoodItem, int>{
          FoodItem(11, 'Veggie Paradise', 'pizza3.png',
              'Veg pizza with corn, olives & red paprika', 200): 2,
          FoodItem(4, 'Veg Noodle Soup', 'chinese4.jpg',
              'Delicious vegan soup with chinese noodles', 90): 4,
          FoodItem(7, 'Paneer King', 'burger3.jfif',
              'Fresh crumbled Paneer and red, yellow and green peppers', 130): 6
        },
        100,
        30,
        20,
        5,
        200)
  ];
}
