import 'package:flutter/material.dart';
import 'package:zekademy/utils/components/textStyle.dart';
import 'package:zekademy/utils/constants.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback? action;
  final double? width;
  final double? height;

  const MyButton(
      {Key? key, required this.text, this.action, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: action,
        child: Container(
          width: width ?? 20,
          height: height ?? 50,
          decoration: BoxDecoration(
              color: Constants.whiteColor,
              border: Border.all(width: 1, color: Constants.outline),
              borderRadius: BorderRadius.circular(5)),
          child: Center(
              child: CustomisedText(
            incomingText: text,
            colorOfText: Constants.purpleColor,
            size: 13,
          )),
        ));
  }
}
