// ignore_for_file: unused_local_variable, deprecated_member_use

import 'dart:convert';

import 'package:application/src/colors/colors.dart';
import 'package:application/src/features/presentation/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _fname = TextEditingController();
  TextEditingController _lname = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'Create an account ',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0),
                    ),
                    _firstnameInput(context),
                    _lastnameInput(context),
                    _phoneInput(context),
                    _emailInput(context),
                    _passwordInput(context),
                    _registerButton(context),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 30.0),
                      child: Text(
                        'By clicking Sign up you agree to the following Terms and Conditions without reservation',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account ?",
                            style: TextStyle(
                                color: gris,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.0),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'login');
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                'Login',
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
                )),
          ),
        ],
      ),
    );
  }

  Widget _firstnameInput(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextFormField(
        controller: _fname,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'FirstName',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }

  Widget _lastnameInput(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextFormField(
        controller: _lname,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'LastName',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }

  Widget _phoneInput(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextFormField(
        controller: _phone,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Contact Number',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }

  Widget _emailInput(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextFormField(
        controller: _email,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Email Adress',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }

  Widget _passwordInput(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextFormField(
        controller: _password,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }

  Widget _registerButton(BuildContext context) {
    return Container(
      width: 370.0,
      height: 45.0,
      margin: EdgeInsets.only(top: 40.0),
      child: RaisedButton(
        onPressed: () {
          RegisterUser();
        },
        color: Theme.of(context).accentColor,
        child: Text(
          "Sign up",
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  Future RegisterUser() async {
    var ApiURL = "http://192.168.1.10/php-auth-api-master/register.php";
    Map<String, String> headers = {'Content-Type': 'application/json'};
    final mapdata = jsonEncode({
      'fname': _fname.text,
      "lname": _lname.text,
      "phone": _phone.text,
      "email": _email.text,
      "password": _password.text
    });
    print("JSON DATA : ${mapdata}");

    var response = await http.post(
      Uri.parse(ApiURL),
      headers: headers,
      body: mapdata,
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      Fluttertoast.showToast(
          msg: "Registered successfully !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.black,
          textColor: Colors.white // Also possible "TOP" and "CENTER"
          );
      Navigator.pushNamed(context, "root_app");
    } else
      Fluttertoast.showToast(
          msg: "Try Again !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.black,
          textColor: Colors.white // Also possible "TOP" and "CENTER"
          );
  }
}
