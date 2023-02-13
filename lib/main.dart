import 'package:flutter/material.dart';
import 'package:my_smart_city/AboutUs.dart';
import 'package:my_smart_city/HomePage.dart';
import 'package:my_smart_city/Profile.dart';
import 'package:my_smart_city/SignUp.dart';
import 'package:my_smart_city/WelcomePage.dart';
import 'package:my_smart_city/login.dart';
import 'package:my_smart_city/recipe.dart';
import 'package:my_smart_city/routes.dart';
import 'package:my_smart_city/excercise.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Home Workout',
        theme: ThemeData(
          primaryColor: Color(0xFFAFDBDE),
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.welcome,
        routes: {
          Routes.login: (context) => LoginPage(),
          Routes.homepage: (context) => HomePage(),
          Routes.signup: (context) => Signup(),
          Routes.welcome: (context) => WelcomePage(),
          Routes.profile: (context) => Profile(),
          Routes.aboutus: (context) => AboutUs(),
          Routes.recipes: (context) => Recipes(),
          Routes.exercise:(context) => Exercise(),
        });
  }
}
