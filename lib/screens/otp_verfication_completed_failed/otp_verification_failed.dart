import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/assets.dart';
import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';
import '../widgets/otp_confirm_button.dart';


class OptVerificationFailed extends StatelessWidget {
  const OptVerificationFailed({super.key});

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
              cancel,
              width: 115.w,
              height: 115.h,
            ),
            SizedBox(height: 10.h),
            const KText(
                text: "Verification Failed", fontSize: 18, color: darkRed),
            const KText(
              text: "Your Phone number is not verified .",
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: darkRed,
            ),
            const KText(
              text: "Please try again",
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: darkRed,
            ),
            SizedBox(height: 25.h),
            OtpConfirmButton(onTap: () {}, text: "Change Phone Number"),
          ],
        ),
      ),
    );
  }
}
