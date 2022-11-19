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
}
