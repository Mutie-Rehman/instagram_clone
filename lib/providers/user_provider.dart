import 'package:flutter/material.dart';
import 'package:instagram_clone/models/user.dart';
import 'package:instagram_clone/resources/auth_methods.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMehods _authMehods = AuthMehods();
  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authMehods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
