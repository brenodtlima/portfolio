import 'package:flutter/material.dart';

class SelectedLen extends ChangeNotifier {
  int len = 0;

  void changeLen() {
    if (len == 0) {
      len = 1;
    } else {
      len = 0;
    }
    notifyListeners(); // Notify listeners when the state changes
  }
}
