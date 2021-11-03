import 'package:flutter/material.dart';

class EmptyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 80, 30, 60),
          child: Image(
            image: AssetImage('assets/images/empty-cart.png'),
            width: 250,
            height: 250,
          ),
        ),
        Text(
          'Your Cart is Empty!',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, fontFamily: 'Georgia'),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Looks like you haven't added anything to the cart yet.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w200,
              fontFamily: 'Georgia',
            ),
          ),
        ),
      ],
    );
  }
}
