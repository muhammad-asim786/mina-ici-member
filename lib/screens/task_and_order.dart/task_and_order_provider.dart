import 'package:flutter/material.dart';

class TaskAndOrderProvider extends ChangeNotifier {
  TextEditingController typeOfMessageController = TextEditingController();
  List<String> typeOFNotificationDropDownItemList = ["Male", "Female"];
  List<String> sendTODropDownList = ["Male", "Female"];
  Object? typeOFNotificationDropDownVal;
  Object? sendTODropDownVal;

  getTypeOFNotificationDropDownVal(val) {
    typeOFNotificationDropDownVal = val;
    notifyListeners();
  }

  getSendTODropDownVal(val) {
    sendTODropDownVal = val;
    notifyListeners();
  }
}
