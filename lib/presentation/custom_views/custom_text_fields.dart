import 'package:flutter/material.dart';
import 'package:sample_app/values/colors.dart';

class TextFieldApp extends StatelessWidget {
  final String _hint;
  final Widget prefixIcon;
  final Function onPressed;
  final TextEditingController textEditingController;

  TextFieldApp(this._hint,
      {this.prefixIcon, this.onPressed, this.textEditingController});

  @override
  Widget build(BuildContext context) =>
      TextField(
        controller: textEditingController,
        decoration: InputDecoration(
            hintText: _hint,
            hintStyle: TextStyle(color: ValueColors.colorHintTextFieldsApp),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0)
            ),
            fillColor: ValueColors.colorFillTextFieldsApp,
            filled: true),
      );
}
