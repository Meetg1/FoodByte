import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class AddToCartMenu extends StatelessWidget {
  int productCounter;

  AddToCartMenu(this.productCounter);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.remove),
            color: Colors.black,
            iconSize: 22,
          ),
          InkWell(
            onTap: () => print('hello'),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xff9fe8a9),
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Text(
                  ' $productCounter',
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green[900],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: Color(0xFFfd2c2c),
            iconSize: 22,
          ),
        ],
      ),
    );
  }
}

class TotalCalculationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          padding: EdgeInsets.only(left: 25, right: 30, top: 10, bottom: 10),
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
                    "₹500",
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
                    "₹50",
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
                    "₹20.2",
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
                    "₹100",
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
                    "₹670.2/-",
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
    );
  }
}

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
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            "Your Food Cart",
            style: TextStyle(
                fontSize: 30,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 130,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color(0xFFfae3e2).withOpacity(0.3),
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
              padding: EdgeInsets.only(left: 5, right: 0, top: 10, bottom: 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Center(
                          child: Image.asset(
                        "assets/images/burger1.jpg",
                        width: 150,
                        height: 150,
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "Indian Burger",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF3a3a3b),
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: Text(
                                    "₹500/-",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF3a3a3b),
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/images/delete_icon.png",
                                  color: Colors.red,
                                  width: 27,
                                  height: 27,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerRight,
                          child: AddToCartMenu(2))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        PromoCodeWidget(),
        SizedBox(
          height: 10,
        ),
        TotalCalculationWidget(),
        SizedBox(
          height: 10,
        ),
        Container(
            child: ElevatedButton(
          onPressed: () {},
          child: Text('Proceed', style: TextStyle(fontSize: 20)),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.fromLTRB(20, 10, 20, 10)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)))),
        )),
      ],
    );
  }
}
