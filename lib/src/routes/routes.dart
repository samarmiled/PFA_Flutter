import 'package:application/src/pages/login_page.dart';
import 'package:application/src/pages/register_page.dart';
import 'package:application/src/pages/welcome_page.dart';
import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'register': (BuildContext context) => RegisterPage()
};
