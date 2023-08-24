import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import '../../core/constant/assets.dart';
import '../../core/constant/colors.dart';
import '../widgets/end_call_button.dart';

class LiveCallScreen extends StatelessWidget {
  const LiveCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lighBlackColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 18.h),
              Center(
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: borderColor,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: const Center(
                      child: Text(
                    "Live Call",
                    style: TextStyle(color: greenColor),
                  )),
                ),
              ),
              const Divider(color: greenColor, thickness: 1),
              SizedBox(height: 18.h),
              Image.asset(useImage, height: 292.h, width: 240.w),
              SizedBox(height: 18.h),
              Container(
                height: 80.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: borderColor,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add, color: greenColor, size: 20.sp),
                    const Text(
                      "Live Call",
                      style: TextStyle(color: greenColor),
                    ),
                  ],
                )),
              ),
              SizedBox(height: 18.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // Number of columns
                    mainAxisSpacing:
                        10.0, // Vertical spacing between grid items
                    crossAxisSpacing:
                        8.0, // Horizontal spacing between grid items
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        useImagetow, // Replace with your image path or network URL
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 18.h),
              const EndCallButton()
            ],
          ),
        ),
      ),
    );
  }
}
