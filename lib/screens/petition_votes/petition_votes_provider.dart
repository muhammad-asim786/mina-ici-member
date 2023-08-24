import 'package:flutter/material.dart';

class PetitionProvider extends ChangeNotifier {
  List<String> petitionDropDownItemList = ["Male", "Female"];
  Object? petitionDropDownVal;
  getPetDropDownVal(val) {
    petitionDropDownVal = val;
    notifyListeners();
  }
}
