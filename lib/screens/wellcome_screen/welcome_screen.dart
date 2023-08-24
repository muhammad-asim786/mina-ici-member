import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../core/constant/assets.dart';
import '../../core/constant/colors.dart';
import '../../core/constant/navigation_constant.dart';
import '../../core/constant/style.dart';
import '../community_leader_profile_screen.dart/community_leader_profile_screen.dart';
import '../login_screen/login_screen.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lighBlackColor,
        body: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Image.asset(
                  logo,
                  height: 75.h,
                  width: 80.w,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'welcome \nto\n National Independent Mediation Agency\n\n I.C.I. \nImproving Community Information',
                  style: textStylesubHeading.copyWith(fontSize: 16.sp),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'Our Goals:',
                  style: textStylesubHeading.copyWith(fontSize: 14.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  '-- Build effective and efficient communication environment \nbetween both parties.',
                  style: textStylesubHeading.copyWith(
                      fontSize: 13.sp, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  '-- Make change by being the voice of the voiceless and those who need your support.',
                  style: textStylesubHeading.copyWith(
                      fontSize: 13.sp, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  '-- Create the best possible solution for the client. ',
                  style: textStylesubHeading.copyWith(
                      fontSize: 13.sp, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Don't have an account yet?",
                  style: textStylesubHeading.copyWith(
                      fontSize: 16.sp, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        navigateTo( CommunityLeaderProfile());
                      },
                      child: Container(
                        height: 52.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                            color: greenColor.withOpacity(.3),
                            borderRadius: BorderRadius.circular(13.r)),
                        child: Center(
                          child: Text(
                            'Member\nRegister',
                            style: textStylesubHeading.copyWith(
                                fontSize: 12.sp, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateTo(const LoginScreen());
                      },
                      child: Container(
                        height: 52.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                            color: greenColor.withOpacity(.3),
                            borderRadius: BorderRadius.circular(13.r)),
                        child: Center(
                          child: Text(
                            'Already a Member\nsign In',
                            style: textStylesubHeading.copyWith(
                                fontSize: 12.sp, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "How does it work?",
                  style: textStylesubHeading.copyWith(
                      fontSize: 16.sp, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  height: 140.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      color: greenColor.withOpacity(.3),
                      borderRadius: BorderRadius.circular(30.r)),
                  child: Center(
                    child: Image.asset(
                      playIcon,
                      fit: BoxFit.contain,
                      height: 53.h,
                      width: 73.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Row(
                    children: [
                      Image.asset(lockIcon),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'We will never sell your information',
                        style: textStylesubHeading.copyWith(
                            fontSize: 10.sp, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ));
  }
}
