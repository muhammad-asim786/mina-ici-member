import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/assets.dart';
import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';


class AppTextFiled2 extends StatelessWidget {
  const AppTextFiled2(
      {super.key,
      required this.controller,
      required this.hintText,
      this.padding,
      this.validator});
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: hintTextSyle,
      cursorColor: greenColor,
      cursorHeight: 15.h,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: padding ?? 10.w),
        isDense: true,
        hintText: hintText,
        hintStyle: hintTextSyle,
        border: InputBorder.none,
        // contentPadding: EdgeInsets.only(left: 10.w),
      ),
    );
  }
}

class ProfileLogoContainer extends StatelessWidget {
  const ProfileLogoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 185.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(profileLogo),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: KText(
          text: "Memeber Leader Profile",
          fontSize: 12.sp,
        ),
      ),
    );
  }
}