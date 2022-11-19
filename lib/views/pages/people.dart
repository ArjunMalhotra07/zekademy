import 'package:flutter/material.dart';
import 'package:zekademy/models/user_model.dart';
import 'package:zekademy/utils/calls/apis.dart';
import 'package:zekademy/utils/components/tiles.dart';

import '../../utils/components/constants.dart';

class PeopleBarPage extends StatelessWidget {
  const PeopleBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backGround,
      body: FutureBuilder(
        future: Api().getUserListFunction(),
        builder: (context, data) {
          if (data.hasData) {
            var incomingDataObjects = data.data as List<UserModel>;
            return ListView.builder(
                itemCount: incomingDataObjects.length,
                itemBuilder: ((context, index) {
                  var object = incomingDataObjects[index];
                  var name = object.name;
                  var username = object.username;
                  var email = object.email;
                  var phone = object.phone;
                  var website = object.website;
                  var address = object.address;
                  var picture = "";
                  if (index % 5 == 0) {
                    picture = 'assets/pic1.png';
                  } else if (index % 5 == 1) {
                    picture = 'assets/pic2.png';
                  } else if (index % 5 == 2) {
                    picture = 'assets/pic3.png';
                  } else if (index % 5 == 3) {
                    picture = 'assets/pic4.png';
                  } else {
                    picture = 'assets/pic5.png';
                  }
                  return CustomisedTile(
                    userName: username.toString(),
                    name: name.toString(),
                    email: email.toString(),
                    address:
                        "${address!.street}, ${address.suite}, ${address.city}, ${address.zipcode}",
                    phone: phone.toString(),
                    web: website.toString(),
                    pic: picture,
                  );
                }));
          } else if (data.hasError) {
            return const Center(child: Text("Error"));
          } else {
            return const Center(
                child: CircularProgressIndicator(color: Constants.purpleColor));
          }
        },
      ),
    );
  }
}
