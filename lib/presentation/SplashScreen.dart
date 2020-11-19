import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/splash_logo.svg"),
              Container(
                margin: EdgeInsets.only(top: 8),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: Center(
                  child: Text(
                    "Fruit Hub",
                    style: TextStyle(
                        fontFamily: 'Bad_Script',
                        color: Colors.white,
                        fontSize: 24),
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
