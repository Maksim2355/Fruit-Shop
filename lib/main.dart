import 'package:flutter/material.dart';
import 'package:sample_app/managers/UiManagers.dart';
import 'package:sample_app/presentation/authentication_screen.dart';
import 'package:sample_app/presentation/splash_screen.dart';
import 'package:sample_app/presentation/welcome_screen.dart';
import 'package:sample_app/values/fonts.dart';

void main() {
  //Я вам запрешаю переворачивать экран
  OrientationManager.disableLandscapeOrientation();
  StatusBarManager.setTransparentStatusBar();
  runApp(MaterialApp(
    routes: {
      '/': (BuildContext context) => SplashScreen(),
      '/welcome_screen': (BuildContext context) => WelcomeScreen(),
      '/authentication_screen': (BuildContext context) => AuthenticationScreen()
    },
    theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: ValueFonts.brandon),
  ));
}
