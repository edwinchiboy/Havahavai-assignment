import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';
import 'package:havahavai_assignment/dashboard/widgets/public_transport_card_row.dart';
import 'package:havahavai_assignment/common_data/constants/havahavai_strings.dart';
import 'package:havahavai_assignment/commons/components/cards/havahavai_card.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';
import 'package:havahavai_assignment/dashboard/constants/images.dart';

class PublicTransportCard extends StatelessWidget {
  const PublicTransportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return HavahavaiCard(
        height: 165.h,
        padding: EdgeInsets.all(16.r),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 4.h),
          Text(HavahavaiString.publicTransport,
              style: HavahavaiTypography.heading1Style
                  .copyWith(color: context.havahavaiColorScheme?.black1)),
          SizedBox(height: 16.h),
          const PublicTransportRow(
              imageUrl: DashBoardImages.metro,
              title: HavahavaiString.metro,
              time: "6am-10pm"),
          SizedBox(height: 8.h),
          const Divider(),
          SizedBox(height: 8.h),
          const PublicTransportRow(
              imageUrl: DashBoardImages.bus,
              title: HavahavaiString.bus,
              time: "available 24hrs")
        ]));
  }
}
