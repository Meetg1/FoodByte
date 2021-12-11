import 'package:flutter/material.dart';
import 'package:foodbyte/models/food_cart.dart';
import 'package:foodbyte/models/food_item.dart';
import 'package:provider/provider.dart';

class FoodDetailPage extends StatelessWidget {
  final FoodItem item;

  FoodDetailPage(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          leading: Image(
            image: AssetImage('assets/images/logo_login.jpg'),
          ),
          title: Center(
            child: Text(
              "FoodByte",
              style: TextStyle(
                fontFamily: 'Tempus Sans ITC',
                fontSize: 40,
                color: const Color(0xff000000),
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.menu_outlined,
                ),
                onPressed: null)
          ]),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
              child: Center(
                child: Image(
                  image: AssetImage("assets/images/${item.imageName}"),
                  width: 410,
                  height: 200,
                ),
              ),
            ),
            Divider(
              height: 6,
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 30, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    item.name,
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "${item.price}/-",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
              alignment: Alignment.centerRight,
              child: Container(
                child: Consumer<FoodCart>(builder: (context, foodcart, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          foodcart.removeItem(item, foodcart.cart[item]! - 1);
                        },
                        icon: Icon(Icons.remove),
                        color: Colors.black,
                        iconSize: 35,
                      ),
                      InkWell(
                        onTap: () => print('hello'),
                        child: Container(
                          width: 200.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: Text(
                              foodcart.cart[item] == null
                                  ? ("0")
                                  : ' ${foodcart.cart[item]} ',
                              style: new TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (foodcart.cart[item] == null)
                            foodcart.addItem(item, 1);
                          else
                            foodcart.addItem(item, foodcart.cart[item]! + 1);
                        },
                        icon: Icon(Icons.add),
                        color: Color(0xFFfd2c2c),
                        iconSize: 35,
                      ),
                    ],
                  );
                }),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 1,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 3,
              indent: 20,
              endIndent: 170,
              color: Colors.red,
            ),
            Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text(
                      item.description,
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
