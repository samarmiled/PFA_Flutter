import 'package:application/src/features/presentation/categories_details/View/categorie_detail.dart';
import 'package:application/src/features/presentation/home_page/View/home.dart';
import 'package:application/src/features/presentation/login_page/View/login_page.dart';
import 'package:application/src/features/presentation/order_page/View/order_page.dart';
import 'package:application/src/features/presentation/profile_page/View/profile_page.dart';
import 'package:application/src/features/presentation/register_page/View/register_page.dart';
import 'package:application/src/features/presentation/restaurant/View/restaurant.dart';
import 'package:application/src/features/presentation/restaurants_details/View/restaurant_detail.dart';
import 'package:application/src/features/presentation/root_app.dart';
import 'package:application/src/features/presentation/welcome_page/view/welcome_page.dart';
import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'register': (BuildContext context) => RegisterPage(),
  'root_app': (BuildContext context) => RootApp(),
  'home': (BuildContext context) => HomePage(),
  'categorie-detail': (BuildContext context) => CategorieDetailPage(),
  'restaurant-detail': (BuildContext context) => RestaurantDetailPage(),
  'profile-page': (BuildContext context) => ProfilePage(),
  'restaurant': (BuildContext context) => RestaurantPage()
};
