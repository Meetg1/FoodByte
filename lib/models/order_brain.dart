import 'package:flutter/foundation.dart';
import 'package:foodbyte/models/order.dart';

class OrderBrain extends ChangeNotifier {
  List<Order> myOrders = [];

  void addOrder(Order order) {
    myOrders.add(order);
    notifyListeners();
  }
}
