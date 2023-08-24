import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';
import '../widgets/coomon_container.dart';

class FightingOpposingAgendaScreen extends StatelessWidget {
  const FightingOpposingAgendaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KText(text: "Take Action Now", fontSize: 14.sp),
        SizedBox(height: 7.h),
        CommonContainer(
          height: 143.h,
          width: 350.w,
          radius: 15.r,
          text: "",
        ),
        SizedBox(height: 7.h),
        KText(text: "What's Happening Now", fontSize: 14.sp),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SizedBox(
            height: 230.h,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 15,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1 / 1,
                ),
                itemBuilder: (context, index) {
                  return CommonContainer(
                    text: "Update",
                    height: 54.h,
                    width: 54.w,
                    radius: 13.r,
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w500,
                  );
                }),
          ),
        ),
        SizedBox(height: 10.h),
        const Divider(thickness: 1, color: greenColor),
        SizedBox(height: 20.h),
        KText(text: "What Needs to Change", fontSize: 14.sp),
        SizedBox(height: 15.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SizedBox(
            height: 230.h,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 15,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1 / 1,
                ),
                itemBuilder: (context, index) {
                  return CommonContainer(
                    text: "Update",
                    height: 54.h,
                    width: 54.w,
                    radius: 13.r,
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w500,
                  );
                }),
          ),
        ),
      ],
    );
  }
}
