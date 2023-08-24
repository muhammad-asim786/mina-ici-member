import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nima_comunity_member_app/screens/vote_1_screen/vote_1_provider.dart';

import 'package:provider/provider.dart';

import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';
import '../widgets/app_taxtfield_widget.dart';
import '../widgets/coomon_container.dart';

class Vote1Screen extends StatelessWidget {
  const Vote1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Vote1Provider model = Provider.of<Vote1Provider>(context);
    return Column(
      children: [
        KText(
          text: "Vote 1",
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
          radius: 15.r,
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
          height: 70.h,
          width: 347.w,
          radius: 30.r,
          widget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.h),
              KText(
                  text: "As of August 28 , 2022 | Votes Collected : 729",
                  fontSize: 10.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const VotedCountColumn(votedCount: "654"),
                  SizedBox(width: 20.w),
                  const SupportTextColumn(),
                  SizedBox(
                    height: 48.h,
                    child: const VerticalDivider(
                      color: greenColor,
                      thickness: 1,
                      indent: 5,
                    ),
                  ),
                  const VotedCountColumn(votedCount: "76"),
                  SizedBox(width: 20.w),
                  const SupportTextColumn(),
                ],
              ),
            ],
          ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 3.h),
                      child: CommonContainer(
                        height: 10.h,
                        width: 10.w,
                        radius: 50.r,
                        color:
                            model.isSupport == false ? whiteColor : greenColor,
                        text: "",
                      ),
                    ),
                    SizedBox(width: 10.w),
                    const SupportTextColumn()
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  model.getOppose();
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 3.h),
                      child: CommonContainer(
                        height: 10.h,
                        width: 10.w,
                        radius: 50.r,
                        color:
                            model.isOppose == false ? whiteColor : greenColor,
                        text: "",
                      ),
                    ),
                    SizedBox(width: 10.w),
                    const OpposeTextColumn()
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

class SupportTextColumn extends StatelessWidget {
  const SupportTextColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KText(
            text: "I Do Support", fontSize: 10.sp, fontWeight: FontWeight.w500),
        KText(text: "Yay | Yes", fontSize: 10.sp, fontWeight: FontWeight.w500)
      ],
    );
  }
}

class OpposeTextColumn extends StatelessWidget {
  const OpposeTextColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KText(
            text: "I Do Not Support",
            fontSize: 10.sp,
            fontWeight: FontWeight.w500),
        KText(text: "Nay | NO", fontSize: 10.sp, fontWeight: FontWeight.w500)
      ],
    );
  }
}

class VotedCountColumn extends StatelessWidget {
  const VotedCountColumn({
    super.key,
    this.votedCount,
  });
  final String? votedCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KText(
          text: votedCount ?? "0",
          fontSize: 10.sp,
        ),
        KText(
          text: "Voted",
          fontSize: 10.sp,
        )
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
