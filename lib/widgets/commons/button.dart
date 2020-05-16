import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String text;
  Function press;
  Color color;

  Button(this.text, this.press, {this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text),
      onPressed: this.press,
      color: this.color,
    );
  }
}
