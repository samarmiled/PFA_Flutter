import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.black));
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/welcome.png"),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.1),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'THE BEST CUSTOMER SERVICE IS WHAT WE ASSURE.',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 50.0),
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'WE CARE FOR YOUR PRECIOUS TIME.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 171, 165, 165),
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0),
                ),
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 80.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  color: Theme.of(context).accentColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  color: Theme.of(context).buttonColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/icons/facebook.png'),
                        width: 30.0,
                        height: 30.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Connect with facebook',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
