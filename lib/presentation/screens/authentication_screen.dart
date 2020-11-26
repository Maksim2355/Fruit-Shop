import 'package:flutter/material.dart';
import 'package:sample_app/presentation/custom_views/custom_button.dart';
import 'package:sample_app/presentation/custom_views/custom_text_fields.dart';
import 'package:sample_app/values/dimens.dart';
import 'package:sample_app/values/fonts.dart';
import 'package:sample_app/values/icon.dart';
import 'package:sample_app/values/key.dart';
import 'package:sample_app/values/string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationScreen extends StatelessWidget {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(ValueDimens.largePadding),
                    color: Colors.orangeAccent,
                    child: Image.asset(ValueIconsAsset.icAuthLogoPng))),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ValueDimens.largePadding, vertical: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      ValueStrings.questionUserNameText,
                      style: TextStyle(
                          fontSize: ValueDimens.largeTextSize,
                          fontFamily: ValueFonts.brandonGrotesque,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: ValueDimens.standardMargin,
                    ),
                    TextFieldApp(
                      ValueStrings.inputUserNameHint,
                      textEditingController: _controller,
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    SmoothButton(ValueStrings.startOrderingAuthScreenBtn,
                        onPressed: () {
                      saveUsernameAndStartHomeScreen(context, _controller.text);
                    })
                  ],
                )),
          ],
        ),
      );

  saveUsernameAndStartHomeScreen(BuildContext context, String username) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(KeySharedPreferences.KEY_USERNAME, username);
    Navigator.pushReplacementNamed(context, '/home_screen');
  }
}
