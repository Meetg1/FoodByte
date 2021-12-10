import 'package:flutter/foundation.dart';
import 'package:foodbyte/models/food_item.dart';
import 'package:foodbyte/models/order.dart';

class OrderBrain extends ChangeNotifier {
  List<Order> myOrders = [];

  void addOrder(Order order) {
    myOrders.add(order);
    // print("1");
    // print(myOrders);
    notifyListeners();
  }

  // List<Order> getOrders() {
  //   print("2");
  //   print(this.myOrders);
  //   return this.myOrders;
  // }
}
