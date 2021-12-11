import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:foodbyte/screens/home.dart';
import 'package:foodbyte/screens/signup_page.dart';
import 'package:foodbyte/services/auth.dart';
import 'package:foodbyte/shared/loading.dart';
import 'package:foodbyte/screens/google_login.dart';

class ResetScreen extends StatefulWidget {

  //final Function toggleView;

  //ResetScreen({required this.toggleView});

  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String error = '';
  bool loading = false;


  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Segoe UI';
    double defaultFontSize = 17;
    double defaultIconSize = 20;

    return loading
        ? Loading()
        : Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding:
          EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
          width: double.infinity,
          height: double.infinity,
          color: Colors.white70,
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 9,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 230,
                          height: 100,
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/images/logo_login.jpg",
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('FoodByte',
                            style: TextStyle(
                              fontFamily: 'Tempus Sans ITC',
                              fontSize: 40.0,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          showCursor: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xFF666666),
                              size: defaultIconSize,
                            ),
                            fillColor: Color(0xFFF2F3F5),
                            hintStyle: TextStyle(
                                color: Color(0xFF666666),
                                fontFamily: defaultFontFamily,
                                fontSize: defaultFontSize),
                            hintText: "Email Id",
                          ),
                          validator: (val) => EmailValidator.validate(val!)
                              ? null
                              : "Please enter a valid email",
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          //margin: EdgeInsets.symmetric(horizontal: 40.0),
                          height: 50.0,
                          width: double.infinity,
                          decoration: new BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.redAccent,
                              ),
                              BoxShadow(
                                color: Colors.redAccent,
                              ),
                            ],
                          ),
                          child: MaterialButton(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.redAccent,
                              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 42.0),
                                child: Text(
                                  "Reset Password",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      fontFamily: "WorkSansBold"),
                                ),
                              ),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    loading = true;
                                  });

                                  dynamic result = await _auth.sendPasswordResetEmail(email);
                                  Navigator.of(context).pop();

                                }
                              }),
                        ),
                        Text(
                          error,
                          style:
                          TextStyle(color: Colors.red, fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}