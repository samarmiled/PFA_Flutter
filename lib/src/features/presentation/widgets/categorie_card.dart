import 'package:application/src/colors/color.dart';
import 'package:application/src/colors/colors.dart';
import 'package:flutter/material.dart';

Widget categorieCard({
  BuildContext? context,
  double marginTop = 10.0,
  double marginRight = 0.0,
  double marginBottom = 0.0,
  double marginLeft = 1.0,
  required ImageProvider<Object> image,
  required String title,
  required String subtitle,
  required String review,
  required String ratings,
  String buttonText = '',
  bool? hasActionButton,
  bool isFavourite = true,
}) {
  return Container(
    margin: EdgeInsets.only(
        top: marginTop,
        right: marginRight,
        left: marginLeft,
        bottom: marginBottom),
    padding: EdgeInsets.only(left: 10, top: 10, bottom: 20),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              offset: Offset(0.5, 0.0),
              blurRadius: 10.0)
        ]),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: image,
            width: 80.0,
            height: 80.0,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark,
                        size: 25.0,
                        color: isFavourite ? rose : Colors.grey[300],
                      ))
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  subtitle,
                  style: TextStyle(
                      color: gris, fontSize: 13.0, fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: amarillo,
                    size: 16.0,
                  ),
                  Text(
                    review,
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13.0),
                  ),
                  Text(
                    ratings,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: gris,
                        fontSize: 13.0),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    width: 90.0,
                    height: 25.0,
                    child: RaisedButton(
                      onPressed: () {},
                      elevation: 0.5,
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(255, 140, 0, 1.0),
                      textColor: Colors.white,
                      child: Text(
                        buttonText,
                        style: TextStyle(fontSize: 11.0, color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
