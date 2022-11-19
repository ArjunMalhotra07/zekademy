import 'package:flutter/material.dart';

import '../constants.dart';

class CustomisedText extends StatelessWidget {
  final Color? colorOfText;
  final double? size;
  final String incomingText;
  final FontWeight? weight;
  const CustomisedText(
      {required this.incomingText,
      this.colorOfText,
      this.size,
      this.weight,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      incomingText,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: size,
          color: colorOfText ?? Constants.blackColor,
          fontWeight: weight),
    );
  }
}
