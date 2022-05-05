import 'package:application/src/colors/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [_header(), _menu()],
      ),
    );
  }

  Widget _header() {
    return Container(
      height: 250,
      color: bgGrey,
      padding: EdgeInsets.all(40),
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/samar.png"),
            radius: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      "Samar Miled",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                      color: gris,
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: gris,
                          size: 20,
                        ),
                        Text(
                          "samarmiled2@gmail.com",
                          style: TextStyle(color: gris),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: gris,
                      size: 20,
                    ),
                    Text(
                      "Rue hannibal 5040 Monastir",
                      style: TextStyle(color: gris),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _menu() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(229, 70, 50, 1.0),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Image(
                image: AssetImage("assets/icons/bell.png"),
                width: 30,
                color: Colors.white,
                height: 30,
              ),
            ),
            title: Text(
              "Notifications",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  color: gris,
                )),
          ),
          ListTile(
            leading: Container(
              padding: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(116, 185, 236, 1.0),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Image(
                image: AssetImage("assets/icons/dollar.png"),
                width: 28,
                color: Colors.white,
                height: 28,
              ),
            ),
            title: Text(
              "Payement methods",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  color: gris,
                )),
          ),
          ListTile(
            leading: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(227, 147, 45, 1.0),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Image(
                image: AssetImage("assets/icons/discount.png"),
                width: 28,
                color: Colors.white,
                height: 28,
              ),
            ),
            title: Text(
              "My Promo code",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  color: gris,
                )),
          ),
          SizedBox(height: 15.0),
          ListTile(
            leading: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5.0)),
              child: Image(
                image: AssetImage("assets/icons/settings.png"),
                width: 29,
                color: Colors.white,
                height: 29,
              ),
            ),
            title: Text(
              "Settings",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  color: gris,
                )),
          ),
          ListTile(
            leading: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(101, 213, 99, 1.0),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Image(
                image: AssetImage("assets/icons/add-friends.png"),
                width: 22,
                color: Colors.white,
                height: 22,
              ),
            ),
            title: Text(
              "Invite Friends",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  color: gris,
                )),
          ),
          ListTile(
            leading: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(52, 96, 211, 1.0),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Image(
                image: AssetImage("assets/icons/about.png"),
                width: 22,
                color: Colors.white,
                height: 22,
              ),
            ),
            title: Text(
              "About us",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  color: gris,
                )),
          ),
          SizedBox(height: 10.0),
          ListTile(
            leading: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 199, 37, 1.0),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Image(
                image: AssetImage("assets/icons/logout.png"),
                width: 22,
                color: Colors.white,
                height: 22,
              ),
            ),
            title: Text(
              "Log out",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
