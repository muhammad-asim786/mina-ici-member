import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nima_comunity_member_app/screens/task_and_order.dart/task_and_order_provider.dart';


import 'package:provider/provider.dart';

import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';
import '../widgets/app_custom_dropdown.dart';
import '../widgets/app_taxtfield_widget.dart';
import '../widgets/coomon_container.dart';
import '../widgets/custom_calendar.dart';

class TaskAndOrderScreen extends StatelessWidget {
  const TaskAndOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TaskAndOrderProvider model = Provider.of<TaskAndOrderProvider>(context);
    return SingleChildScrollView(
      child: Container(
        color: lighBlackColor,
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: CommonContainer(
                        text: "Task",
                        height: 32.h,
                        width: 72.w,
                        radius: 14.r,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  }),
            ),
            const Divider(color: greenColor, thickness: 1.5),
            SizedBox(height: 18.h),
            KText(
                text: "Calendar", fontSize: 15.sp, fontWeight: FontWeight.w500),
            SizedBox(height: 10.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: const CustomCalender()),
             
            SizedBox(height: 10.h),
            const Divider(color: greenColor, thickness: 1.5),
            SizedBox(height: 45.h),
            const KText(
              text: "Task & Orders",
              fontSize: 10,
              fontWeight: FontWeight.normal,
            ),
            SizedBox(height: 10.h),
            AppCustomDropDown(
              height: 40.h,
              width: 347.w,
              verticalPadding: 5.h,
              validator: (val) {
                if (val == null) {
                  return " Notifications cannot be Empty";
                }
                return null;
              },
              value: model.typeOFNotificationDropDownVal,
              hintText: "Type Of Notifications",
              items: model.typeOFNotificationDropDownItemList,
              onChanged: (val) {
                model.getTypeOFNotificationDropDownVal(val);
              },
            ),
            SizedBox(height: 10.h),
            AppCustomDropDown(
              height: 40.h,
              width: 347.w,
              verticalPadding: 5.h,
              validator: (val) {
                if (val == null) {
                  return "Send to  cannot be Empty";
                }
                return null;
              },
              value: model.sendTODropDownVal,
              hintText: "Send to",
              items: model.sendTODropDownList,
              onChanged: (val) {
                model.getSendTODropDownVal(val);
              },
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: AppTextFieldWidget(
                height: 35.h,
                controller: model.typeOfMessageController,
                hintText: "Type of Message",
              ),
            ),
            SizedBox(height: 25.h),
            CommonContainer(
              onTap: () {},
              height: 37.h,
              width: 88.w,
              fontSize: 14.sp,
              radius: 7.r,
              text: "Submit",
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
