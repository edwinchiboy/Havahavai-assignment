import 'package:flutter/material.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';

class HavahavaiTextTheme extends ThemeExtension<HavahavaiTextTheme> {
  const HavahavaiTextTheme(
      {required this.heading1,
      required this.heading2,
      required this.heading3,
      required this.heading4,
      required this.subheading1,
      required this.subheading2,
      required this.body1,
      required this.body2,
      required this.others});

  final TextStyle heading1;
  final TextStyle heading2;
  final TextStyle heading3;
  final TextStyle heading4;
  final TextStyle subheading1;
  final TextStyle subheading2;
  final TextStyle body1;
  final TextStyle body2;

  final TextStyle others;

  @override
  ThemeExtension<HavahavaiTextTheme> copyWith(
          {TextStyle? heading1Style,
          TextStyle? heading2Style,
          TextStyle? heading3Style,
          TextStyle? heading4Style,
          TextStyle? subheading1Style,
          TextStyle? subheading2Style,
          TextStyle? body1Style,
          TextStyle? body2Style,
          TextStyle? others}) =>
      HavahavaiTextTheme(
        heading1: heading1Style ?? heading1,
        heading2: heading2Style ?? heading1,
        heading3: heading3Style ?? heading3,
        heading4: heading4Style ?? heading4,
        subheading1: subheading1Style ?? subheading1,
        subheading2: subheading2Style ?? subheading2,
        body1: body1Style ?? body1,
        body2: body2Style ?? body2,
        others: others ?? this.others,
      );

  @override
  ThemeExtension<HavahavaiTextTheme> lerp(
      ThemeExtension<HavahavaiTextTheme>? other, double t) {
    if (other is! HavahavaiTextTheme) {
      return this;
    }
    return HavahavaiTextTheme(
      heading1: TextStyle.lerp(heading1, other.heading1, t) ??
          HavahavaiTypography.heading1Style,
      heading2: TextStyle.lerp(heading2, other.heading2, t) ??
          HavahavaiTypography.heading2Style,
      heading3: TextStyle.lerp(heading3, other.heading3, t) ??
          HavahavaiTypography.heading3Style,
      heading4: TextStyle.lerp(heading4, other.heading4, t) ??
          HavahavaiTypography.heading4Style,
      subheading1: TextStyle.lerp(subheading1, other.subheading1, t) ??
          HavahavaiTypography.subheading1Style,
      subheading2: TextStyle.lerp(subheading2, other.subheading2, t) ??
          HavahavaiTypography.subheading2Style,
      body1: TextStyle.lerp(body1, other.body1, t) ??
          HavahavaiTypography.body1Style,
      body2: TextStyle.lerp(body2, other.body2, t) ??
          HavahavaiTypography.body2Style,
      others:
          TextStyle.lerp(others, other.others, t) ?? HavahavaiTypography.others,
    );
  }
}
