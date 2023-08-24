import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';
import '../widgets/app_taxtfield_widget.dart';

class PetitionVoteScreen extends StatelessWidget {
  const PetitionVoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: lighBlackColor,
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              const KText(text: 'WARD PETITION'),
              SizedBox(height: 10.h),
              Container(
                width: 150.h,
                height: 120.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: greenColor,
                    width: 2.0,
                  ),
                ),
                child: Center(
                  child: KText(text: 'ORGANIZATION LOGO', fontSize: 8.sp),
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 100.w),
                child: Column(
                  children: [
                    AppTextFieldWidget(
                        controller: controller, hintText: 'Organization Name'),
                    SizedBox(height: 10.h),
                    AppTextFieldWidget(
                        controller: controller,
                        hintText: 'Organization Adress'),
                    SizedBox(height: 10.h),
                    AppTextFieldWidget(
                        controller: controller, hintText: 'Organization Name'),
                    SizedBox(height: 10.h),
                    AppTextFieldWidget(
                        controller: controller, hintText: 'Organization Name'),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
