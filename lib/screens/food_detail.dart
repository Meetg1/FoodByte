import 'package:flutter/material.dart';


class food_detail extends StatefulWidget {
  const food_detail({Key? key}) : super(key: key);

  @override
  _food_detailState createState() => _food_detailState();
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
                  ' $productCounter',
                  style: new TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: Color(0xFFfd2c2c),
            iconSize: 35,
          ),
        ],
      ),
    );
  }
}

class _food_detailState extends State<food_detail> {
  int _selectedIndex = 0;

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
                  image: AssetImage("assets/images/chinese1.jpg"),
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
                    "Hakka Noodles",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "₹120",
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
                child: AddToCartMenu(1)),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Hakka Noodles',
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
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    "The Hakka people have a marked cuisine and style of Chinese cooking which is little known outside the Hakka home. It concentrates on the texture of food – the hallmark of Hakka cuisine. ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
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
