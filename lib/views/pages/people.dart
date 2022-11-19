import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zekademy/models/user_model.dart';
import 'package:zekademy/utils/components/tiles.dart';
import 'package:http/http.dart' as http;

import '../../utils/constants.dart';

class PeopleBarPage extends StatelessWidget {
  const PeopleBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<UserModel>?> apiCall() async {
      var response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      if (response.statusCode == 200) {
        var data = json.decode(response.body) as List;
        return data.map((e) => UserModel.fromJson(e)).toList();
      }
      return null;
    }

    return Scaffold(
      body: FutureBuilder(
        future: apiCall(),
        builder: (context, data) {
          if (data.hasData) {
            var incomingDataObjects = data.data as List<UserModel>;
            return ListView.builder(
                itemCount: incomingDataObjects.length,
                itemBuilder: ((context, index) {
                  var object = incomingDataObjects[index];
                  var name = object.name;
                  var username = object.username;
                  if (kDebugMode) {
                    print("");
                  }
                  return CustomisedTile(
                    userName: username.toString(),
                    name: name.toString(),
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
