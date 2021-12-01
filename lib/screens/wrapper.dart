import 'package:flutter/material.dart';
import 'package:foodbyte/models/food_cart.dart';
import 'package:foodbyte/screens/authenticate.dart';
import 'package:foodbyte/screens/home.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    // final user =  context.watch<User>().user;

    if (user != null) {
      Provider.of<FoodCart>(context, listen: false).buildCart();
      return HomePage();
    } else {
      return Authenticate();
    }
  }
}
