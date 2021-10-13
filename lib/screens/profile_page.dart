import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // const profilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
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
                  "Rohit Sharma",
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
                  "99999 88888",
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
                  "Rohitsharma@gmail.com",
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
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: Color(0xffEE7700),
                    width: 0.8,
                  )),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image(
                          width: 65,
                          image: AssetImage('assets/images/logo_login.jpg'),
                        ),
                        Text(
                          "Order ID 1921",
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
                    Text(
                      '2 x Veg Triple Schezwan Rice, 1 x Chilly Garlic Noodles',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'ORDERED ON',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '26 Jul 2021 at 6:30 pm',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
