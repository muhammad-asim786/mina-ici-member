import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/colors.dart';
import '../../core/constant/strings.dart';
import '../../core/constant/style.dart';



class AppTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double? width;
  final double? height;
  final Icon? icon;
  final IconData? iconData;
  final VoidCallback? suffixonTap;
  final bool? obsecureText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final bool? readOnly;
  final String? Function(String?)? validator;
  final double? hintFontSize;
  final double? fontSize;
  final double? radius;
  final double? cursorHeight;
  final double? contentPadding;
  const AppTextFieldWidget(
      {super.key,
      this.suffixonTap,
      required this.controller,
      required this.hintText,
      this.obsecureText,
      this.maxLines,
      this.keyboardType,
      this.readOnly,
      this.validator,
      this.icon,
      this.height,
      this.width,
      this.hintFontSize,
      this.cursorHeight,
      this.fontSize,
      this.iconData,
      this.radius,
      
      this.contentPadding,});

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 25.h,
      constraints:
          BoxConstraints(minWidth: width ?? 178.w, minHeight: height ?? 40.h),
      child: TextFormField(
        style: TextStyle(
            fontSize: fontSize ?? 10.sp,
            fontFamily: segoeUIfonts,
            fontWeight: FontWeight.bold,
            color: greenColor),
        cursorColor: greenColor,
        cursorHeight: cursorHeight ?? 14.h,
        validator: validator,
        readOnly: readOnly ?? false,
        obscureText: obsecureText ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        controller: controller,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          errorStyle: TextStyle(
            fontSize: 8.sp,
            fontFamily: segoeUIfonts,
            color: redColor
          ) ,
            filled: true,
            fillColor: fillColorwithOpicity,
            contentPadding: EdgeInsets.symmetric(horizontal:contentPadding?? 10.w),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 30.r),
              borderSide: const BorderSide(
                color: redColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 30.r),
              borderSide: BorderSide(
                color: greenColorWithOpicity,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 30.r),
              borderSide: const BorderSide(
                color: redColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 30.r),
              borderSide: BorderSide(
                color: greenColorWithOpicity,
                width: 1,
              ),
            ),
            hintText: hintText,
           
            hintStyle: TextStyle(
                fontSize: hintFontSize ?? 10.sp,
                fontFamily: segoeUIfonts,
                fontWeight: FontWeight.bold,
                color: greenColor)),
      ),
    );
  }
}

class AppTextFieldWidget2 extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double? width;
  final double? height;
  final Icon? icon;
  final IconData? iconData;
  final VoidCallback? suffixonTap;
  final bool? obsecureText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final bool? readOnly;
  final String? Function(String?)? validator;
  const AppTextFieldWidget2(
      {super.key,
      this.suffixonTap,
      required this.controller,
      required this.hintText,
      this.obsecureText,
      this.maxLines,
      this.keyboardType,
      this.readOnly,
      this.validator,
      this.icon,
      this.height,
      this.width,
      this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      constraints:
          BoxConstraints(minWidth: width ?? 178.w, minHeight: height ?? 25.h),
      child: TextFormField(
        cursorColor: greenColor,
        validator: validator,
        readOnly: readOnly ?? false,
        obscureText: obsecureText ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        controller: controller,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
            filled: true,
            fillColor: fillColorwithOpicity,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13.r),
              borderSide: BorderSide(
                color: greenColorWithOpicity,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13.r),
              borderSide: BorderSide(
                color: greenColorWithOpicity,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13.r),
              borderSide: const BorderSide(
                color: redColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13.r),
              borderSide: BorderSide(
                color: greenColorWithOpicity,
                width: 1,
              ),
            ),
            hintText: hintText,
            suffixIcon: GestureDetector(
              onTap: suffixonTap ?? () {},
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: Icon(
                  iconData,
                  color: blackColor.withOpacity(0.5),
                  size: 22.sp,
                ),
              ),
            ),
            hintStyle: hintTextSyle),
      ),
    );
  }
}
