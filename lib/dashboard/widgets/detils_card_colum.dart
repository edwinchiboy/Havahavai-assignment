import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';
import 'package:havahavai_assignment/commons/widgets/image_renderer.dart';

class DetailsCardColumn extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  const DetailsCardColumn(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ImageRenderer(height: 16.r, width: 16.r, url: imageUrl),
      SizedBox(height: 4.h),
      Text(title,
          style: HavahavaiTypography.heading3Style
              .copyWith(color: context.havahavaiColorScheme?.black1)),
      SizedBox(height: 4.h),
      Text(subTitle,
          style: HavahavaiTypography.body1Style
              .copyWith(color: context.havahavaiColorScheme?.grey02)),
    ]);
  }
}
