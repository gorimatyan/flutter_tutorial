import 'package:flutter/material.dart';

Widget text24Normal({required String text, Color color = Colors.blueAccent}) {
  // ↑ text24Normal({String text = ''}) とすることで任意引数にできる
  return Text(text,
      textAlign: TextAlign.center,
      style:
          TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: color));
}

Widget text16Normal({required String text, Color color = Colors.blueAccent}) {
  // ↑ text16Normal({String text = ''}) とすることで任意引数にできる
  return Text(text,
      textAlign: TextAlign.center,
      style:
          TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: color));
}
