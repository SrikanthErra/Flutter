import 'package:flutter/material.dart';
import 'package:textfield/Appconstants.dart';
import 'package:textfield/provider/list_main.dart';

class textStateNotifier with ChangeNotifier {
  List<String> listProvider = [];
  addData(String result) {
    listProvider.add(result);
    notifyListeners();
  }
}
