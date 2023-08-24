import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/colors.dart';
import '../../core/constant/strings.dart';
import '../../core/constant/style.dart';



class RowTextWidget extends StatelessWidget {
  const RowTextWidget({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KText(text: text1, fontSize: 7.sp, fontWeight: FontWeight.normal),
        KText(text: text2, fontSize: 7.sp, fontWeight: FontWeight.normal),
      ],
    );
  }
}

class LicencesAndPolicyAgreementText extends StatelessWidget {
  const LicencesAndPolicyAgreementText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'By clicking Sign In you accept the ',
        style: TextStyle(
            color: greenColor,
            fontFamily: segoeUIfonts,
            fontWeight: FontWeight.bold,
            fontSize: 10.sp),
        children: [
          TextSpan(
            text: 'License Agreement',
            style: TextStyle(
                color: Colors.blue,
                fontFamily: segoeUIfonts,
                fontWeight: FontWeight.bold,
                fontSize: 10.sp),
          ),
          const TextSpan(
            text: ' and ',
          ),
          TextSpan(
            text: 'Policy Notice',
            style: TextStyle(
                color: Colors.blue,
                fontFamily: segoeUIfonts,
                fontWeight: FontWeight.bold,
                fontSize: 10.sp),
          ),
          const TextSpan(
            text: '.',
          ),
        ],
      ),
    );
  }
}
