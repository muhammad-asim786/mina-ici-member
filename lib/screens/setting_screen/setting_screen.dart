import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nima_comunity_member_app/screens/setting_screen/widget.dart';



import '../../core/constant/assets.dart';
import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';
import '../login_screen/widget.dart';
import '../widgets/coomon_container.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Just for timing controling;
    List<String> stringList = [
      "Assignments",
      "Departmental Calendar",
      "Watch Commander",
      "Reports",
      "Officer Roster",
      "Register Officer",
      "Inter Office Memorandum",
      "Department Instructors",
      "E.R.T. | S.O.D.S.W.A.T.",
      "Weapon Inventory",
      "Unit Inventory",
      "Radio Inventory"
    ];
    List<String> stringListSecond = [
      "Assignments",
      "Departmental Calendar",
      "Watch Commander",
      "Reports",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
    ];

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
                        width: 96.w,
                        height: 63.h,
                        child:  const Column(
                          children: [
                            RowTextWidget(
                                text1: "Membership:", text2: "Active"),
                            RowTextWidget(
                                text1: "Member:",
                                text2: "Struthers Police Dep"),
                            RowTextWidget(text1: "City:", text2: "Struthers"),
                            RowTextWidget(text1: "state:", text2: "Ohio"),
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              const KText(text: "Settings"),
              Image.asset(profileLogo, width: 150.w),
              SizedBox(height: 18.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyWidget(text: stringList[index]),
                            MyWidget(text: stringListSecond[index]),
                            const MyWidget(text: ""),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
