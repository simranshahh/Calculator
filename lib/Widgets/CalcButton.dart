// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_if_null_operators, unnecessary_null_comparison, file_names, deprecated_member_use

import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Color? textcolor;

  const CalcButton({required this.text, this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff272b33),
      ),
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Color(0xff292d36),
        onPressed: (() => {}),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            color: textcolor == null ? Colors.white : textcolor,
          ),
        ),
      ),
    );
  }
}
