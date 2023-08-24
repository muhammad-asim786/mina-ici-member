import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/style.dart';


class HomeRowTextWidget extends StatelessWidget {
  const HomeRowTextWidget({
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
