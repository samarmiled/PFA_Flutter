import 'package:application/src/colors/color.dart';
import 'package:application/src/colors/colors.dart';
import 'package:application/src/features/presentation/widgets/categorie_card.dart';
import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  FavouritePage({Key? key}) : super(key: key);

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Text(''),
            backgroundColor: Colors.white,
            title: Container(
              margin: EdgeInsets.only(left: 80),
              child: Text(
                'My Favourites',
                style: TextStyle(
                    color: Color.fromARGB(255, 11, 17, 26),
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  categorieCard(
                      image: AssetImage(
                        'assets/images/thediesel.png',
                      ),
                      title: "The DIESEL",
                      subtitle: "4011 Hammam Sousse",
                      review: "4.0",
                      ratings: "(233 ratings)",
                      buttonText: 'Show',
                      hasActionButton: true,
                      isFavourite: true),
                  categorieCard(
                      image: AssetImage(
                        'assets/images/crispy.jpg',
                      ),
                      title: "The crispy",
                      subtitle: "rue des roses côté epi business school ",
                      review: "5",
                      ratings: "(113 ratings)",
                      buttonText: 'Show',
                      hasActionButton: true,
                      isFavourite: true),
                  categorieCard(
                      image: AssetImage(
                        'assets/images/papillon.jpg',
                      ),
                      title: "Papillon pizza \nby chef sousse",
                      subtitle: "4051 Rue des Palmiers, Sousse ",
                      review: "5",
                      ratings: "(130 ratings)",
                      buttonText: 'Show',
                      hasActionButton: true,
                      isFavourite: true),
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
