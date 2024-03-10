import 'package:flutter/material.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_colors.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_colour_scheme.dart';
import 'package:havahavai_assignment/commons/theme/havahavia_text_theme.dart';

ThemeData havahavaiTheme() {
  const uberMoveFontFamily = 'UberMove';

  return ThemeData(
    fontFamily: uberMoveFontFamily,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: const ButtonThemeData(buttonColor: HavahavaiColors.black1),
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: HavahavaiColors.primary,
        onPrimary: HavahavaiColors.primary,
        secondary: HavahavaiColors.secondary,
        onSecondary: HavahavaiColors.secondary,
        tertiary: HavahavaiColors.primary,
        onTertiary: HavahavaiColors.primary,
        error: HavahavaiColors.primary,
        onError: HavahavaiColors.primary,
        outline: HavahavaiColors.grey01,
        background: HavahavaiColors.secondary,
        onBackground: HavahavaiColors.secondary,
        surface: HavahavaiColors.secondary,
        onSurface: HavahavaiColors.secondary,
        secondaryContainer: HavahavaiColors.secondary,
        primaryContainer: HavahavaiColors.secondary),
    textTheme: TextTheme(
      displayLarge: HavahavaiTypography.heading1Style,
      displayMedium: HavahavaiTypography.heading2Style,
      displaySmall: HavahavaiTypography.heading3Style,
      headlineMedium: HavahavaiTypography.heading4Style,
      titleSmall: HavahavaiTypography.subheading2Style,
      titleMedium: HavahavaiTypography.subheading1Style,
      bodyLarge: HavahavaiTypography.body1Style,
    ),
  ).copyWith(
    extensions: <ThemeExtension<dynamic>>[
      const HavahavaiColorScheme(
          grey01: HavahavaiColors.grey01,
          grey02: HavahavaiColors.grey02,
          grey03: HavahavaiColors.grey03,
          grey04: HavahavaiColors.grey04,
          black1: HavahavaiColors.black1,
          blue01: HavahavaiColors.blue01),
      HavahavaiTextTheme(
          heading1: HavahavaiTypography.heading1Style,
          heading2: HavahavaiTypography.heading2Style,
          heading3: HavahavaiTypography.heading3Style,
          heading4: HavahavaiTypography.heading4Style,
          subheading1: HavahavaiTypography.subheading1Style,
          subheading2: HavahavaiTypography.subheading2Style,
          body1: HavahavaiTypography.body1Style,
          others: HavahavaiTypography.others),
    ],
  );
}

ThemeData havahavaiDarkTheme() {
  const uberMoveFontFamily = 'UberMove';

  return ThemeData(
    fontFamily: uberMoveFontFamily,
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: const ButtonThemeData(buttonColor: HavahavaiColors.black1),
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: HavahavaiColors.primary,
        onPrimary: HavahavaiColors.primary,
        secondary: HavahavaiColors.primary,
        onSecondary: HavahavaiColors.primary,
        tertiary: HavahavaiColors.primary,
        onTertiary: HavahavaiColors.primary,
        error: HavahavaiColors.primary,
        onError: HavahavaiColors.primary,
        outline: HavahavaiColors.primary,
        background: HavahavaiColors.primary,
        onBackground: HavahavaiColors.primary,
        surface: HavahavaiColors.primary,
        onSurface: HavahavaiColors.primary,
        secondaryContainer: HavahavaiColors.primary,
        primaryContainer: HavahavaiColors.primary),
    textTheme: TextTheme(
      displayLarge: HavahavaiTypography.heading1Style,
      displayMedium: HavahavaiTypography.heading2Style,
      displaySmall: HavahavaiTypography.heading3Style,
      headlineMedium: HavahavaiTypography.heading4Style,
      titleSmall: HavahavaiTypography.subheading2Style,
      titleMedium: HavahavaiTypography.subheading1Style,
      bodyLarge: HavahavaiTypography.body1Style,
    ),
  ).copyWith(
    extensions: <ThemeExtension<dynamic>>[
      const HavahavaiColorScheme(
          grey01: HavahavaiColors.grey01,
          grey02: HavahavaiColors.grey02,
          grey03: HavahavaiColors.grey03,
          grey04: HavahavaiColors.grey04,
          black1: HavahavaiColors.black1,
          blue01: HavahavaiColors.blue01),
      HavahavaiTextTheme(
          heading1: HavahavaiTypography.heading1Style,
          heading2: HavahavaiTypography.heading2Style,
          heading3: HavahavaiTypography.heading3Style,
          heading4: HavahavaiTypography.heading4Style,
          subheading1: HavahavaiTypography.subheading1Style,
          subheading2: HavahavaiTypography.subheading2Style,
          body1: HavahavaiTypography.body1Style,
          others: HavahavaiTypography.others),
    ],
  );
}

extension BuildContextExtension on BuildContext {
  HavahavaiColorScheme? get havahavaiColorScheme {
    return Theme.of(this).extension<HavahavaiColorScheme>();
  }

  HavahavaiTextTheme? get havahavaiTextTheme {
    return Theme.of(this).extension<HavahavaiTextTheme>();
  }
}
