import 'package:flutter/material.dart';
import 'package:kilimo/pages/splash_screen_1.dart';
import 'package:kilimo/pages/splash_screen_2.dart';
import 'package:kilimo/pages/splash_screen_3.dart';
import 'package:kilimo/pages/splash_screen_4.dart';
import 'package:kilimo/pages/user_type.dart';
import 'package:kilimo/pages/new_address.dart';
import 'package:kilimo/pages/location_map.dart';
import 'package:kilimo/pages/home.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen1(),
    routes: {
      '/splash_screen_1':(context) => SplashScreen1(),
      '/splash_screen_2':(context) => SplashScreen2(),
      '/splash_screen_3':(context) => SplashScreen3(),
      '/splash_screen_4':(context) => SplashScreen4(),
      '/user_type':(context) => UserType(),
      '/new_address':(context) => NewAddress(),
      '/location_map':(context) => LocationMap(),
      '/home':(context) => Home(),
    },
  ));
}
