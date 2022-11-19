import 'package:flutter/material.dart';

class Constants {
  static const purpleColor = Colors.purple;
  static const whiteColor = Colors.white;
  static const blackColor = Colors.black;
  static const greenColor = Colors.green;
  static const blueColor = Colors.blue;
  static const greyColor = Colors.grey;

  static wideBox(double size) {
    return SizedBox(
      width: size,
    );
  }

  static heightedBox(double size) {
    return SizedBox(
      height: size,
    );
  }
}
