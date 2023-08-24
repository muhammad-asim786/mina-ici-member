import 'package:flutter/material.dart';

class Votesprovider extends ChangeNotifier {
  List<String> votesDropDownItemList = ["Male", "Female"];
  Object? votesDropDownVal;
  getvotesDropDownVal(val) {
    votesDropDownVal = val;
    notifyListeners();
  }
}
