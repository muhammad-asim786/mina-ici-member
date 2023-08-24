import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';
import '../widgets/coomon_container.dart';

class CommunityLeadersScreen extends StatelessWidget {
  const CommunityLeadersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SizedBox(height: 10.h),

          //ward leaders Gridview
          KText(
            text: "Ward Leaders",
            fontSize: 14.sp,
          ),
          SizedBox(height: 10.h),
          SizedBox(
            height: 160.h,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 0,
                  childAspectRatio: 1 / 1,
                  mainAxisExtent: 80,
                ),
                itemBuilder: (context, index) {
                  return index == 0
                      ? Column(
                          children: [
                            Container(
                              height: 54.h,
                              width: 54.w,
                              decoration: BoxDecoration(
                                color: fillColorwithOpicity,
                                borderRadius: BorderRadius.circular(13.r),
                                image: const DecorationImage(
                                  image: AssetImage("assets/profile1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            KText(text: "Jef Folacio", fontSize: 8.sp)
                          ],
                        )
                      : Column(
                          children: [
                            CommonContainer(
                              text: "",
                              height: 54.h,
                              width: 54.w,
                              radius: 13.r,
                            ),
                            KText(text: "", fontSize: 10.sp)
                          ],
                        );
                }),
          ),
          SizedBox(height: 40.h),
          // Precinct Leaders Gridview
          KText(text: "Precinct Leaders ", fontSize: 14.sp),
          SizedBox(height: 10.h),
          SizedBox(
            height: 160.h,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 0,
                  childAspectRatio: 1 / 1,
                  mainAxisExtent: 90,
                ),
                itemBuilder: (context, index) {
                  return index == 0
                      ? Column(
                          children: [
                            Container(
                              height: 54.h,
                              width: 54.w,
                              decoration: BoxDecoration(
                                color: fillColorwithOpicity,
                                borderRadius: BorderRadius.circular(13.r),
                                image: const DecorationImage(
                                  image: AssetImage("assets/profile1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            KText(text: "Honor Phillips", fontSize: 8.sp)
                          ],
                        )
                      : Column(
                          children: [
                            CommonContainer(
                              text: "",
                              height: 54.h,
                              width: 54.w,
                              radius: 13.r,
                            ),
                            KText(text: "", fontSize: 10.sp)
                          ],
                        );
                }),
          ),
          //County leaders Gridview

          SizedBox(height: 40.h),
          // Precinct Leaders Gridview
          KText(text: "County Leaders", fontSize: 14.sp),
          SizedBox(height: 10.h),
          SizedBox(
            height: 150.h,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 0,
                  childAspectRatio: 1 / 1,
                  mainAxisExtent: 90,
                ),
                itemBuilder: (context, index) {
                  return index == 0
                      ? Column(
                          children: [
                            Container(
                              height: 54.h,
                              width: 54.w,
                              decoration: BoxDecoration(
                                color: fillColorwithOpicity,
                                borderRadius: BorderRadius.circular(13.r),
                                image: const DecorationImage(
                                  image: AssetImage("assets/profile1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            KText(text: "Rodney Jacobs", fontSize: 7.sp)
                          ],
                        )
                      : Column(
                          children: [
                            CommonContainer(
                              text: "",
                              height: 54.h,
                              width: 54.w,
                              radius: 13.r,
                            ),
                            KText(text: "", fontSize: 10.sp)
                          ],
                        );
                }),
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
