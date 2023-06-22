import 'package:flutter/material.dart';

class LoginNotifier extends ChangeNotifier {
  bool _isSecurePassword = false;
  bool get isSecurePassword => _isSecurePassword;
  set isSecurePassword(bool isPass) {
    _isSecurePassword = isPass;
    notifyListeners();
  }
}
