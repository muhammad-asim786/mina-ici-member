import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nima_comunity_member_app/core/Models/app_user_model.dart';
import 'package:shortid/shortid.dart';

import '../live_page.dart';

class VideoConfrenceProvider extends ChangeNotifier {
  AppUserModel appUserModel = AppUserModel();
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;

  void handleLiveAction() async {
    // use $ and @ instead of - and _
    shortid.characters('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ');
    //MemeberUsers
    try{
      String channel = shortid.generate();
      await db.collection("live").doc(auth.currentUser!.uid).set({
        "name": appUserModel.userName,
        "createdAt": FieldValue.serverTimestamp(),
        "channel": channel,
        "email": appUserModel.email,
        "leader": auth.currentUser!.uid,
      });
      Get.to(() => LivePage(channel: channel));
    }catch(e){}
  }
  VideoConfrenceProvider() {
    getuserdata();
  }

  getuserdata() async {
    print("getuserdata");
    await FirebaseFirestore.instance
        .collection('MemeberUsers')
        .doc(auth.currentUser!.uid)
        .get()
        .then((value) {
      appUserModel = AppUserModel.fromFirebase(firebase: value.data()!);
      print("this is first name ${appUserModel.firstName}");
      print(value.data());
    });
  }
}
