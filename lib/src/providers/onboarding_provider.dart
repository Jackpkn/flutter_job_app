import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier {
  bool _isLastPage = false;
  bool get isLastPage => _isLastPage;
  set isLastPage(bool lastPage) {
    _isLastPage = lastPage;
    notifyListeners();
  }

  bool isSelected = false;
  void dis(bool isS) {
    isSelected = !isS;
    notifyListeners();
  }
}
