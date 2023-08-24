import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nima_comunity_member_app/core/constant/navigation_constant.dart';
import 'package:nima_comunity_member_app/screens/community_leader_profile_screen.dart/community_leader_profile_screen.dart';
import 'package:nima_comunity_member_app/screens/login_screen/widget.dart';
import 'package:nima_comunity_member_app/screens/widgets/circular_progress.dart';

import 'package:provider/provider.dart';

import '../../core/constant/assets.dart';
import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';
import '../widgets/app_taxtfield_widget.dart';
import '../widgets/coomon_container.dart';
import 'login_provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginProvider model = Provider.of<LoginProvider>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: lighBlackColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60.h),
              Image.asset(
                logo,
                height: 250.h,
                width: 190.w,
                fit: BoxFit.cover,
              ),
              const KText(
                  text: "Protecting and Connecting us all",
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
              SizedBox(height: 37.h),
              const KText(text: "Log In"),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: Column(
                  children: [
                    AppTextFieldWidget(
                      height: 40.h,
                      cursorHeight: 20.h,
                      controller: model.userNameController,
                      hintText: "UserName",
                      fontSize: 15.sp,
                      hintFontSize: 15.sp,
                      radius: 13.r,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 24.h),
                    AppTextFieldWidget(
                      height: 40.h,
                      cursorHeight: 20.h,
                      controller: model.passwordController,
                      hintText: "Password",
                      fontSize: 15.sp,
                      hintFontSize: 15.sp,
                      radius: 13.r,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              KText(text: "N.I.M.A. Terms & Conditions", fontSize: 10.sp),
              SizedBox(height: 18.h),
              KText(text: "Forgot Username | Password", fontSize: 10.sp),
              SizedBox(height: 45.h),
              model.isLoading
                  ? const KCircularProgress()
                  : CommonContainer(
                      onTap: () {
                        model.loginwithEmail(context);
                      },
                      text: "Login",
                      height: 39.h,
                      width: 124.w,
                      radius: 14.r,
                    ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KText(text: "Don't have an account?", fontSize: 10.sp),
                  SizedBox(width: 5.w),
                  GestureDetector(
                    onTap: () {
                      navigateAndRomvoe(CommunityLeaderProfile());
                    },
                    child: KText(
                      text: "Sign Up",
                      fontSize: 10.sp,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              KText(text: "I.C.I.", fontSize: 30.sp),
              SizedBox(height: 10.h),
              KText(text: "Improving Community Information", fontSize: 10.sp),
              SizedBox(height: 30.h),
              const LicencesAndPolicyAgreementText(),
              KText(
                text: "Information on Third Party Notices.",
                fontSize: 10.sp,
              ),
              SizedBox(height: 17.h),
            ],
          ),
        ),
      ),
    );
  }
}
