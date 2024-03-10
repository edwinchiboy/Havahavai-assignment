import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';

import '../../../dashboard/constants/images.dart';
import '../../theme/typography.dart';
import '../../widgets/image_renderer.dart';

class HavahavaiExpandableCard extends StatelessWidget {
  final String title;
  final Widget content;
  final bool isExpanded;
  final VoidCallback? onTap;

  const HavahavaiExpandableCard(
      {super.key,
      required this.title,
      required this.content,
      required this.isExpanded,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title,
                style: HavahavaiTypography.heading4Style
                    .copyWith(color: context.havahavaiColorScheme?.black1)),
            const Spacer(),
            GestureDetector(
              onTap: onTap ?? () {},
              child: ImageRenderer(
                url: isExpanded
                    ? DashBoardImages.arrowUp
                    : DashBoardImages.downArrow,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Visibility(visible: isExpanded, child: content),
      ],
    );
  }
}
