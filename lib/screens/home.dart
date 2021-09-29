import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({ Key? key }) : super(key: key);

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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 28.0, 50.0, 15.0),
                child: Text(
                  "What would you like to eat?",
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 24,
                    color: const Color(0xff707070),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                                width: 60.0,
                                height: 60.0,
                                child:
                                    Image.asset("assets/images/pizzahome.jpg")),
                            SizedBox(height: 6),
                            Text(
                              "Pizzas",
                              style: TextStyle(
                                fontFamily: 'Georgia',
                                fontSize: 15,
                                color: const Color(0xff707070),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                width: 60.0,
                                height: 60.0,
                                child:
                                    Image.asset("assets/images/pizzahome.jpg")),
                            SizedBox(height: 6),
                            Text(
                              "Pizzas",
                              style: TextStyle(
                                fontFamily: 'Georgia',
                                fontSize: 15,
                                color: const Color(0xff707070),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                width: 60.0,
                                height: 60.0,
                                child:
                                    Image.asset("assets/images/pizzahome.jpg")),
                            SizedBox(height: 6),
                            Text(
                              "Pizzas",
                              style: TextStyle(
                                fontFamily: 'Georgia',
                                fontSize: 15,
                                color: const Color(0xff707070),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                width: 60.0,
                                height: 60.0,
                                child:
                                    Image.asset("assets/images/pizzahome.jpg")),
                            SizedBox(height: 6),
                            Text(
                              "Pizzas",
                              style: TextStyle(
                                fontFamily: 'Georgia',
                                fontSize: 15,
                                color: const Color(0xff707070),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 20.0, 50.0, 10.0),
                    child: Text(
                      'Popular Foods',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 24,
                        color: const Color(0xff707070),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(16.0, 16.0, 90.0, 5.0),
                        height: 140.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(150.0, 8.0, 20.0, 0.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "FoodByte Special Burger",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "FoodByte Special Burger with extra cheese",
                                style: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '₹175/-',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Container(
                                    width: 55,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        border: Border.all(
                                          color: Color(0xffEE7700),
                                          width: 0.8,
                                        )),
                                    // color: Colors.black,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'ADD',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color(0xffEE7700)
                                            // fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16.0,
                        top: 16.0,
                        bottom: 3.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          child: Image(
                            width: 140.0,
                            image: AssetImage(
                              'assets/images/burger2.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 25.0, 50.0, 10.0),
                    child: Text(
                      "Today's Special",
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 24,
                        color: const Color(0xff707070),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(16.0, 16.0, 90.0, 5.0),
                        height: 140.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(150.0, 8.0, 20.0, 0.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "FoodByte Special Burger",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "FoodByte Special Burger with extra cheese",
                                style: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '₹175/-',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Container(
                                    width: 55,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        border: Border.all(
                                          color: Color(0xffEE7700),
                                          width: 0.8,
                                        )),
                                    // color: Colors.black,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'ADD',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color(0xffEE7700)
                                            // fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16.0,
                        top: 16.0,
                        bottom: 3.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          child: Image(
                            width: 140.0,
                            image: AssetImage(
                              'assets/images/burger2.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
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
            // currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xffEE7700),
            // onTap: _onItemTapped,
          ),
        );
  }
}