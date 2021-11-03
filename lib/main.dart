import 'package:flutter/material.dart';
import 'package:foodbyte/models/food_cart.dart';
import 'package:foodbyte/screens/home.dart';
import 'package:provider/provider.dart';
// import 'package:foodbyte/screens/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => FoodCart(),
      child: MaterialApp(
          title: 'FoodByte',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // primaryColor: Color(0xFF3EBACE),
            // accentColor: Color(0xFFD8ECF1),
            scaffoldBackgroundColor: Color(0xFFF3F5F7),
          ),
          home: HomePage()),
    );
  }
}
