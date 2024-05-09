import 'package:flutter/material.dart';

class ShowTrueorFalse extends ChangeNotifier {
  bool show = false;

  void setTrue() {
    show = true;
    notifyListeners(); // Notify listeners when the state changes
  }
}
