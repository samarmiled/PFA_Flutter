import 'package:application/src/colors/color.dart';
import 'package:application/src/colors/colors.dart';
import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPgae,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Your Cart",
          style: TextStyle(color: Color.fromRGBO(10, 31, 68, 1.0)),
        ),
        centerTitle: true,
        elevation: 0.0,
        //automaticallyImplyLeading: false,
      ),
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                width: 216,
                height: 216,
                image: AssetImage("assets/images/empty.png")),
            Text(
              "Cart Empty",
              style: TextStyle(
                  color: gris, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                "Good food is always cooking! Go ahead, order some yummy items from the menu",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: gris, fontSize: 17, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      )),
    );
  }
}
