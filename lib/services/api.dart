import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
// import 'package:meters/models/api.dart';
import 'dart:async';
import 'dart:convert';

import 'package:meters/models/user.dart';

@lazySingleton
class Api {
  static const baseUrl = 'http://0a0167b3c04e.ngrok.io/';
  static const loginUrl = baseUrl + 'api/subscriber/login';

  var client = new http.Client();

  Future<User> postLoginUser() async {
    final http.Response response = await client.post(
      loginUrl,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': 'otietegodspower@gmail.com',
        'password': 'qwerty12'
      }),
    );
    if (response.statusCode != 200 && response.statusCode != 201) {
      throw Exception('Failed to Login');
    }
    final User data = User.fromJson(json.decode(response.body));
    // print(json.decode(response.body));
    // print(response.body);
    // print(data.name);
    // print(data.email);
    // print(data.gender);
    return data;
  }
}
