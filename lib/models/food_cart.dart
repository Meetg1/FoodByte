// import 'package:flutter/material.dart';
// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:foodbyte/models/food_brain.dart';
import 'package:foodbyte/services/database.dart';
import 'food_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FoodBrain f = new FoodBrain();

class FoodCart extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var cart = <FoodItem, int>{}; //dart map

  double itemtotal = 0;
  double deliveryCharge = 30;
  double taxes = 0;
  double discount = 0;
  double total = 0;
  var ids = [];
  int counter = -1;

  Future<List> getData() async {
    final User? user = _auth.currentUser;
    var document = await FirebaseFirestore.instance
        .collection('foodcart')
        .doc(user!.uid)
        .get();
    var fooditems = document.data();
    final Map<String, dynamic> doc = fooditems as Map<String, dynamic>;
    List result = doc['cart'];
    return result;
  }

  Future<void> buildCart() async {
    var data = await getData();

    for (var i = 0; i < data.length; i++) {
      var item = f.getFoodItemById(data[i]);
      cart[item] = cart.containsKey(item) ? cart[item]! + 1 : 1;
      itemtotal += item.price;
      taxes = itemtotal * 0.18;
      total = itemtotal + deliveryCharge + taxes - discount;
    }
    notifyListeners();
  }

  Future<void> addItem(FoodItem item, int quantity) async {
    cart[item] = quantity;
    itemtotal += item.price;
    taxes = itemtotal * 0.18;
    total = itemtotal + deliveryCharge + taxes - discount;
    print(cart);
    notifyListeners();
    final User? user = _auth.currentUser;
    counter++;
    ids.insert(counter, item.id);
    await DatabaseService(uid: user!.uid)
        .updatefoodCart(ids, itemtotal, deliveryCharge, taxes, discount, total);
  }

  Future<void> removeItem(FoodItem item, int quantity) async {
    if (quantity == 0) {
      cart.remove(item);
    } else {
      cart[item] = quantity;
    }
    itemtotal -= item.price;
    taxes = itemtotal * 0.18;
    total = itemtotal + deliveryCharge + taxes - discount;

    if (cart.isEmpty) {
      emptyCart();
    }

    notifyListeners();
    final User? user = _auth.currentUser;
    if (counter >= 0) {
      counter--;
    }
    ids.remove(item.id);
    await DatabaseService(uid: user!.uid)
        .updatefoodCart(ids, itemtotal, deliveryCharge, taxes, discount, total);
  }

  Future<void> emptyCart() async {
    cart = <FoodItem, int>{};
    itemtotal = 0;
    taxes = 0;
    discount = 0;
    total = 0;
    await emptyCartDB();
    notifyListeners();
  }

  Future<void> emptyCartDB() async {
    final User? user = _auth.currentUser;
    await DatabaseService(uid: user!.uid)
        .updatefoodCart(null, 0.0, 0.0, 0.0, 0.0, 0.0);
  }

  Future verifyCoupon(coupon) async {
    var document = await FirebaseFirestore.instance
        .collection('coupons')
        .doc(coupon)
        .get();

    var foundCoupon = document.data();

    if (foundCoupon != null) {
      var dis = foundCoupon["discount"];
      var minorder = foundCoupon["minorder"];

      if (total < minorder) {
        return "Coupon valid on minimum order of $minorder";
      }

      discount = dis + .0;
      total -= discount;
      notifyListeners();
      return "valid";
    } else {
      return "Invalid coupon! Please try again.";
    }
  }
}
