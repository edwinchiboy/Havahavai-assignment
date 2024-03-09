import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ZillaTypography {
  static const appleEmojiFontFamily = 'AppleEmoji';
  static const uberMoveFontFamily = 'UberMove';

  // headline styles

  static TextStyle heading1Style = TextStyle(
      fontFamily: uberMoveFontFamily,
      fontSize: 20.sp,
      fontWeight: FontWeight.w700);

  static TextStyle? heading2Style = TextStyle(
      fontFamily: uberMoveFontFamily,
      fontSize: 16.sp,
      fontWeight: FontWeight.w700);

  static TextStyle? heading3Style = TextStyle(
      fontFamily: uberMoveFontFamily,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400);

  static TextStyle? heading4Style = TextStyle(
      fontFamily: uberMoveFontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400);

  // sub heading

  static TextStyle subheading1Style = TextStyle(
      fontFamily: uberMoveFontFamily,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400);

  static TextStyle subheading2Style = TextStyle(
      fontFamily: appleEmojiFontFamily,
      fontSize: 12.sp,
      fontWeight: FontWeight.w300);

  // body

  static TextStyle body1Style = TextStyle(
      fontFamily: uberMoveFontFamily,
      fontSize: 11.sp,
      fontWeight: FontWeight.w400);

  // others
  static TextStyle others = const TextStyle(
      letterSpacing: 0.5,
      fontFamily: uberMoveFontFamily,
      fontSize: 11,
      fontWeight: FontWeight.w400);
}
