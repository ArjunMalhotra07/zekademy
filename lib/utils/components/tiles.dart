import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:zekademy/utils/components/button.dart';
import 'package:zekademy/utils/components/text_style.dart';
import 'package:zekademy/views/pages/details.dart';

import 'constants.dart';

class CustomisedTile extends StatelessWidget {
  final String name;
  final String userName;
  final String? email;
  final String? address;
  final String? phone;
  final String? web;
  final String pic;
  const CustomisedTile(
      {required this.name,
      required this.userName,
      this.email,
      this.address,
      this.phone,
      this.web,
      required this.pic,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
      child: Container(
          width: 50,
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Constants.outline),
              color: Constants.whiteColor,
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Row(
                children: [
                  Constants.wideBox(10),
                  SizedBox(
                    width: 75,
                    height: 75,
                    child: Image(
                      image: AssetImage(pic),
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Constants.wideBox(15),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Constants.heightedBox(2),
                  SizedBox(
                    width: 150,
                    child: CustomisedText(
                      incomingText: name,
                      size: 16,
                      weight: FontWeight.w600,
                      colorOfText: Constants.blackColor,
                    ),
                  ),
                  CustomisedText(
                    incomingText: "@$userName",
                    size: 13,
                    colorOfText: Constants.greyColor,
                    weight: FontWeight.w400,
                  ),
                  Constants.heightedBox(2),
                ],
              ),
              Constants.wideBox(10),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        duration: const Duration(milliseconds: 700),
                        reverseDuration: const Duration(milliseconds: 700),
                        child: DetailsPage(
                          pic: pic,
                          name: name,
                          userName: userName,
                          website: web ?? "",
                          phone: phone ?? "",
                          email: email ?? "",
                          add: address ?? "",
                        ),
                        type: PageTransitionType.rightToLeftWithFade),
                  );
                },
                child: const MyButton(
                  text: "View",
                  width: 85,
                  height: 42,
                ),
              ),
              Constants.wideBox(15),
            ],
          )),
    );
  }
}
