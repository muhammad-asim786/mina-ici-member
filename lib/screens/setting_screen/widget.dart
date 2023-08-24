import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';

class MyWidget extends StatelessWidget {
  final String? text;
  const MyWidget({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35.h,
        width: 108.w,
        decoration: BoxDecoration(
          color: borderColor,
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Center(child: KText(text: text!, fontSize: 8.sp, maxLines: 2)));
  }
}
