import 'package:application/src/colors/colors.dart';
import 'package:application/src/features/presentation/widgets/back_button.dart';
import 'package:application/src/features/presentation/widgets/categorie_card.dart';
import 'package:flutter/material.dart';

class CategorieDetailPage extends StatelessWidget {
  const CategorieDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/pizzarestaurants.jpg')),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 1.3),
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Center(
                    child: Text(
                      'Pizza \nRestaurants',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.white);
            }),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.symmetric(vertical: 25.0),
                    child: Text(
                      '4 places',
                      style: TextStyle(
                          color: Color.fromARGB(255, 143, 149, 164),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                  ),
                  Column(
                    children: [
                      categorieCard(
                        image: AssetImage(
                          'assets/images/crispy.jpg',
                        ),
                        title: "The crispy               ",
                        subtitle: "rue des roses côté epi business school  ",
                        review: "5",
                        ratings: "(113 ratings)",
                        buttonText: 'Show',
                        hasActionButton: true,
                        isFavourite: true,
                      ),
                      categorieCard(
                        image: AssetImage(
                          'assets/images/naploi.jpg',
                        ),
                        title: "Napoli Pizzeria        ",
                        subtitle: "A coté de ZEN sahloul, 4050 Sousse ",
                        review: "4.4",
                        ratings: "(7 ratings)",
                        buttonText: 'Show',
                        hasActionButton: true,
                        isFavourite: false,
                      ),
                      categorieCard(
                          image: AssetImage(
                            'assets/images/pizzeriasan.jpg',
                          ),
                          title: "Pizzeria san marino",
                          subtitle: " Avenue la Perle du Sahel, حمام سوسة ",
                          review: "3.5",
                          ratings: "(50 ratings)",
                          buttonText: 'Show',
                          hasActionButton: true,
                          isFavourite: false),
                      Container(
                        margin: EdgeInsets.only(
                            top: 10.0, right: 0.0, left: 1.0, bottom: 0.0),
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
                                image: AssetImage(
                                  'assets/images/papillon.jpg',
                                ),
                                width: 80.0,
                                height: 80.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 7.0),
                                        child: Text(
                                          "Papillon pizza \nby chef sousse         ",
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
                                            color: rose,
                                          ))
                                    ],
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(bottom: 5.0),
                                    child: Text(
                                      "4051 Rue des Palmiers, Sousse ",
                                      style: TextStyle(
                                          color: gris,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w500),
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
                                        "5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13.0),
                                      ),
                                      Text(
                                        "(130 ratings)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: gris,
                                            fontSize: 13.0),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        width: 90.0,
                                        height: 25.0,
                                        child: RaisedButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, "restaurant-detail");
                                          },
                                          elevation: 0.5,
                                          shape: StadiumBorder(),
                                          color:
                                              Color.fromRGBO(255, 140, 0, 1.0),
                                          textColor: Colors.white,
                                          child: Text(
                                            "Show",
                                            style: TextStyle(
                                                fontSize: 11.0,
                                                color: Colors.white),
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
                      ),
                    ],
                  )
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
