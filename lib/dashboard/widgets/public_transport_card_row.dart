import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';

import '../../commons/theme/typography.dart';
import '../../commons/widgets/image_renderer.dart';
import '../constants/images.dart';

class PublicTransportRow extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;

  const PublicTransportRow(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageRenderer(height: 18.r, width: 16.r, url: imageUrl),
        SizedBox(width: 16.w),
        Text(title,
            style: HavahavaiTypography.heading3Style
                .copyWith(color: context.havahavaiColorScheme?.black1)),
        const Spacer(),
        Text(time,
            style: HavahavaiTypography.body1Style
                .copyWith(color: context.havahavaiColorScheme?.grey02)),
        SizedBox(width: 16.w),
        ImageRenderer(
          height: 12.r,
          width: 11.r,
          url: DashBoardImages.arrowRight,
        ),
      ],
    );
  }
}
