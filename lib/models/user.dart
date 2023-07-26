import 'dart:convert';

class User {
  final dynamic id;
  final String firstName;
  final String lastName;
  final String userName;
  final String email;
  final String password;
  final String access;
  final String refreshToken;

  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.userName,
      required this.email,
      required this.password,
      required this.access,
      required this.refreshToken});

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "first_name": firstName,
      "last_name": lastName,
      "username": userName,
      "email": email,
      "password": password,
      "access": access,
      "refreshtoken": refreshToken
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        id: map["id"] ?? "",
        firstName: map["first_name"] ?? "",
        lastName: map["last_name"] ?? "",
        userName: map["username"] ?? "",
        email: map["email"] ?? "",
        password: map["password"] ?? "",
        access: map["access"] ?? "",
        refreshToken: map["refreshtoken"] ?? "");
  }

  String toJson() => json.encode(toMap());
  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
