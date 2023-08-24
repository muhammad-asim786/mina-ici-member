import 'package:flutter/material.dart';

import '../../core/constant/colors.dart';


class KCircularProgress extends StatelessWidget {
  const KCircularProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: greenColorOtp,
      backgroundColor: greenColorOtp.withOpacity(0.2),
    );
  }
}
