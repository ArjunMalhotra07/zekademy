import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

import '../../models/user_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  Future<List<UserModel>?> getUserListFunction() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      var data = json.decode(response.body) as List;
      return data.map((e) => UserModel.fromJson(e)).toList();
    }
    return null;
  }

  Future<List<UserModel>?> getUserListFunction1() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    String fileName = "pathString.json";
    var dir = await getTemporaryDirectory();
    File file = File("${dir.path}/$fileName");
    if (file.existsSync()) {
      debugPrint("");
      debugPrint("reading from device cache");
      final jsonData = file.readAsStringSync();
      final inputMap = json.decode(jsonData) as List;
      debugPrint("$inputMap");
      return inputMap.map((e) => UserModel.fromJson(e)).toList();
    } else {
      debugPrint("reading from Internet");
      file.writeAsStringSync(response.body, mode: FileMode.write, flush: true);
      var data = json.decode(response.body) as List;
      return data.map((e) => UserModel.fromJson(e)).toList();
    }
  }
}
