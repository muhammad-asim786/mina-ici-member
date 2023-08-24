import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nima_comunity_member_app/core/constant/strings.dart';


import 'colors.dart';


final textStylebody = TextStyle(
    fontSize: 16.sp,
    fontFamily: segoeUIfonts,
    fontWeight: FontWeight.w400,
    color: greenColor);

final textStylesubHeading = TextStyle(
    fontSize: 18.sp,
    fontFamily: segoeUIfonts,
    fontWeight: FontWeight.w600,
    color: greenColor);

final textStyleheading = TextStyle(
    fontSize: 20.sp,
    fontFamily: segoeUIfonts,
    fontWeight: FontWeight.bold,
    color: greenColor);

final hintTextSyle = TextStyle(
    fontSize: 10.sp,
    fontFamily: segoeUIfonts,
    fontWeight: FontWeight.bold,
    color: greenColor);

//Text Common Widget

class KText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextStyle? textStyle;
  final int? maxLines;
  const KText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textStyle,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: textStyle ??
          TextStyle(
              fontSize: fontSize ?? 16.sp,
              fontFamily: segoeUIfonts,
              fontWeight: fontWeight ?? FontWeight.bold,
              color: color ?? greenColor),
    );
  }
}
