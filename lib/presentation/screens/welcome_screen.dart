import 'package:flutter/material.dart';
import 'package:sample_app/values/dimens.dart';
import 'package:sample_app/values/fonts.dart';
import 'package:sample_app/values/icon.dart';
import 'package:sample_app/values/string.dart';

import 'package:sample_app/presentation/custom_views/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(ValueDimens.largePadding),
                color: Colors.orangeAccent,
                child: Image.asset(ValueIconsAsset.icWelcomeLogoPng),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: ValueDimens.largeMargin,
                  right: ValueDimens.largeMargin,
                  top: 60,
                  bottom: 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ValueStrings.titleWelcomeScreenText,
                          style: TextStyle(
                              fontSize: ValueDimens.largeTextSize,
                              fontFamily: ValueFonts.brandonGrotesque,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(ValueStrings.descriptionWelcomeScreenText)
                      ],
                    ),
                  ),
                  SmoothButton(
                    ValueStrings.continueWelcomeScreenBtn,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/authentication_screen');
                    },
                  )
                ],
              ),
            )
          ],
        ),
      );
}
