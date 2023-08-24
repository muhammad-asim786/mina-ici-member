import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nima_comunity_member_app/core/constant/strings.dart';
import 'package:nima_comunity_member_app/screens/community_leader_profile_screen.dart/widgets.dart';

import 'package:provider/provider.dart';

import '../../core/constant/assets.dart';
import '../../core/constant/colors.dart';
import '../../core/constant/style.dart';
import '../widgets/app_custom_dropdown.dart';
import '../widgets/app_taxtfield_widget.dart';
import '../widgets/circular_progress.dart';
import '../widgets/coomon_container.dart';
import 'community_leader_profile_provider.dart';

// ignore: must_be_immutable
class CommunityLeaderProfile extends StatelessWidget {
  CommunityLeaderProfile({super.key});
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<CommunityLeaderProfileProvider>(
        builder: (context, model, child) {
      return Scaffold(
        backgroundColor: lighBlackColor,
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 99.w),
                  child: Column(
                    children: [
                      const AppLogoWidget(),
                      SizedBox(height: 20.h),
                      const ProfileLogoContainer(),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                //DropDown Button
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 99.w),
                  child: Column(
                    children: [
                      // Community ward

                      // Community Precinct

                      kSizedBox,
                      AppTextFieldWidget(
                        controller: model.firstNameController,
                        hintText: "First Name",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter first name text';
                          }
                          return null;
                        },
                      ),

                      kSizedBox,
                      AppTextFieldWidget(
                          controller: model.aliasController,
                          hintText: "ALias (Optional"),

                      kSizedBox,
                      AppTextFieldWidget(
                        controller: model.middleNameController,
                        hintText: "Middle Name",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter middle name text';
                          }
                          return null;
                        },
                      ),

                      kSizedBox,
                      AppTextFieldWidget(
                        controller: model.lastNameController,
                        hintText: "Last Name",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter last name text';
                          }
                          return null;
                        },
                      ),
                      kSizedBox,
                      AppTextFieldWidget(
                        controller: model.emailController,
                        hintText: "Email",
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Email cannot be Empty");
                          }
                          if (!model.emailRegex.hasMatch(value)) {
                            return ("Enter Valid Email");
                          }
                          return null;
                        },
                      ),
                      kSizedBox,
                      //phone number field
                      SizedBox(
                        height: 25.h,
                        child: PhoneField(model: model),
                      ),

                      kSizedBox,
                      AppTextFieldWidget(
                        controller: model.userNameController,
                        hintText: "User Name",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter last name text';
                          }
                          return null;
                        },
                      ),
                      kSizedBox,
                      AppTextFieldWidget(
                        controller: model.passwordController,
                        hintText: "Password",
                        validator: (val) {
                          if (val!.isEmpty) {
                            return ("Password is required for signup");
                          }
                          if (!model.passwordRegex.hasMatch(val)) {
                            return ("Enter Valid Password(Min. 6 Character)");
                          }
                          return null;
                        },
                      ),
                      kSizedBox,
                      AppTextFieldWidget(
                        controller: model.confirmPasswordController,
                        hintText: "Confirm Password",
                        validator: (val) {
                          if (model.passwordController.text !=
                              model.confirmPasswordController.text) {
                            return ("Password and Confirm Password must be same");
                          }
                          return null;
                        },
                      ),
                      kSizedBox,

                      Container(
                        height: 40.h,
                        width: 178.w,
                        decoration: BoxDecoration(
                            color: fillColorwithOpicity,
                            borderRadius: BorderRadius.circular(23.r)),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: AppTextFiled2(
                                hintText: "Month",
                                controller: model.monthController,
                              ),
                            ),
                            const VerticalDivider(
                              color: greenColor,
                              thickness: 2,
                              indent: 2,
                              endIndent: 2,
                            ),
                            Expanded(
                              flex: 1,
                              child: AppTextFiled2(
                                hintText: "Date",
                                controller: model.dayController,
                              ),
                            ),
                            const VerticalDivider(
                              color: greenColor,
                              thickness: 2,
                              indent: 2,
                              endIndent: 2,
                            ),
                            Expanded(
                              flex: 1,
                              child: AppTextFiled2(
                                hintText: "Year",
                                controller: model.yearController,
                              ),
                            ),
                          ],
                        ),
                      ),

                      kSizedBox,
                      AppTextFieldWidget(
                        controller: model.addressController,
                        hintText: "Legal Address",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter address';
                          }
                          return null;
                        },
                      ),
                      kSizedBox,
                      Container(
                        height: 40.h,
                        width: 178.w,
                        decoration: BoxDecoration(
                            color: fillColorwithOpicity,
                            borderRadius: BorderRadius.circular(23.r)),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: AppTextFiled2(
                                hintText: "City",
                                controller: model.cityController,
                              ),
                            ),
                            const VerticalDivider(
                              color: greenColor,
                              thickness: 2,
                              indent: 2,
                              endIndent: 2,
                            ),
                            Expanded(
                              flex: 1,
                              child: AppTextFiled2(
                                hintText: "State",
                                controller: model.stateController,
                              ),
                            ),
                            const VerticalDivider(
                              color: greenColor,
                              thickness: 2,
                              indent: 2,
                              endIndent: 2,
                            ),
                            Expanded(
                              flex: 1,
                              child: AppTextFiled2(
                                hintText: "Zip",
                                controller: model.zipCodeController,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 35.h),
                      KText(text: "Emergency Contact", fontSize: 15.sp),
                      SizedBox(height: 8.h),
                      AppCustomDropDown(
                        height: 40.h,
                        verticalPadding: 10.h,
                        value: model.relationDropDownVal,
                        hintText: "Relation",
                        items: model.relationDropDownItemList,
                        onChanged: (val) {
                          model.getrelationDropDownVal(val);
                        },
                      ),
                      kSizedBox,
                      AppTextFieldWidget(
                        controller: model.emrFirstNameController,
                        hintText: "First Name",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter Emergency first name';
                          }
                          return null;
                        },
                      ),
                      kSizedBox,
                      AppTextFieldWidget(
                        controller: model.emrLastNameController,
                        hintText: "Last Name",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter Emergency last name';
                          }
                          return null;
                        },
                      ),
                      kSizedBox,
                      AppTextFieldWidget(
                        controller: model.emrAddressController,
                        hintText: "Address",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter Emergency address';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 15.h),
                      KText(
                          text: "Select slot to scan I.D. Card. ",
                          fontSize: 10.sp),
                      SizedBox(height: 13.h),
                      KText(
                          text: "State I.D. | Drivers License I.D.",
                          fontSize: 6.sp),
                      SizedBox(height: 4.h),
                      CommonContainer(
                        width: 131.w,
                        height: 81.h,
                        radius: 30.r,
                        color: greenColor,
                        widget:
                            Image.asset(scancard, height: 33.h, width: 46.w),
                      ),

                      SizedBox(height: 21.h),
                      model.visible2
                          ? const KCircularProgress()
                          : CommonContainer(
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  model.
                                  verifyPhoneNumber(
                                      phoneNumber: model.numberController.text,
                                      context: context
                                      );
                                }
                              },
                              text: "SUBMIT",
                            ),
                    ],
                  ),
                ),

                SizedBox(height: 16.h)
              ],
            ),
          ),
        ),
      );
    });
  }
}

// ignore: must_be_immutable
class PhoneField extends StatelessWidget {
  PhoneField({
    super.key,
    required this.model,
  });
  CommunityLeaderProfileProvider model;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      validator: (value) {
        if (value == null) {
          return 'Please enter phone number';
        }
        return null;
      },

      disableLengthCheck: true,
      textAlignVertical: TextAlignVertical.center,

      style: TextStyle(
          color: greenColor,
          fontSize: 10.sp,
          fontFamily: segoeUIfonts,
          fontWeight: FontWeight.bold),

      showDropdownIcon: true,
      showCountryFlag: false,
      cursorColor: greenColor,
      cursorHeight: 15.h,
      dropdownIcon: const Icon(
        Icons.arrow_drop_down,
        color: greenColor,
      ),

      dropdownTextStyle: TextStyle(
          color: greenColor,
          fontSize: 10.sp,
          fontFamily: segoeUIfonts,
          fontWeight: FontWeight.bold),

      // dropdownDecoration: BoxDecoration(color:Colors.lightGreen ),

      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          top: 10.h,
        ),
        fillColor: fillColorwithOpicity,
        hintText: "Phone Number",
        hintStyle: TextStyle(
            color: greenColor,
            fontSize: 10.sp,
            fontFamily: segoeUIfonts,
            fontWeight: FontWeight.bold),
        filled: true,
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: greenColorWithOpicity,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: greenColorWithOpicity,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      initialCountryCode: 'PK',
      onChanged: (phone) {
        model.numberController.text = phone.completeNumber;
      },
    );
  }
}
