import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:foodbyte/screens/home.dart';
import 'package:foodbyte/services/auth.dart';
import 'package:foodbyte/shared/loading.dart';
import 'package:foodbyte/screens/google_login.dart';

class SignUpPage extends StatefulWidget {
  // const SignUpPage({Key? key}) : super(key: key);

  final Function toggleView;

  SignUpPage({required this.toggleView});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  String name = '';
  String email = '';
  String phone = '';
  String password = '';
  String confirmPassword = '';
  String error = '';
  bool loading = false;
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = false;
  }

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
                        flex: 15,
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
                                    Icons.person,
                                    color: Color(0xFF666666),
                                    size: defaultIconSize,
                                  ),
                                  fillColor: Color(0xFFF2F3F5),
                                  hintStyle: TextStyle(
                                      color: Color(0xFF666666),
                                      fontFamily: defaultFontFamily,
                                      fontSize: defaultFontSize),
                                  hintText: "Full Name",
                                ),
                                validator: (val) => val!.length == 0
                                    ? 'Name cannot be empty'
                                    : null,
                                onChanged: (val) {
                                  setState(() {
                                    name = val;
                                  });
                                },
                              ),
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
                                validator: (val) =>
                                    EmailValidator.validate(val!)
                                        ? null
                                        : "Please enter a valid email",
                                onChanged: (val) {
                                  setState(() {
                                    email = val;
                                  });
                                },
                              ),
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
                                    Icons.phone,
                                    color: Color(0xFF666666),
                                    size: defaultIconSize,
                                  ),
                                  fillColor: Color(0xFFF2F3F5),
                                  hintStyle: TextStyle(
                                      color: Color(0xFF666666),
                                      fontFamily: defaultFontFamily,
                                      fontSize: defaultFontSize),
                                  hintText: "Phone Number",
                                ),
                                validator: (val) => val!.length != 10
                                    ? 'Mobile No. is invalid'
                                    : null,
                                onChanged: (val) {
                                  setState(() {
                                    phone = val;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                showCursor: true,
                                obscureText: !_passwordVisible,
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
                                    Icons.lock_outline,
                                    color: Color(0xFF666666),
                                    size: defaultIconSize,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Color(0xFF666666),
                                      size: defaultIconSize,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                  fillColor: Color(0xFFF2F3F5),
                                  hintStyle: TextStyle(
                                    color: Color(0xFF666666),
                                    fontFamily: defaultFontFamily,
                                    fontSize: defaultFontSize,
                                  ),
                                  hintText: "Password",
                                ),
                                controller: _pass,
                                validator: (val) {
                                  if (val!.isEmpty) return 'Empty';
                                  if (val.length < 6)
                                    return 'Password should be atleast 6 characters';
                                  return null;
                                },
                                onChanged: (val) {
                                  setState(() {
                                    password = val;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                showCursor: true,
                                obscureText: !_passwordVisible,
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
                                    Icons.lock_outline,
                                    color: Color(0xFF666666),
                                    size: defaultIconSize,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Color(0xFF666666),
                                      size: defaultIconSize,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                  fillColor: Color(0xFFF2F3F5),
                                  hintStyle: TextStyle(
                                    color: Color(0xFF666666),
                                    fontFamily: defaultFontFamily,
                                    fontSize: defaultFontSize,
                                  ),
                                  hintText: "Confirm Password",
                                ),
                                controller: _confirmPass,
                                validator: (val) {
                                  if (val!.isEmpty) return 'Empty';

                                  if (val != _pass.text) return 'Not Match';
                                  return null;
                                },
                                onChanged: (val) {
                                  setState(() {
                                    confirmPassword = val;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 5,
                              ),

                              SizedBox(
                                height: 5,
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
                                  onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                      setState(() {
                                        loading = true;
                                      });
                                      dynamic result = await _auth
                                          .registerWithEmailAndPassword(
                                              email, password, name, phone);
                                      if (result == null) {
                                        setState(() {
                                          error = 'User Already exist';
                                          loading = false;
                                        });
                                      }
                                    }
                                  },
                                  //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 42.0),
                                    child: Text(
                                      "SIGN UP",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.0,
                                          fontFamily: "WorkSansBold"),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                error,
                                style: TextStyle(
                                    color: Colors.red, fontSize: 14.0),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Or',
                                style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontFamily: defaultFontFamily,
                                  fontSize: 17.0,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GoogleLogin()
                              //FacebookGoogleLogin()
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "Already have an account? ",
                                  style: TextStyle(
                                    color: Color(0xFF666666),
                                    fontFamily: defaultFontFamily,
                                    fontSize: defaultFontSize,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  widget.toggleView();
                                },
                                child: Container(
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontFamily: defaultFontFamily,
                                      fontSize: defaultFontSize,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}

class SignUpButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 40.0),
      height: 50.0,
      width: double.infinity,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
        onPressed: () => {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomePage()))
        },
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
          child: Text(
            "SIGN UP",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontFamily: "WorkSansBold"),
          ),
        ),
      ),
    );
  }
}
