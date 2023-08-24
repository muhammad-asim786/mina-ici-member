import 'package:flutter/material.dart';
import 'package:get/get.dart';

navigateTo(Widget widget) {
  Navigator.push(
    Get.context!,
    MaterialPageRoute(builder: (context) => widget),
  );
}

navigateAndReplace(Widget widget) {
  Navigator.pushReplacement(
    Get.context!,
    MaterialPageRoute(builder: (context) => widget),
  );
}

navigateAndRomvoe(Widget widget) {
  Navigator.pushAndRemoveUntil(
    Get.context!,
    MaterialPageRoute(builder: (context) => widget),
    (Route<dynamic> route) => false,
  );
}

navigateToAndFinishAll(Widget widget) {
  Navigator.pushAndRemoveUntil(
    Get.context!,
    MaterialPageRoute(builder: (context) => widget),
    (Route<dynamic> route) => false,
  );
}
