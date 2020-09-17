// import 'package:meters/models/address.dart';

class User {
  const User(
      {this.token,
      this.birthday,
      this.gender,
      this.meterid,
      this.email,
      this.name});
  final String email;
  final String token;
  final String name;
  final DateTime birthday;
  final String gender;
  final String meterid;
  


  factory User.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      throw FormatException("Null JSON provided to User");
    }
    return User(
      token: json['token'],
      birthday: json['birthday'] != null ? DateTime.parse(json['birthday']) : null,
      gender: json['gender'],
      meterid: json['meterid'],
      email: json['email'],
      name: json['name']
      );
  }

  // User.fromJson(Map<String, dynamic> json) {
  //   token = json['token'];
  //   email = json['email'];
  //   name = json['name'];
  //   birthday = json['birthday'];
  //   gender = json['gender'];
  //   meters = json['meters'];
  //   address = json['address'];
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['name'] = this.name;
    return data;
  }
}
