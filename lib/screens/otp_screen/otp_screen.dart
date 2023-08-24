// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:alt_sms_autofill/alt_sms_autofill.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'dart:async';
import '../../core/constant/assets.dart';
import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';
import '../community_leader_profile_screen.dart/community_leader_profile_provider.dart';
import '../widgets/circular_progress.dart';
import '../widgets/otp_confirm_button.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({super.key, this.phoneNumber, this.verificationId});
  String? verificationId;
  String? phoneNumber;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController otpController = TextEditingController();

  String codeValue = "";
  @override
  void initState() {
    initSmsListener();
    super.initState();
  }

  String _comingSms = 'Unknown';
  TextEditingController textEditingController1 = TextEditingController();
  FutureOr<void> initSmsListener() async {
    String? comingSms;
    try {
      comingSms = (await AltSmsAutofill().listenForSms)!;
    } on PlatformException {
      comingSms = 'Failed to get Sms.';
    }
    if (!mounted) return;
    setState(() {
      _comingSms = comingSms!;
      String code = extractVerificationCode(_comingSms);

      codeValue = code;
      textEditingController1.text = code;
      print("default====>Message: $_comingSms");
      print("Code====>Message: $codeValue");
      print("Text====>Message: ${textEditingController1.text}");
    });
    final model =
        Provider.of<CommunityLeaderProfileProvider>(context, listen: false);
    await model.verifyOtp(
        verificationId: widget.verificationId!, otp: codeValue);
  }

  //extract sms
  String extractVerificationCode(String sms) {
    RegExp regExp = RegExp(r'\d{6}');
    Iterable<Match> matches = regExp.allMatches(sms);
    if (matches.isNotEmpty) {
      return matches.first.group(0)!;
    } else {
      return '';
    }
  }

  @override
  void dispose() {
    AltSmsAutofill().unregisterListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CommunityLeaderProfileProvider model =
        Provider.of<CommunityLeaderProfileProvider>(context);

    return Scaffold(
      backgroundColor: lighBlackColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 160.h),
            Image.asset(moblileOtpScreen, height: 206.h, width: 200.w),
            SizedBox(height: 20.h),
            KText(
                text: "Verify phone number",
                fontSize: 18.sp,
                color: greenColorOtp),
            SizedBox(height: 3.h),
            KText(
                text: "Please enter the 6-digit code sent to you at",
                fontSize: 8.sp,
                color: greenColorOtp),
            SizedBox(height: 4.h),
            KText(
                text: widget.phoneNumber ?? "+1 800 444 4444",
                fontSize: 14.sp,
                color: greenColorOtp),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: PinFieldAutoFill(
                      codeLength: 6,
                      currentCode: codeValue,
                      onCodeChanged: (code) {
                        log("onCodeChanged $code");

                        codeValue = code.toString();
                      },
                      decoration: UnderlineDecoration(
                          textStyle: const TextStyle(color: greenColorOtp),
                          colorBuilder: const FixedColorBuilder(greenColorOtp),
                          lineHeight: 1.5.h),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 150.h),
            model.visible
                ? const KCircularProgress()
                : OtpConfirmButton(
                    onTap: () {
                      model.verifyOtp(
                          verificationId: widget.verificationId!,
                          otp: codeValue);
                    },
                  )
          ],
        ),
      ),
    );
  }
}
