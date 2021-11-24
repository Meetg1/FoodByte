import 'package:flutter/material.dart';
import 'package:foodbyte/models/food_item.dart';
import 'package:foodbyte/screens/address_page.dart';
import 'package:provider/provider.dart';
import 'package:foodbyte/models/food_cart.dart';
import 'package:foodbyte/screens/empty_cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

// class AddToCartMenu extends StatelessWidget {
//   int productCounter;

//   AddToCartMenu(this.productCounter);

//   @override
//   Widget build(BuildContext context) {
//     return;
//   }
// }

// class TotalCalculationWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }

class PromoCodeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 3, right: 3),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xFFfae3e2).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ]),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
                  borderRadius: BorderRadius.circular(7)),
              fillColor: Colors.white,
              hintText: 'Add Your Promo Code',
              filled: true,
              suffixIcon: IconButton(
                  icon: Icon(
                    Icons.local_offer,
                    color: Color(0xFFfd2c2c),
                  ),
                  onPressed: () {
                    debugPrint('222');
                  })),
        ),
      ),
    );
  }
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    if (Provider.of<FoodCart>(context).cart.isEmpty) {
      print("empty");
      return EmptyCart();
    } else
      print("ok");
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Consumer<FoodCart>(builder: (context, foodcart, child) {
        var cart = foodcart.cart;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "Your Food Cart",
              style: TextStyle(
                fontFamily: 'Georgia',
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0xFFfae3e2).withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ]),
              child: ListView.builder(
                  // key: Key(currentDish),
                  scrollDirection: Axis.horizontal,
                  itemCount: cart.length,
                  itemBuilder: (BuildContext context, int index) {
                    FoodItem key = cart.keys.elementAt(index);
                    return Container(
                      // key: Key(index.toString()),
                      width: 320.0,
                      child: Card(
                        color: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                child: Image(
                                  height: 135.0,
                                  image: AssetImage(
                                    "assets/images/${key.imageName}",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 130,
                                              child: Text(
                                                key.name,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Color(0xFF3a3a3b),
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              child: Text(
                                                "₹${key.price}/-",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Color(0xFF3a3a3b),
                                                    fontWeight:
                                                        FontWeight.w400),
                                                // textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ],
                                        ),
                                        // SizedBox(
                                        //   width: 15,
                                        // ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      child: Row(
                                        // mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          IconButton(
                                            onPressed: () {
                                              foodcart.removeItem(
                                                  key, cart[key]! - 1);
                                            },
                                            icon: Icon(Icons.remove),
                                            color: Colors.black,
                                            iconSize: 22,
                                          ),
                                          InkWell(
                                            onTap: () => print('hello'),
                                            child: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xff9fe8a9),
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 2.0),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  ' ${cart[key]} ',
                                                  style: new TextStyle(
                                                      fontSize: 20.0,
                                                      color: Colors.green[900],
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              foodcart.addItem(
                                                  key, cart[key]! + 1);
                                            },
                                            icon: Icon(Icons.add),
                                            color: Color(0xFFfd2c2c),
                                            iconSize: 22,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {
                                    for (var i = cart[key]!; i > 0; i--) {
                                      foodcart.removeItem(key, i - 1);
                                    }
                                  },
                                  icon: Image.asset(
                                    "assets/images/delete_icon.png",
                                    color: Colors.red,
                                    width: 25,
                                    height: 25,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            PromoCodeWidget(),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0xFFfae3e2).withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ]),
              child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.only(left: 25, right: 30, top: 10, bottom: 10),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Item total",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "₹${foodcart.itemtotal}",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Delivery Charge",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "₹${foodcart.deliveryCharge}",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Taxes & Charges",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "₹${foodcart.taxes.toStringAsFixed(1)}",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Discount",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "₹${foodcart.discount}",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                      Divider(
                        height: 15,
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Total",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "₹${foodcart.total}/-",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddressPage()));
                },
                child: Text('Proceed', style: TextStyle(fontSize: 20)),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(80, 10, 80, 10)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)))),
              )),
            ),
          ],
        );
      }),
    );
  }
}
