import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nima_comunity_member_app/screens/petition_1_screen/petition_1_provider.dart';

import 'package:provider/provider.dart';

import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';
import '../widgets/app_taxtfield_widget.dart';
import '../widgets/coomon_container.dart';

class Petition1Screen extends StatelessWidget {
  const Petition1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Petition1Provider model = Provider.of<Petition1Provider>(context);
    return Column(
      children: [
        KText(
          text: "Petition 1",
          fontSize: 14.sp,
        ),
        SizedBox(height: 15.h),
        KText(text: "!!!WARNING!!!", fontSize: 8.sp),
        SizedBox(width: 362.w, child: KText(text: warningText, fontSize: 8.sp)),
        KText(text: "Thank You.", fontSize: 8.sp),
        SizedBox(height: 20.h),
        CommonContainer(
          height: 49.h,
          width: 350.w,
          radius: 19.r,
          widget: Column(
            children: [
              KText(text: "Purpose of this petition :", fontSize: 8.sp),
              KText(
                  text:
                      "Equal distribution of funds to perspective wards and leaders to create fair community",
                  fontSize: 8.sp),
              KText(
                  text: "beautification and development for local residents.",
                  fontSize: 8.sp)
            ],
          ),
        ),
        SizedBox(height: 20.h),
        CommonContainer(
          height: 72.h,
          width: 86.w,
          radius: 30.r,
          widget: Icon(
            Icons.play_arrow_rounded,
            color: greenColor,
            size: 50.sp,
          ),
        ),
        SizedBox(height: 25.h),
        CommonContainer(
          height: 31.h,
          width: 278.w,
          radius: 30.r,
          fontSize: 10.sp,
          text: "As of August 28 , 2022 | Signatures Collected : 729",
        ),
        SizedBox(height: 30.h),
        SizedBox(
          width: 230.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  model.getSupport();
                },
                child: Row(
                  children: [
                    CommonContainer(
                      height: 10.h,
                      width: 10.w,
                      radius: 50.r,
                      color: model.isSupport == false ? whiteColor : greenColor,
                      text: "",
                    ),
                    SizedBox(width: 10.w),
                    KText(
                        text: "I do support",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500)
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  model.getOppose();
                },
                child: Row(
                  children: [
                    CommonContainer(
                      height: 10.h,
                      width: 10.w,
                      radius: 50.r,
                      color: model.isOppose == false ? whiteColor : greenColor,
                      text: "",
                    ),
                    SizedBox(width: 10.w),
                    KText(
                        text: "I Do not support",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500)
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 23.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Row(
            children: [
              KText(
                  text: "SIGNATURE :",
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w500),
              SizedBox(width: 10.w),
              Expanded(
                child: CommonContainer(
                  text: "",
                  radius: 30.r,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 24.h),
        KText(text: "Feedback | Suggestions", fontSize: 14.sp),
        SizedBox(height: 5.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w),
          child: AppTextFieldWidget2(
              maxLines: 5,
              height: 120.h,
              controller: model.suggestionController,
              hintText: ""),
        ),
        SizedBox(height: 11.h),
        CommonContainer(
          text: "SUBMIT",
          fontSize: 10.sp,
        ),
        SizedBox(height: 11.h),
      ],
    );
  }
}

String warningText =
    "Notice: By signing this petition, you are agreeing that you would like to see the specific change that is listed below. Your signature will be in a collective accumulation of signatures that will help reach the required number mandated to allow this petition to effectively take action.Please read the petition details and watch the detailed explainer video of the petition.We ask that you make a responsible and clear decision.If you do not support this decision please select: "
    "I do support"
    " or "
    "I do not support"
    " and we askthat you leave feedback and a suggestion.";
