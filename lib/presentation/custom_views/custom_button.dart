import 'package:flutter/material.dart';

class SmoothButton extends StatelessWidget {
  final String _textBtn;
  final MaterialAccentColor backgroundColor;
  final Function onPressed;

  SmoothButton(this._textBtn, {this.backgroundColor, this.onPressed});

  @override
  Widget build(BuildContext context) => MaterialButton(
        onPressed: onPressed ?? () {},
        color: backgroundColor ?? Colors.orangeAccent,
        padding: EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Text(
          _textBtn,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      );
}
