import 'package:flutter/material.dart';

class SignUpNotifier extends ChangeNotifier {
  bool _isObscureText = false;
  bool get isSecurePassword => _isObscureText;
  set isSecurePassword(bool isPass) {
    _isObscureText = isPass;
    notifyListeners();
  }
}
