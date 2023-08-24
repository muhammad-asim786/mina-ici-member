import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../Models/app_user_model.dart';

class PostDataToFirebase {
  FirebaseFirestore firebase = FirebaseFirestore.instance;

  postUserData({required String uid, required AppUserModel appUser}) async {
    try {
      await firebase.collection("MemeberUsers").doc(uid).set(appUser.toFirebase());
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }
}
