import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nima_comunity_member_app/core/Models/app_user_model.dart';

class GetDataFromFirebase{
  FirebaseFirestore firebase = FirebaseFirestore.instance;
  AppUserModel appUserModel = AppUserModel();
  getAllUser()async{
    try{
      await firebase.collection("MemeberUsers").get().then((value){
      for (var element in value.docs) {
       return AppUserModel.fromFirebase(firebase: element.data());
      }
    });
    }catch(e){
      log(e.toString());
    }
  }
}