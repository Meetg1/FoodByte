import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodbyte/models/food_cart.dart';
import 'package:foodbyte/models/order.dart';
import 'package:foodbyte/models/order_brain.dart';
import 'package:foodbyte/screens/home.dart';
import 'package:provider/provider.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  final _formKey = GlobalKey<FormState>();
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  String fullname = '';
  String phone = '';
  String houseno = '';
  String streetname = '';
  String city = '';

  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Segoe UI';
    double defaultFontSize = 17;
    double defaultIconSize = 20;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
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
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
        //width: double.infinity,
        //height: double.infinity,
        child: Consumer<FoodCart>(builder: (context, foodcart, child) {
          var cart = foodcart.cart;
          return Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    'Add Address',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize),
                      hintText: "Full Name",
                    ),
                    onChanged: (val) {
                      setState(() {
                        fullname = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize),
                      hintText: "Phone Number",
                    ),
                    validator: (val) =>
                        val!.length != 10 ? 'Mobile No. is invalid' : null,
                    onChanged: (val) {
                      setState(() {
                        phone = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.place,
                        color: Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize),
                      hintText: "House No./Flat No./Society",
                    ),
                    onChanged: (val) {
                      setState(() {
                        houseno = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.place,
                        color: Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize),
                      hintText: "Street Name/Landmark",
                    ),
                    onChanged: (val) {
                      setState(() {
                        streetname = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.location_city,
                        color: Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize),
                      hintText: "City",
                    ),
                    onChanged: (val) {
                      setState(() {
                        city = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                        child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // print("form submitted!");
                          // print(fullname);
                          // print(phone);
                          // print(houseno);
                          // print(streetname);
                          // print(city);
                          // print(cart);
                          // print(foodcart.itemtotal);
                          Order o = Order(
                              cart,
                              foodcart.itemtotal,
                              foodcart.deliveryCharge,
                              foodcart.taxes,
                              foodcart.discount,
                              foodcart.total,
                              fullname,
                              phone,
                              houseno,
                              streetname,
                              city);

                          Provider.of<OrderBrain>(context, listen: false)
                              .addOrder(o);
                          Provider.of<FoodCart>(context, listen: false)
                              .emptyCart();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }
                      },
                      child:
                          Text('Place Order', style: TextStyle(fontSize: 20)),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.fromLTRB(50, 10, 50, 10)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                    )),
                  ),
                ],
              ),
            ),
          );
        }),
      )),
    );
  }
}
