import 'package:flutter/material.dart';
import 'package:sample_app/presentation/SplashScreen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      theme: ThemeData(fontFamily: 'Brandon'),
      home: SplashScreen()
  );
}
