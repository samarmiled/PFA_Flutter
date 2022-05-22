import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0, top: 10.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 75,
                width: 45,
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Color(0xFFD3D3D3)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.keyboard_arrow_up,
                          color: Color(0xFFD3D3D3),
                        )),
                    Text(
                      "0",
                      style: TextStyle(fontSize: 18.0, color: Colors.black),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xFFD3D3D3),
                        ))
                  ],
                ),
              ),
              SizedBox(width: 20.0),
              Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/burger.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(35.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 5.0,
                        offset: Offset(0.0, 5.0),
                      )
                    ]),
              ),
              SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Burger",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "14.0",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 140, 0, 1.0),
                        fontSize: 16.0),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 60.0, top: 2),
                child: GestureDetector(
                  onTap: () {},
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.cancel,
                        color: Colors.grey,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
