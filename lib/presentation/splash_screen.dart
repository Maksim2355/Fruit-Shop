import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_app/values/dimens.dart';
import 'package:sample_app/values/fonts.dart';
import 'package:sample_app/values/icon.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    waitAndStartApp(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ValueIconsAsset.icSplashLogoSvg),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: ValueDimens.paddingVerticalAppName,
                  horizontal: ValueDimens.paddingHorizontalAppName),
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Text(
                "Fruit Hub",
                style: TextStyle(
                    fontFamily: ValueFonts.badScript, color: Colors.white, fontSize: 24),
              ),
            )
          ],
        ),
      ),
    );
  }

  void waitAndStartApp(BuildContext context) {
    Future.delayed(Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, '/welcome_screen'));
  }
}
