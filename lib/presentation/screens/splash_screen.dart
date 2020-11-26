import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_app/values/dimens.dart';
import 'package:sample_app/values/fonts.dart';
import 'package:sample_app/values/icon.dart';
import 'package:sample_app/values/key.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  void waitAndStartApp(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isUserAuth = prefs.containsKey(KeySharedPreferences.KEY_USERNAME);
    Future.delayed(Duration(seconds: 1), () =>{
      if(isUserAuth){
        Navigator.pushReplacementNamed(context, '/home_screen')
      }else{
        Navigator.pushReplacementNamed(context, '/welcome_screen')
      }
    });

  }

}
