import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';


class OtpConfirmButton extends StatelessWidget {
  const OtpConfirmButton({
    super.key,
    this.onTap,
    this.text,
  });
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        width: 282,
        height: 47,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [Color(0xFF01D101), Color(0xFF4CAF50)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
            child: KText(
                text: text ?? "Confirm", fontSize: 13.sp, color: whiteColor)),
      ),
    );
  }
}
