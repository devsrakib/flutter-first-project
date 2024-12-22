import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  var value = 0;

  void Increament() {
    value++;
    notifyListeners();
  }
}
