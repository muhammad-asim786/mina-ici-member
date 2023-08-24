import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/colors.dart';
import '../../core/constant/strings.dart';
import '../../core/constant/style.dart';



class AppCustomDropDown extends StatelessWidget {
  const AppCustomDropDown({
    super.key,
    this.alignment,
    this.width,
    this.height,
    this.minHeight,
    this.margin,
    this.focusNode,
    this.icon,
    this.hintText,
    this.prefixConstraints,
    this.items,
    this.onChanged,
    this.value,
    this.validator,
    this.verticalPadding,
    this.fontSize,
    this.radius,
  });

  final Alignment? alignment;
  final String? Function(Object?)? validator;

  final double? width;
  final double? height;
  final double? minHeight;
  final double? verticalPadding;
  final double? fontSize;
  final double? radius;

  final EdgeInsetsGeometry? margin;

  final FocusNode? focusNode;

  final Widget? icon;

  final String? hintText;

  final BoxConstraints? prefixConstraints;

  final List<String>? items;

  final Function(String)? onChanged;

  final Object? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 178.w,
      height: height ?? 25.h,
      constraints: BoxConstraints(
        minHeight: minHeight ?? 25.h,
        minWidth: width ?? 178.w,
      ),
      child: DropdownButtonFormField(
        validator: validator,
        icon: icon ??
            const Icon(
              Icons.arrow_drop_down,
              color: greenColor,
            ),
        iconSize: 20.sp,
        style: TextStyle(
            fontSize: fontSize ?? 10.sp,
            fontFamily: segoeUIfonts,
            fontWeight: FontWeight.bold,
            color: greenColor),
        decoration: _buildDecoration(),
        items: items?.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
              style: hintTextSyle,
            ),
          );
        }).toList(),
        onChanged: (value) {
          onChanged!(value.toString());
        },
        value: value,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
        hintText: hintText ?? "",
        hintStyle: TextStyle(
            fontSize: fontSize ?? 10.sp,
            fontFamily: segoeUIfonts,
            fontWeight: FontWeight.bold,
            color: greenColor),
        contentPadding: EdgeInsets.symmetric(
            horizontal: 10, vertical: verticalPadding ?? 0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 30.r),
          borderSide: const BorderSide(
            color: greenColor,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 30.r),
          borderSide: BorderSide(
            color: greenColor.withOpacity(0.3),
            width: 1,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 30.r),
          borderSide: BorderSide(
            color: greenColor.withOpacity(0.3),
            width: 1,
          ),
        ),
        isDense: true,
        filled: true,
        fillColor: fillColor.withOpacity(0.3));
  }
}

class AppCustomDropDown2 extends StatelessWidget {
  const AppCustomDropDown2({
    super.key,
    this.alignment,
    this.width,
    this.height,
    this.minHeight,
    this.margin,
    this.focusNode,
    this.icon,
    this.hintText,
    this.prefixConstraints,
    this.items,
    this.onChanged,
    this.value,
    this.validator,
    this.verticalPadding,
  });

  final Alignment? alignment;
  final String? Function(Object?)? validator;

  final double? width;
  final double? height;
  final double? minHeight;
  final double? verticalPadding;

  final EdgeInsetsGeometry? margin;

  final FocusNode? focusNode;

  final Widget? icon;

  final String? hintText;

  final BoxConstraints? prefixConstraints;

  final List<String>? items;

  final Function(String)? onChanged;

  final Object? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 178.w,
      height: height ?? 25.h,
      child: DropdownButtonFormField(
        validator: validator,
        icon: icon ??
            const Icon(
              Icons.arrow_drop_down,
              color: greenColor,
            ),
        iconSize: 20.sp,
        style: TextStyle(
            fontSize: 10.sp,
            fontFamily: segoeUIfonts,
            fontWeight: FontWeight.bold,
            color: greenColor),
        decoration: _buildDecoration(),
        items: items?.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
              style: hintTextSyle,
            ),
          );
        }).toList(),
        onChanged: (value) {
          onChanged!(value.toString());
        },
        value: value,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
        hintText: hintText ?? "",
        hintStyle: TextStyle(
            fontSize: 10.sp,
            fontFamily: segoeUIfonts,
            fontWeight: FontWeight.bold,
            color: greenColor),
        contentPadding: EdgeInsets.symmetric(
            horizontal: 10, vertical: verticalPadding ?? 0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: const BorderSide(
            color: greenColor,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide(
            color: greenColor.withOpacity(0.3),
            width: 1,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide(
            color: greenColor.withOpacity(0.3),
            width: 1,
          ),
        ),
        isDense: true,
        filled: true,
        fillColor: fillColor.withOpacity(0.3));
  }
}
