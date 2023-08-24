import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/assets.dart';
import '../../core/constant/colors.dart';
import '../../core/constant/strings.dart';



class CommonContainer extends StatelessWidget {
  const CommonContainer({
    super.key,
    this.fontSize,
    this.text,
    this.radius,
    this.height,
    this.width,
    this.onTap,
    this.fontWeight,
    this.widget,
    this.color,
  });
  final double? height;
  final double? width;
  final double? radius;
  final String? text;
  final double? fontSize;
  final VoidCallback? onTap;
  final FontWeight? fontWeight;
  final Widget? widget;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        height: height ?? 37.h,
        width: width ?? 88.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 7.r),
          color: color ?? fillColorwithOpicity,
        ),
        child: widget ??
            Text(
          text ?? "SUBMIT",
          style: TextStyle(
              color: greenColor,
              fontSize: fontSize ?? 14.sp,
              fontWeight: fontWeight ?? FontWeight.bold,
              fontFamily: segoeUIfonts),
        ),
      ),
    );
  }
}

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
    this.height,
    this.width,
  });
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logo,
      height: height ?? 75.h,
      width: width ?? 61.w,
    );
  }
}
