import 'package:flutter/material.dart';
import 'package:foodbyte/models/food_item.dart';

class Carousal1 extends StatelessWidget {
  final List<FoodItem> mostPopular;
  final String currentDish;

  Carousal1(this.mostPopular, this.currentDish);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.fromLTRB(16.0, 20.0, 50.0, 10.0),
        child: Text(
          'Most Popular in $currentDish',
          style: TextStyle(
            fontFamily: 'Segoe UI',
            fontSize: 24,
            color: const Color(0xff707070),
          ),
        ),
      ),
      Container(
          height: 180.0,
          child: ListView.builder(
              key: Key(currentDish),
              scrollDirection: Axis.horizontal,
              itemCount: mostPopular.length,
              itemBuilder: (BuildContext context, int index) {
                // FoodItem fooditem = mostPopular[index];
                return Container(
                  // key: Key(index.toString()),
                  width: 320.0,
                  child: Stack(children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 5.0),
                      height: 140.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(150.0, 8.0, 20.0, 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              mostPopular[index].name,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              mostPopular[index].description,
                              style: TextStyle(
                                fontSize: 11.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "₹${mostPopular[index].price}/-",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  width: 55,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      border: Border.all(
                                        color: Color(0xffEE7700),
                                        width: 0.8,
                                      )),
                                  // color: Colors.black,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'ADD',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color: Color(0xffEE7700)
                                          // fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16.0,
                      top: 16.0,
                      bottom: 22.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        child: Image(
                          width: 140.0,
                          image: AssetImage(
                            'assets/images/${mostPopular[index].imageName}',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]),
                );
              }))
    ]);
  }
}
