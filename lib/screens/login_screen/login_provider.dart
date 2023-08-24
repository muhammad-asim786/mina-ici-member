import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nima_comunity_member_app/screens/home_screen/home_screen.dart';

class LoginProvider extends ChangeNotifier {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  loginwithEmail(context) async {
    log('login with email');
    isLoading = true;
    notifyListeners();
    print(userNameController.text);
    print(passwordController.text);
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: userNameController.text, password: passwordController.text)
        .then((user) {
      isLoading = false;
      notifyListeners();
      Get.offAll(HomeScreen());
    }).catchError((error) {
      isLoading = false;
      notifyListeners();
      // Show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error.message),
        ),
      );
    });

    ///
  }
}
