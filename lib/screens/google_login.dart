import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodbyte/screens/home.dart';
import 'package:foodbyte/screens/signup_page.dart';
import 'package:foodbyte/services/auth.dart';
import 'package:foodbyte/shared/loading.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class GoogleLogin extends StatefulWidget {
  GoogleLogin({Key? key}) : super(key: key);

  @override
  _GoogleLoginState createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin>{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0),
      width: double.infinity,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: MaterialButton(
          padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 3.0),
          color: Colors.white,
          onPressed: () {},
          child: new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Image.asset(
                'assets/images/google_logo.png',
                height: 48.0,
              ),
              new Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: new Text(
                    "Sign in with Google",
                    style: TextStyle(
                      fontFamily: 'defaultFontFamily',
                      color: Color(0xFF666666),
                      fontSize: 20.0,
                    ),
                  )),
            ],
          )),
    );
  }
}