import 'package:flutter/material.dart';
import 'package:zekademy/utils/button.dart';
import 'package:zekademy/utils/components/textStyle.dart';
import 'package:zekademy/views/pages/details.dart';

import '../constants.dart';

class CustomisedTile extends StatelessWidget {
  final String name;
  final String userName;
  final String? email;
  final String? address;
  final String? phone;
  final String? web;
  const CustomisedTile(
      {required this.name,
      required this.userName,
      this.email,
      this.address,
      this.phone,
      this.web,
      super.key});

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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsPage(
                              name: name,
                              userName: userName,
                              website: web ?? "",
                              phone: phone ?? "",
                              email: email ?? "",
                              add: address ?? "",
                            )),
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
