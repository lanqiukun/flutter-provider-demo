import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  Color color = Colors.green;

  changeToGreen() {
    color = Colors.green;
    notifyListeners();
  }

  changeToRed() {
    color = Colors.red;
    notifyListeners();
  }
}
