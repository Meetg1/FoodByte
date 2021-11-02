import 'package:flutter/material.dart';

class empty_cart extends StatelessWidget {
  const empty_cart({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 80, 30, 80),
            child: Center(
              child: Image(
                  image: AssetImage('assets/images/empty-cart.png'),
                width: 250,
                height: 250,
              ),
            ),
          ),
          Text(
            'Your Cart is Empty!',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
                fontFamily: 'Georgia'
            ),
          ),
        ],
      ),
    );
  }
}
