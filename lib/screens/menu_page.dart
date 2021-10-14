import 'package:flutter/material.dart';
import 'package:foodbyte/models/food_item.dart';
import 'package:foodbyte/models/food_brain.dart';
import 'package:foodbyte/widgets/carousal1.dart';
import 'package:foodbyte/widgets/carousal2.dart';

FoodBrain f = FoodBrain();

class MenuPage extends StatefulWidget {
  // const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  String currentDish = "pizza";

  List<FoodItem> mostPopular = f.getMostPopular("pizza");

  List<FoodItem> todaySpecial = f.getTodaySpecial("pizza");

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 28.0, 50.0, 15.0),
          child: Text(
            "What would you like to eat?",
            style: TextStyle(
              fontFamily: 'Georgia',
              fontSize: 24,
              color: const Color(0xff707070),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentDish = "pizza";
                            mostPopular = f.getMostPopular("pizza");
                            todaySpecial = f.getTodaySpecial("pizza");
                          });
                        },
                        child: Container(
                            width: 70.0,
                            height: 70.0,
                            child: Image.asset("assets/images/pizzahome.jpg")),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Pizzas",
                        style: TextStyle(
                          fontFamily: 'Georgia',
                          fontSize: 15,
                          color: const Color(0xff707070),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentDish = "burger";
                            mostPopular = f.getMostPopular("burger");
                            todaySpecial = f.getTodaySpecial("burger");
                          });
                        },
                        child: Container(
                            width: 70.0,
                            height: 70.0,
                            child: Image.asset("assets/images/burgerhome.jpg")),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Burgers",
                        style: TextStyle(
                          fontFamily: 'Georgia',
                          fontSize: 15,
                          color: const Color(0xff707070),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentDish = "chinese";
                            mostPopular = f.getMostPopular("chinese");
                            todaySpecial = f.getTodaySpecial("chinese");
                          });
                        },
                        child: Container(
                            width: 70.0,
                            height: 70.0,
                            child:
                                Image.asset("assets/images/chinesehome.jpg")),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Chinese",
                        style: TextStyle(
                          fontFamily: 'Georgia',
                          fontSize: 15,
                          color: const Color(0xff707070),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentDish = "south";
                            mostPopular = f.getMostPopular("south");
                            todaySpecial = f.getTodaySpecial("south");
                          });
                        },
                        child: Container(
                            width: 70.0,
                            height: 70.0,
                            child: Image.asset("assets/images/southhome.jpg")),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "South",
                        style: TextStyle(
                          fontFamily: 'Georgia',
                          fontSize: 15,
                          color: const Color(0xff707070),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Carousal1(mostPopular, currentDish),
            Carousal2(todaySpecial, currentDish),
          ],
        ),
      ],
    );
  }
}
