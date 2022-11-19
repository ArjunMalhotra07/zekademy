import 'package:flutter/material.dart';
import 'package:zekademy/utils/components/text_style.dart';
import '../../utils/components/constants.dart';

class DetailsPage extends StatelessWidget {
  final String name, userName, email, add, phone, website, pic;
  const DetailsPage(
      {required this.name,
      required this.userName,
      required this.email,
      required this.phone,
      required this.add,
      required this.website,
      required this.pic,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: CustomisedText(
            incomingText: name.toString(),
            colorOfText: Constants.blackColor,
          ),
          backgroundColor: Constants.whiteColor,
          automaticallyImplyLeading: true,
          elevation: 1,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Constants.blackColor,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 40),
          child: Column(
            children: [
              Row(children: [
                SizedBox(
                  width: 75,
                  height: 75,
                  child: Image(
                    image: AssetImage(pic),
                    fit: BoxFit.fill,
                  ),
                ),
                Constants.wideBox(20),
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
                    Constants.heightedBox(20),
                    CustomisedText(
                      incomingText: "@$userName",
                      size: 17,
                      colorOfText: Constants.greyColor,
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
              ]),
              Constants.heightedBox(40),
              Row(
                children: [
                  const CustomisedText(
                    incomingText: "Email : ",
                    size: 15,
                    colorOfText: Constants.greyColor,
                  ),
                  CustomisedText(
                    incomingText: email.toString(),
                    size: 15,
                    colorOfText: Constants.blackColor,
                  )
                ],
              ),
              Constants.heightedBox(20),
              Row(
                children: [
                  const CustomisedText(
                    incomingText: "Address : ",
                    size: 15,
                    colorOfText: Constants.greyColor,
                  ),
                  SizedBox(
                    width: 250,
                    child: CustomisedText(
                      incomingText: add.toString(),
                      size: 15,
                      colorOfText: Constants.blackColor,
                    ),
                  )
                ],
              ),
              Constants.heightedBox(20),
              Row(
                children: [
                  const CustomisedText(
                    incomingText: "Phone : ",
                    size: 15,
                    colorOfText: Constants.greyColor,
                  ),
                  CustomisedText(
                    incomingText: phone.toString(),
                    size: 15,
                    colorOfText: Constants.blackColor,
                  )
                ],
              ),
              Constants.heightedBox(20),
              Row(
                children: [
                  const CustomisedText(
                    incomingText: "Website : ",
                    size: 15,
                    colorOfText: Constants.greyColor,
                  ),
                  CustomisedText(
                    incomingText: website.toString(),
                    size: 15,
                    colorOfText: Constants.blackColor,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
