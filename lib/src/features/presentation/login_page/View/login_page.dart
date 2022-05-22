// ignore_for_file: deprecated_member_use

import 'package:application/src/colors/colors.dart';
import 'package:application/src/features/presentation/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.black));
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Stack(
              children: [
                Image(
                    width: double.infinity,
                    height: 290.0,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/login.png")),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: backButton(context, Colors.white),
                )
              ],
            ),
            Transform.translate(
              offset: Offset(0.0, -20.0),
              child: Container(
                width: double.infinity,
                height: 600.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text(" Welcome To app",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0)),
                        Text(" Login to your account",
                            style: TextStyle(
                                color: gris,
                                fontWeight: FontWeight.normal,
                                fontSize: 15.0)),
                        _emailInput(),
                        _passwordInput(),
                        _buttonLogin(context),
                        Container(
                          margin: EdgeInsets.only(top: 10.0, left: 160.0),
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 121, 118, 118),
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 80.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                    color: gris,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, 'register');
                                },
                                child: Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }

  Widget _emailInput() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.only(left: 20.0, top: 20.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(25.0)),
      child: TextFormField(
        controller: _email,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }

  Widget _passwordInput() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 15.0),
      padding: EdgeInsets.only(left: 20.0, top: 20.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(25.0)),
      child: TextFormField(
        controller: _password,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }

  Widget _buttonLogin(BuildContext context) {
    return Container(
      width: 350.0,
      height: 45.0,
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () {
          LoginUser();
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        color: Theme.of(context).accentColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Log in',
              style: TextStyle(color: Colors.white, fontSize: 17.0),
            )
          ],
        ),
      ),
    );
  }

  Future LoginUser() async {
    //var ApiURL = "http://192.168.1.10/php-auth-api-master/login.php";

    String email1 = "samarmiled2.com";
    String password1 = "samar1234";
    if ((email1 != _email.text) && (password1 != _password.text)) {
      Fluttertoast.showToast(
          msg: "Please Enter a valid credentials",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.black,
          textColor: Colors.white // Also possible "TOP" and "CENTER"
          );
    } else {
      print("succès");
      Fluttertoast.showToast(
          msg: "Login Successfully!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.black,
          textColor: Colors.white // Also possible "TOP" and "CENTER"
          );
      Navigator.pushNamed(context, "root_app");
    }
  }
}
