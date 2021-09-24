import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
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
            ]
        ),
        bottomNavigationBar: BottomNavigationBar(

          backgroundColor: Color(0xffDF711B),
         selectedLabelStyle: TextStyle(
           fontFamily: 'Segoe UI',
           fontSize: 20,
           color: const Color(0xff181818),
         ),
         unselectedLabelStyle: TextStyle(
           fontFamily: 'Segoe UI',
           fontSize: 15,
           color: const Color(0xff181818),
         ),
          // backgroundColor: const Color(0xFFFFFF),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu_outlined),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Account',
            ),
          ],
          // currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          // onTap: _onItemTapped,
        ),
      ));
  }
}

