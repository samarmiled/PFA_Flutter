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
                      image: AssetImage('assets/images/login.png')),
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
                      '128 places',
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
                            'assets/images/welcome.png',
                          ),
                          title: "Pizza Restaurant 1",
                          subtitle: "87 botsford ",
                          review: "4.8",
                          ratings: "(233 ratings)",
                          buttonText: 'Show',
                          hasActionButton: true,
                          isFavourite: false),
                      categorieCard(
                          image: AssetImage(
                            'assets/images/welcome.png',
                          ),
                          title: "Pizza Restaurant 1",
                          subtitle: "87 botsford ",
                          review: "4.8",
                          ratings: "(233 ratings)",
                          buttonText: 'Show',
                          hasActionButton: true),
                      categorieCard(
                          image: AssetImage(
                            'assets/images/welcome.png',
                          ),
                          title: "Pizza Restaurant 1",
                          subtitle: "87 botsford ",
                          review: "4.8",
                          ratings: "(233 ratings)",
                          buttonText: 'Show',
                          hasActionButton: true,
                          isFavourite: false),
                      categorieCard(
                          image: AssetImage(
                            'assets/images/welcome.png',
                          ),
                          title: "Pizza Restaurant 1",
                          subtitle: "87 botsford ",
                          review: "4.8",
                          ratings: "(233 ratings)",
                          buttonText: 'Show',
                          hasActionButton: true),
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
