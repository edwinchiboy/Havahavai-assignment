import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';

import 'package:havahavai_assignment/commons/theme/typography.dart';
import 'package:havahavai_assignment/commons/widgets/image_renderer.dart';

import 'package:havahavai_assignment/commons/theme/havahavai_colors.dart';

class SelfParkingRow extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String charge;

  const SelfParkingRow(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.charge});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ImageRenderer(height: 14.h, width: 24.w, url: imageUrl),
      SizedBox(width: 16.w),
      Text(title,
          style: context.havahavaiTextTheme?.heading4
              .copyWith(color: context.havahavaiColorScheme?.grey01)),
      const Spacer(),
      Text(charge,
          style: context.havahavaiTextTheme?.heading4
              .copyWith(color: context.havahavaiColorScheme?.black1)),
      SizedBox(width: 4.w),
      Icon(Icons.info_outline,
          size: 11.r, color: context.havahavaiColorScheme?.grey01)
    ]);
  }
}
