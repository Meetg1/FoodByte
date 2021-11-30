import 'package:foodbyte/models/food_item.dart';
import 'package:foodbyte/models/order.dart';

class OrderBrain {
  List<Order> myOrders = [];
  void addOrder(Order order) {
    this.myOrders.add(order);
    print(this.myOrders);
  }

  List<Order> getOrders() {
    return this.myOrders;
  }
}
