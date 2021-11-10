import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int num = 20;

  add() {
    num++;
    notifyListeners();
  }

  sub() {
    num--;
    notifyListeners();
  }
}
