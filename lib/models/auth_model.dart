import 'dart:convert';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));


class AuthModel {
  final String status;
  final Data data;

  AuthModel({
    required this.status,
    required this.data,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
    status: json["status"],
    data: Data.fromJson(json["data"]),
  );

}

class Data {
  final User user;
  final String token;

  Data({
    required this.user,
    required this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    user: User.fromJson(json["user"]),
    token: json["token"],
  );

}

class User {
  final int id;
  final String fullName;
  final String phoneNumber;

  User({
    required this.id,
    required this.fullName,
    required this.phoneNumber,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    fullName: json["fullname"],
    phoneNumber: json["phone_number"],
  );
  
}
