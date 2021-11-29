// import 'package:flutter/material.dart';
// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:foodbyte/services/database.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
import 'food_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class FoodCart extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var cart = <FoodItem, int>{
    // FoodItem(11, 'Veggie Paradise', 'pizza3.png',
    //     'Veg pizza with corn, olives & red paprika', 200): 2,
    // FoodItem(
    //     3,
    //     'Veg Manchurian',
    //     'chinese3.jpg',
    //     'Indo-chinese dish made by roughly chopping and deep-frying cauliflower',
    //     80,
    //     allTimeOrders: 5,
    //     todayOrders: 5): 3,
    // FoodItem(4, 'Veg Noodle Soup', 'chinese4.jpg',
    //     'Delicious vegan soup with chinese noodles', 90): 4,
    // FoodItem(7, 'Paneer King', 'burger3.jfif',
    //     'Fresh crumbled Paneer and red, yellow and green peppers', 130): 6
  }; //dart map

  double itemtotal = 0;
  double deliveryCharge = 30;
  double taxes = 0;
  double discount = 0;
  double total = 0;
  var ids=[];
  int counter = -1;

  void getData()async {
    final User? user = _auth.currentUser;
    var document = await FirebaseFirestore.instance.collection('foodcart').doc(user!.uid).get();
    var fooditems = document.data();
    final Map<String, dynamic> doc = fooditems as Map<String, dynamic>;
    List result = doc['cart'];
    print(result);
    print('hello');
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
    await DatabaseService(uid: user!.uid).updatefoodCart(ids, itemtotal, deliveryCharge, taxes, discount, total);
  }

  Future<void> removeItem(FoodItem item, int quantity) async {
    if (quantity == 0) {
      cart.remove(item);
      itemtotal -= item.price;
    } else {
      cart[item] = quantity;
      itemtotal -= item.price;
      taxes = itemtotal * 0.18;
      total = itemtotal + deliveryCharge + taxes - discount;
      print(cart);
    }
    notifyListeners();
    final User? user = _auth.currentUser;
    if(counter>=0){
      counter--;
    }
    ids.remove(item.id);
    await DatabaseService(uid: user!.uid).updatefoodCart(ids, itemtotal, deliveryCharge, taxes, discount, total);
  }
}
