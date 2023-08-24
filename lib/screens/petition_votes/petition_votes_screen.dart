import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nima_comunity_member_app/screens/petition_votes/petition_votes_provider.dart';


import 'package:provider/provider.dart';

import '../../core/constant/style.dart';
import '../widgets/app_custom_dropdown.dart';
import '../widgets/coomon_container.dart';

class PetitionVotesScreen extends StatelessWidget {
  const PetitionVotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PetitionProvider model = Provider.of<PetitionProvider>(context);
    return Column(
      children: [
        SizedBox(height: 7.h),
        AppCustomDropDown(
          verticalPadding: 5.h,
          height: 40.h,
          width: 347.w,
          validator: (val) {
            if (val == null) {
              return "PETITIONS  cannot be Empty";
            }
            return null;
          },
          value: model.petitionDropDownVal,
          hintText: "PETITIONS",
          items: model.petitionDropDownItemList,
          onChanged: (val) {
            model.getPetDropDownVal(val);
          },
        ),
        SizedBox(height: 15.h),
        KText(text: "Ward Petitions", fontSize: 14.sp),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SizedBox(
            height: 160.h,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1 / 1,
                ),
                itemBuilder: (context, index) {
                  return CommonContainer(
                    text: "Petition",
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
        SizedBox(height: 20.h),
        KText(text: "Precinct Petitions", fontSize: 14.sp),
        SizedBox(height: 15.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SizedBox(
            height: 160.h,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1 / 1,
                ),
                itemBuilder: (context, index) {
                  return CommonContainer(
                    text: "Petition",
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
        SizedBox(height: 20.h),
        KText(text: "County Petitions", fontSize: 14.sp),
        SizedBox(height: 15.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SizedBox(
            height: 160.h,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1 / 1,
                ),
                itemBuilder: (context, index) {
                  return CommonContainer(
                    text: "Petition",
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
