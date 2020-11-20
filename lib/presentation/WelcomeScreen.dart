import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_views/CustomButton.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(35, 120, 35, 40),
              color: Colors.orangeAccent,
              child: Image.asset("assets/icons/ic_welcome.png"),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 60, horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Get The Freshest Fruit Salad Combo",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'BrandonGrotesque',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "We deliver the best and freshest fruit salad in town. Order for a combo today!!!")
                      ],
                    ),
                  ),
                  Center(
                      child: SmoothButton(
                    "Let’s Continue",
                    backgroundColor: Colors.orangeAccent,
                    onPressed: () {},
                  ))
                ],
              ),
            )
          ],
        ),
      );
}
