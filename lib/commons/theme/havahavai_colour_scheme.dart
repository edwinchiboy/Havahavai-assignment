import 'package:flutter/material.dart';

class HavahavaiColorScheme extends ThemeExtension<HavahavaiColorScheme> {
  const HavahavaiColorScheme({
    required this.grey01,
    required this.grey02,
    required this.grey03,
    required this.grey04,
    required this.black1,
    required this.blue01,
  });

  final Color grey01;
  final Color grey02;
  final Color grey03;
  final Color grey04;
  final Color black1;
  final Color blue01;

  @override
  ThemeExtension<HavahavaiColorScheme> copyWith({
    Color? grey01,
    Color? grey02,
    Color? grey03,
    Color? grey04,
    Color? black1,
    Color? blue01,
  }) =>
      HavahavaiColorScheme(
        grey01: grey01 ?? this.grey01,
        grey02: grey02 ?? this.grey02,
        grey03: grey03 ?? this.grey03,
        grey04: grey04 ?? this.grey04,
        black1: black1 ?? this.black1,
        blue01: blue01 ?? this.blue01,
      );

  @override
  ThemeExtension<HavahavaiColorScheme> lerp(
      ThemeExtension<HavahavaiColorScheme>? other, double t) {
    if (other is! HavahavaiColorScheme) {
      return this;
    }
    return HavahavaiColorScheme(
      grey01: Color.lerp(grey01, other.grey01, t) ?? Colors.white,
      grey02: Color.lerp(grey02, other.grey02, t) ?? Colors.white,
      grey03: Color.lerp(grey03, other.grey03, t) ?? Colors.white,
      grey04: Color.lerp(grey04, other.grey04, t) ?? Colors.white,
      black1: Color.lerp(black1, other.black1, t) ?? Colors.white,
      blue01: Color.lerp(blue01, other.blue01, t) ?? Colors.white,
    );
  }
}
