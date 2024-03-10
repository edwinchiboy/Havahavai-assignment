import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';
import 'package:havahavai_assignment/commons/widgets/getsture_detector.dart';
import 'package:havahavai_assignment/commons/widgets/image_renderer.dart';
import 'package:havahavai_assignment/dashboard/constants/images.dart';

class ContactAirportCardRow extends StatelessWidget {
  final String text;

  const ContactAirportCardRow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(text,
          style: HavahavaiTypography.heading3Style
              .copyWith(color: context.havahavaiColorScheme?.black1)),
      const Spacer(),
      HavahavaiGestureDetector(
          active: false,
          radius: 18.r,
          height: 50.h,
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
          activeColor: context.havahavaiColorScheme?.grey03,
          inactiveColor: context.havahavaiColorScheme?.grey03,
          child: ImageRenderer(
              height: 18.w, width: 18.w, url: DashBoardImages.call))
    ]);
  }
}
