import 'package:flutter/material.dart';

const String loginPage = '/login';
const String homePage = '/home';
const String regeistrationPage = '/registration';

Route<dynamic> routeController(RouteSettings settings) {
  switch (settings.name) {
    // case loginPage:
    //   return MaterialPageRoute(builder: (context) => EmailLoginScreen());
    // case homePage:
    //   return MaterialPageRoute(builder: (context) => LandingScreen());
    // case regeistrationPage:
    //   return MaterialPageRoute(builder: (context) => null);
    default:
      throw ('This route name does not exit');
  }
}
