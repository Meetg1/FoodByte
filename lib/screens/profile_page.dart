import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodbyte/models/order_brain.dart';
import 'package:foodbyte/screens/order_page.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  // const profilePage({ Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var name = '';
  var phone = '';
  var email = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;
  void getProfile() async {
    final User? user = _auth.currentUser;
    var document = await FirebaseFirestore.instance
        .collection('profile')
        .doc(user!.uid)
        .get();
    var fooditems = document.data();
    final Map<String, dynamic> doc = fooditems as Map<String, dynamic>;
    name = doc['name'];
    phone = doc['phone'];
    email = doc['email'].toString();
    setState(() {});
  }

  @override
  void initState() {
    getProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Consumer<OrderBrain>(builder: (context, orderbrain, child) {
      var orders = orderbrain.myOrders;
      print(orders);
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  width: 140.0,
                  height: 140.0,
                  child: Image.asset("assets/images/profilepic.png")),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.person,
                  color: Color(0xffEE7700),
                ),
                SizedBox(width: 30),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 17.5,
                    color: const Color(0xff707070),
                  ),
                ),
              ],
            ),
            Center(
              child: SizedBox(
                height: 40,
                width: 340,
                child: Divider(
                  thickness: 1,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Icon(
                  Icons.smartphone_outlined,
                  color: Color(0xffEE7700),
                ),
                SizedBox(width: 30),
                Text(
                  phone,
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 17.5,
                    color: const Color(0xff707070),
                  ),
                ),
              ],
            ),
            Center(
              child: SizedBox(
                height: 40,
                width: 340,
                child: Divider(
                  thickness: 1,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Icon(
                  Icons.alternate_email_outlined,
                  color: Color(0xffEE7700),
                ),
                SizedBox(width: 30),
                Text(
                  email,
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 17.5,
                    color: const Color(0xff707070),
                  ),
                ),
              ],
            ),
            Center(
              child: SizedBox(
                height: 40,
                width: 340,
                child: Divider(
                  thickness: 1,
                ),
              ),
            ),
            Text(
              "My Orders",
              style: TextStyle(
                fontFamily: 'Georgia',
                fontSize: 22,
                color: const Color(0xff707070),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 250,
              child: orders.length == 0
                  ? Container(
                      child: Center(
                        child: Text(
                          "You have no orders yet!",
                          style: TextStyle(
                            fontFamily: 'Georgia',
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: orders.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      OrderPage(orders[index], index + 1))),
                          child: Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 300,
                            // height: 400,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                  color: Color(0xffEE7700),
                                  width: 0.8,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 0, 0, 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        width: 65,
                                        image: AssetImage(
                                            'assets/images/logo_login.jpg'),
                                      ),
                                      Text(
                                        "Order ID ${index + 1}",
                                        style: TextStyle(
                                          fontFamily: 'Georgia',
                                          fontSize: 18,
                                          color: const Color(0xff707070),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0x70bbffbd),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.5),
                                      child: Text(
                                        'Delivered',
                                        style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 14,
                                          color: const Color(0xd9256c33),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'ITEMS',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      for (var key
                                          in orders[index].foodItems.keys)
                                        Container(
                                          margin: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                              "${orders[index].foodItems[key]}  X  ${key.name}"),
                                        )
                                    ],
                                  ),
                                  SizedBox(height: 13),
                                  Text(
                                    'ORDERED ON',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    orders[index].deliveryDate.substring(0, 16),
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
            ),
          ],
        ),
      );
    }));
  }
}
