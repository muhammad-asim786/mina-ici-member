import 'package:flutter/material.dart';

class OtpScreenprovider extends ChangeNotifier {
  String codeValue = "";
  setOtpCode(value) {
    codeValue = value;
  }
}
