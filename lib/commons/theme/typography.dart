import 'package:flutter/material.dart';

class ZillaTypography {
  static const interFontFamily = 'Inter';
  static const gilroyFontFamily = 'Inter';
  static const robotoFontFamily = 'Roboto';

  // titles

  static TextStyle title1Style = const TextStyle(
      fontFamily: robotoFontFamily, fontSize: 54, fontWeight: FontWeight.w700);

  static TextStyle title2Style = const TextStyle(
      fontFamily: robotoFontFamily, fontSize: 46, fontWeight: FontWeight.w700);

  // headline styles
  static TextStyle? heading1Style = const TextStyle(
      fontFamily: gilroyFontFamily, fontSize: 41, fontWeight: FontWeight.w700);

  static TextStyle? heading2Style = const TextStyle(
      fontFamily: gilroyFontFamily, fontSize: 36, fontWeight: FontWeight.w700);

  static TextStyle? heading3Style = const TextStyle(
      fontFamily: gilroyFontFamily, fontSize: 32, fontWeight: FontWeight.w700);

  static TextStyle heading4Style = const TextStyle(
      fontFamily: gilroyFontFamily, fontSize: 29, fontWeight: FontWeight.w700);

  static TextStyle heading5Style = const TextStyle(
      fontFamily: gilroyFontFamily, fontSize: 26, fontWeight: FontWeight.w700);

  static TextStyle heading6Style = const TextStyle(
      fontFamily: gilroyFontFamily, fontSize: 23, fontWeight: FontWeight.w700);

  // sub heading

  static TextStyle subheading1Style = const TextStyle(
      fontFamily: gilroyFontFamily, fontSize: 23, fontWeight: FontWeight.w800);

  static TextStyle subheading2Style = const TextStyle(
      fontFamily: gilroyFontFamily, fontSize: 30, fontWeight: FontWeight.w800);

  // body

  static TextStyle body2Style = const TextStyle(
      fontFamily: interFontFamily, fontSize: 16, fontWeight: FontWeight.w400);

  static TextStyle body3Style = const TextStyle(
      fontFamily: interFontFamily, fontSize: 14, fontWeight: FontWeight.w400);

  // button

  static TextStyle buttonMed = const TextStyle(
      fontFamily: interFontFamily, fontSize: 15, fontWeight: FontWeight.w600);

  static TextStyle button = const TextStyle(
      fontFamily: interFontFamily, fontSize: 14, fontWeight: FontWeight.w400);

  static TextStyle buttonSmall = const TextStyle(
      fontFamily: interFontFamily, fontSize: 12, fontWeight: FontWeight.w600);

  // caption

  static TextStyle caption = const TextStyle(
      fontFamily: interFontFamily, fontSize: 13, fontWeight: FontWeight.w400);

  // others
  static TextStyle others = const TextStyle(
      letterSpacing: 0.5,
      fontFamily: interFontFamily,
      fontSize: 11,
      fontWeight: FontWeight.w400);
}
