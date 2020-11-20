import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_app/presentation/SplashScreen.dart';
import 'package:sample_app/presentation/WelcomeScreen.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (BuildContext context) => SplashScreen(),
      '/welcome_screen': (BuildContext context) => WelcomeScreen()
    },
    theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Brandon'),
  ));
}
