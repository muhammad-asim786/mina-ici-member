import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nima_comunity_member_app/core/constant/navigation_constant.dart';
import 'package:nima_comunity_member_app/screens/home_screen/home_screen.dart';
import 'package:nima_comunity_member_app/screens/wellcome_screen/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/constant/assets.dart';
import '../core/constant/colors.dart';
import '../core/constant/style.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () async{
     await getData();
    });
  }

  getData() async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
    var email = prefs.getString('email');
    var phone = prefs.getString('number');

     if(phone==null && email==null) {
      navigateAndRomvoe(const WelcomeScreen());
    }   else{
      navigateAndRomvoe(const HomeScreen());
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lighBlackColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 180.h,
          ),
          Column(
            children: [
              Image.asset(
                logo,
                height: 201.h,
                width: 165.w,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text('Protecting and Connecting us all',
                  style: textStylesubHeading.copyWith(
                      fontWeight: FontWeight.w400)),
              SizedBox(
                height: 150.h,
              ),
              Column(
                children: [
                  Text('I.C.I.',
                      style: textStylesubHeading.copyWith(fontSize: 30.sp)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text('Improving Community Information',
                      style: textStylesubHeading.copyWith(fontSize: 12.sp)),
                ],
              )
            ],
          ),
          SizedBox(
            height: 00.h,
          ),
        ],
      )),
    );
  }
}


