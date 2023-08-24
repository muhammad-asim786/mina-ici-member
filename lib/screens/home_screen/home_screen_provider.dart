import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier {
  int currentIndex = 0;

  void changeIndex(int index) {
    log(index.toString());
    currentIndex = index;
    notifyListeners();
  }

  List<String> tabbar = [
    "Home",
    "Community Leaders",
    "Community Agenda",
    "Community Suggestions",
    "Fight Opposing Agenda's",
    "Petitions",
    "Votes",
    "Video Conference",
    "Petition 1",
    "Vote 1",
    "Logout"
  ];
}
