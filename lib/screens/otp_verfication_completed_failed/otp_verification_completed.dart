import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/assets.dart';
import '../../core/constant/colors.dart';
import '../../core/constant/navigation_constant.dart';
import '../../core/constant/style.dart';
import '../home_screen/home_screen.dart';

class OtpVerificationScree extends StatefulWidget {
  const OtpVerificationScree({super.key});

  @override
  State<OtpVerificationScree> createState() => _OtpVerificationScreeState();
}

class _OtpVerificationScreeState extends State<OtpVerificationScree> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      navigateAndRomvoe(HomeScreen());
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lighBlackColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              check,
              width: 115.w,
              height: 115.h,
            ),
            const KText(
                text: "Verification Completed",
                fontSize: 18,
                color: greenColorOtp),
            KText(
              text: "Your Phone Number is Verified",
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: greenColorOtp.withOpacity(0.5),
            ),
            KText(
              text: "You will be redirected to your account",
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: greenColorOtp.withOpacity(0.5),
            )
          ],
        ),
      ),
    );
  }
}
