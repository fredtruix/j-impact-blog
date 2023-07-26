import 'package:flutter/material.dart';
import 'package:jimpact/models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
      id: '',
      firstName: "",
      lastName: "",
      userName: "",
      email: "",
      password: "",
      access: "",
      refreshToken: "");

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    notifyListeners();
  }


}
