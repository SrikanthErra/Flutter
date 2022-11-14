import 'package:flutter/material.dart';

class CounterStateNotifier with ChangeNotifier {
  int counter = 0;

  increment() {
    counter++;
    notifyListeners();
  }

  decriment() {
    counter--;
    notifyListeners();
  }
}