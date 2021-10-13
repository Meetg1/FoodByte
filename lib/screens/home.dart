import 'package:flutter/material.dart';
import 'package:foodbyte/screens/menu_page.dart';
import 'package:foodbyte/screens/profile_page.dart';
import 'package:foodbyte/screens/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [MenuPage(), CartPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(child: _pages.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedLabelStyle: TextStyle(
            fontFamily: 'Segoe UI',
            fontSize: 20,
            color: const Color(0xff00152D),
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
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xffEE7700),
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
