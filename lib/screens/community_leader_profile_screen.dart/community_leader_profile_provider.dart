import 'dart:async';
import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/Models/app_user_model.dart';
import '../../core/Services/post/user_post_data.dart';
import '../otp_screen/otp_screen.dart';
import '../otp_verfication_completed_failed/otp_verification_completed.dart';

class CommunityLeaderProfileProvider extends ChangeNotifier {
  TextEditingController aliasController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController dayController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController emrFirstNameController = TextEditingController();
  TextEditingController emrLastNameController = TextEditingController();
  TextEditingController emrAddressController = TextEditingController();

  List<String> relationDropDownItemList = ["Male", "Female"];
  RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$');
  RegExp passwordRegex = RegExp(r'^.{6,}$');

  AppUserModel userModel = AppUserModel();
  bool loading = false;
  bool visible2 = false;
  bool visible = false;
  Object? relationDropDownVal;

  getrelationDropDownVal(val) {
    relationDropDownVal = val;
    notifyListeners();
  }

  sigupwithEmail() async {
    userModel.email = emailController.text;
    userModel.password = passwordController.text;
    log('signup with email ${emailController.text} ${passwordController.text} ');
    final FirebaseAuth _auth = FirebaseAuth.instance;

    // isLoading = true;
    notifyListeners();

    _auth
        .createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((user) async {
      log('this is curent user uid ${_auth.currentUser!.uid}');
      userModel.alias = aliasController.text;
      userModel.firstName = firstNameController.text;
      userModel.middleName = middleNameController.text;
      userModel.lastName = lastNameController.text;
      userModel.email = emailController.text;
      userModel.phoneNumber = numberController.text;
      userModel.userName = userNameController.text;
      userModel.password = passwordController.text;
      userModel.confirmPassword = confirmPasswordController.text;
      userModel.address = addressController.text;
      userModel.month = monthController.text;

      userModel.day = dayController.text;
      userModel.year = yearController.text;
      userModel.city = cityController.text;
      userModel.state = stateController.text;
      userModel.zipCode = zipCodeController.text;
      userModel.emrFirstName = emrFirstNameController.text;
      userModel.emrLastName = emrLastNameController.text;
      userModel.emrAddress = emrAddressController.text;
      await FirebaseFirestore.instance
          .collection('MemeberUsers')
          .doc(_auth.currentUser!.uid)
          .set(
            userModel.toFirebase(),
          )
          .then((val) {});
      print('go to next screen');
      // isLoading = false;
      notifyListeners();
    }).catchError((error) {
      // Show an error message
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(
      //     content: Text(error.message),
      //   ),
      // );
      // isLoading = false;
      notifyListeners();
    });
  }

  verifyPhoneNumber({required String phoneNumber, context}) async {
    log("here is phone number $phoneNumber");
    final auth = FirebaseAuth.instance;
    if (numberController.text != "") {
      try {
        visible2 = true;
        notifyListeners();
        await auth.verifyPhoneNumber(
            phoneNumber: phoneNumber,
            timeout: const Duration(seconds: 30),
            verificationCompleted: (PhoneAuthCredential credential) {
              auth
                  .signInWithCredential(credential)
                  .then((UserCredential credential) async {});
            },
            verificationFailed: (FirebaseAuthException exception) {
              visible2 = false;
              notifyListeners();
              log("here is error ${exception.message}");
              Get.snackbar('Verification Failed', '${exception.message}',
                  backgroundColor: Colors.red,
                  colorText: Colors.white,
                  duration: const Duration(seconds: 5),
                  snackPosition: SnackPosition.BOTTOM);
              notifyListeners();
            },
            codeSent: (String verificationId, int) {
              Get.to(OtpScreen(
                verificationId: verificationId,
                phoneNumber: phoneNumber,
              ));
              visible2 = false;
              notifyListeners();
            },
            codeAutoRetrievalTimeout: (String ver) {});
      } catch (e) {
        visible2 = false;
        notifyListeners();
        Get.snackbar('Error', 'OTP Verification Failed',
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
            colorText: Colors.white,
            snackPosition: SnackPosition.BOTTOM);
      }
      notifyListeners();
    } else {
      Get.snackbar(
          'Error', 'phone number , email ,username,password can not be empty',
          margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 2),
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM);
    }

    notifyListeners();
    // return widget;
  }

  //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> VERIFY OTP FUNCTION>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  Future<void> verifyOtp({
    required String verificationId,
    required String otp,
  }) async {
    log("here is inside fun");
    log("here is inside $otp");
    log("here is inside $verificationId");
    FirebaseAuth auth = FirebaseAuth.instance;

    try {
      log("inside try");
      visible = true;
      final credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: otp.trim());
      log("inside ofter verfiy");

      await auth
          .signInWithCredential(credential)
          .then((UserCredential credential) async {
        log("here is inside FD");

        log("insiginup numberController ${numberController.text}");
        final SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        await sharedPreferences.setString('number', numberController.text);
        await sharedPreferences.setString('uid', credential.user!.uid);
        sigupwithEmail();
        // await sendUserDataToFirebase(uid: credential.user!.uid);

        await Get.offAll(() => const OtpVerificationScree());
      });
    } catch (e) {
      log("$e error foundddd");
      visible = false;
      notifyListeners();
      if (e ==
          "The sms code has expired. Please re-send the verification code to try again.") {
        Get.defaultDialog(
          title: "sms expired",
        );
      }
      Get.defaultDialog(
          title: "Worng OTP",
          content: const Text(
            "Your OTP is invaild.\n Please enter correct OTP",
            textAlign: TextAlign.center,
          ));
      notifyListeners();
    }
    notifyListeners();
  }

  //send all user data to firebase
  sendUserDataToFirebase({required String uid}) async {
    loading = true;
    notifyListeners();
    userModel.alias = aliasController.text;
    userModel.firstName = firstNameController.text;
    userModel.middleName = middleNameController.text;
    userModel.lastName = lastNameController.text;
    userModel.email = emailController.text;
    userModel.phoneNumber = numberController.text;
    userModel.userName = userNameController.text;
    userModel.password = passwordController.text;
    userModel.confirmPassword = confirmPasswordController.text;
    userModel.address = addressController.text;
    userModel.month = monthController.text;

    userModel.day = dayController.text;
    userModel.year = yearController.text;
    userModel.city = cityController.text;
    userModel.state = stateController.text;
    userModel.zipCode = zipCodeController.text;
    userModel.emrFirstName = emrFirstNameController.text;
    userModel.emrLastName = emrLastNameController.text;
    userModel.emrAddress = emrAddressController.text;
    await PostDataToFirebase().postUserData(uid: uid, appUser: userModel);
    loading = false;
  }
}
