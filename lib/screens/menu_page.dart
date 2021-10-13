import 'package:flutter/material.dart';
import 'package:foodbyte/widgets/carousal1.dart';
import 'package:foodbyte/widgets/carousal2.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

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
                          print("hi");
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
                          print("hi");
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
                          print("hi");
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
                          print("hi");
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
            Carousal1(),
            Carousal2(),
          ],
        ),
      ],
    );
  }
}
