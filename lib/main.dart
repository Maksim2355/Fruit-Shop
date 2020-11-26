import 'package:flutter/material.dart';
import 'package:sample_app/managers/ui_managers.dart';
import 'package:sample_app/presentation/screens/home_screen.dart';
import 'package:sample_app/presentation/screens/authentication_screen.dart';
import 'package:sample_app/presentation/screens/splash_screen.dart';
import 'package:sample_app/presentation/screens/welcome_screen.dart';
import 'package:sample_app/values/fonts.dart';

void main() {
  //Я вам запрешаю переворачивать экран
  OrientationManager.disableLandscapeOrientation();
  StatusBarManager.setTransparentStatusBar();
  runApp(MaterialApp(
    routes: {
      '/': (BuildContext context) => SplashScreen(),
      '/welcome_screen': (BuildContext context) => WelcomeScreen(),
      '/authentication_screen': (BuildContext context) => AuthenticationScreen(),
      '/home_screen': (BuildContext context) => HomeScreen()
    },
    theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: ValueFonts.brandon),
  ));
}
