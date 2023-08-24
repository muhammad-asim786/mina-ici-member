import 'package:flutter/material.dart';

class Petition1Provider extends ChangeNotifier {
  TextEditingController suggestionController = TextEditingController();
  bool isSupport = false;
  bool isOppose = false;

  getSupport() {
    isSupport = !isSupport;
    isOppose = false;
    notifyListeners();
  }

  getOppose() {
    isOppose = !isOppose;
    isSupport = false;
    notifyListeners();
  }
}
