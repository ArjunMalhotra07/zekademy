import 'package:flutter/material.dart';
import 'package:zekademy/utils/button.dart';
import 'package:zekademy/utils/components/textStyle.dart';

import '../constants.dart';

class CustomisedTile extends StatelessWidget {
  final String name;
  final String userName;
  const CustomisedTile({required this.name, required this.userName, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child: Container(
          width: 50,
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(width: .7, color: Constants.greyColor),
              color: Constants.whiteColor,
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Row(
                children: [
                  Constants.wideBox(10),
                  const Image(image: AssetImage('assets/Profile.png')),
                ],
              ),
              Constants.wideBox(50),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    child: CustomisedText(
                      incomingText: name,
                      size: 20,
                      weight: FontWeight.w600,
                      colorOfText: Constants.blackColor,
                    ),
                  ),
                  CustomisedText(
                    incomingText: "@$userName",
                    size: 17,
                    colorOfText: Constants.blackColor,
                    weight: FontWeight.w200,
                  ),
                ],
              ),
              const Spacer(),
              const MyButton(
                text: "View",
                width: 85,
                height: 42,
              ),
              Constants.wideBox(15),
            ],
          )),
    );
  }
}
