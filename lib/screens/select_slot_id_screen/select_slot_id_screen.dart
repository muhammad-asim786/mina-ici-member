import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import '../../core/constant/assets.dart';
import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';
import '../widgets/coomon_container.dart';

class SelectSlotIdScreen extends StatelessWidget {
  const SelectSlotIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // LoginProvider model = Provider.of<LoginProvider>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: lighBlackColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const SizedBox(),
                  Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: const AppLogoWidget()),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.h),
                    child: SizedBox(
                        width: 96.w, height: 63.h, child: const Column()),
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              const KText(text: "Document I.D."),
              Image.asset(profileLogo, width: 167.w),
              SizedBox(height: 18.h),
              const KText(text: "Select I.D. to see other side. "),
              SizedBox(height: 30.h),
              KText(text: "Police Department Employee I.D.", fontSize: 10.sp),
              Container(
                  height: 142.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Center(
                      child: Image.asset(nicIcon, height: 50.h, width: 50.w))),
              SizedBox(height: 18.h),
              KText(text: "Drivers License I.D.", fontSize: 10.sp),
              Container(
                  height: 142.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    color: fillColor,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Center(
                      child: Image.asset(nicIcon, height: 50.h, width: 50.w))),
            ],
          ),
        ),
      ),
    );
  }
}
