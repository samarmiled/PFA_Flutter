// ignore_for_file: deprecated_member_use, unused_element

import 'package:application/src/colors/colors.dart';
import 'package:application/src/features/presentation/widgets/back_button.dart';

import 'package:flutter/material.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Color.fromRGBO(255, 140, 0, 1.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          label: Text(
            "Order ",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),
          )),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color.fromRGBO(255, 140, 0, 1.0),
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(children: [
                Image(
                  image: AssetImage("assets/images/thediesel.png"),
                  width: double.infinity,
                  height: 350,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1.5)),
                  width: double.infinity,
                  height: 350,
                ),
                Wrap(
                  children: [
                    _promoButton(),
                    _infoPlace(),
                    _infoPlaceStats(),
                    _offerBanner()
                  ],
                )
              ]),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.white);
            }),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Color.fromARGB(255, 197, 196, 196),
                    size: 30,
                  ))
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate(
                  [_header(), _menuList(context), SizedBox(height: 40)]))
        ],
      ),
    );
  }

  Widget _promoButton() {
    return Container(
      margin: EdgeInsets.only(top: 121, left: 30, right: 15),
      width: double.infinity,
      height: 25,
      child: Row(
        children: [
          RaisedButton(
            onPressed: () {},
            elevation: 0.5,
            shape: StadiumBorder(),
            color: Color.fromRGBO(255, 140, 0, 1.0),
            child: Text(
              'Free Delivery',
              style: TextStyle(fontSize: 12.0, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Widget _infoPlace() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          margin: EdgeInsets.symmetric(vertical: 7.0),
          child: Text(
            'The DIESEL Original Cofee Shop',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28.0),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Icon(Icons.location_on, color: gris),
              Text(
                "Boulevard d'Alexandrie 4011 Hammam Sousse",
                style: TextStyle(
                    color: gris, fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _infoPlaceStats() {
    return Container(
      margin: EdgeInsets.only(top: 26.0),
      padding: EdgeInsets.symmetric(horizontal: 40),
      height: 70.0,
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: Color.fromARGB(255, 202, 201, 201)),
              bottom: BorderSide(color: Color.fromARGB(255, 202, 201, 201)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.star, color: Colors.white, size: 19.0),
                  Text(
                    '4.2',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  )
                ],
              ),
              Text(
                "706 Ratings ",
                style: TextStyle(
                    color: gris, fontWeight: FontWeight.w500, fontSize: 15.0),
              )
            ],
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Colors.white))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.bookmark, color: Colors.white, size: 19.0),
                  Text(
                    '137k',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  )
                ],
              ),
              Text(
                "Favourites",
                style: TextStyle(
                    color: gris, fontWeight: FontWeight.w500, fontSize: 15.0),
              )
            ],
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Colors.white))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.photo, color: Colors.white, size: 19.0),
                  Text(
                    '23',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  )
                ],
              ),
              Text(
                "Photos",
                style: TextStyle(
                    color: gris, fontWeight: FontWeight.w500, fontSize: 15.0),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _offerBanner() {
    return Container(
      color: Color.fromRGBO(255, 237, 214, 1.0),
      padding: EdgeInsets.all(20),
      height: 95.0,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New! Try Pickup',
                style: TextStyle(
                    color: Color.fromRGBO(255, 140, 0, 1.0),
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
              Text(
                'Pickup on your time, Your order is \n ready when you are',
                style: TextStyle(
                    color: Color.fromARGB(255, 85, 82, 108),
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _header({text: String}) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "Full Menu",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
        ));
  }

  Widget _menuList(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        children: [
          _menuItem(context, "Pizza", "4"),
          _menuItem(context, "Salades", "1"),
          _menuItem(context, "Sandwitchs", "1"),
          _menuItem(context, "Drinks", "1"),
          _menuItem(context, "Desserts", "1"),
        ],
      ),
    );
  }

  Widget _menuItem(BuildContext context, String text, String itemCount) {
    return Container(
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: gris))),
      child: Column(
        children: [
          ListTile(
            title: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 17.0),
            ),
            trailing: Text(
              itemCount,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 17.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sliderCards() {
    return Container(
      height: 210.0,
      padding: EdgeInsets.only(left: 20),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _card();
          }),
    );
  }

  Widget _card() {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: NetworkImage(
                  "https://dam.savencia.com/api/wedia/dam/transform/fix635d9eidk6rrwseqxx1hm4hxuee5jn54fmie/800?t=resize&width=800"),
              width: 200,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Pizza",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              )),
          Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "13dt",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: gris, fontSize: 15.0),
              )),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Order",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color.fromRGBO(255, 140, 0, 1.0)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 80),
                child: Image(
                    width: 20.0,
                    height: 20.0,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/add.png")),
              )
            ],
          )
        ],
      ),
    );
  }
}
