import 'package:flutter/material.dart';
import 'package:foodbyte/models/food_item.dart';
import 'package:foodbyte/models/order.dart';

class OrderPage extends StatelessWidget {
  final Order order;
  OrderPage(this.order);

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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  // "Order ID ${order.orderid}",
                  "Order ID ${2}",
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0x70bbffbd),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.5),
                    child: Text(
                      'Delivered',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 16,
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                ),
              ],
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
                  itemCount: order.foodItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    FoodItem key = order.foodItems.keys.elementAt(index);
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
                                      MainAxisAlignment.spaceAround,
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
                                    InkWell(
                                      onTap: () => print('hello'),
                                      child: Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xff9fe8a9),
                                          border: Border.all(
                                              color: Colors.white, width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Center(
                                          child: Text(
                                            ' ${order.foodItems[key]} ',
                                            style: new TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.green[900],
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
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
                            "₹${order.itemtotal}",
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
                            "₹${order.deliveryCharge}",
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
                            "₹${order.taxes.toStringAsFixed(1)}",
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
                            "₹${order.discount}",
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
                            "₹${order.total}/-",
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
            Text("DELIVERED ON ${order.deliveryDate.substring(0, 16)}")
          ],
        ),
      ),
    );
  }
}
