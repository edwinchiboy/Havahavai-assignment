import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/dashboard/widgets/public_transport_card_row.dart';
import 'package:havahavai_assignment/common_data/constants/havahavai_strings.dart';
import 'package:havahavai_assignment/commons/components/cards/havahavai_card.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';
import 'package:havahavai_assignment/dashboard/constants/images.dart';
import 'package:havahavai_assignment/dashboard/models/DetailsModel.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_colors.dart';

class PublicTransportCard extends StatelessWidget {
  const PublicTransportCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<DetailsModel> details = [
      DetailsModel(
          imageUrl: DashBoardImages.metro,
          title: HavahavaiString.metro,
          subTitle: "6am-10pm"),
      DetailsModel(
          imageUrl: DashBoardImages.bus,
          title: HavahavaiString.bus,
          subTitle: "available 24hrs"),
    ];
    return HavahavaiCard(
        height: 165.h,
        elevation: 2.r,
        padding: EdgeInsets.all(16.r),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 4.h),
          Text(HavahavaiString.publicTransport,
              style: HavahavaiTypography.heading1Style
                  .copyWith(color: HavahavaiColors.black1)),
          SizedBox(height: 16.h),
          Expanded(
              child: ListView.builder(
                  itemCount: details.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(children: [
                      PublicTransportRow(
                          imageUrl: details[index].imageUrl ?? "",
                          title: details[index].title ?? "",
                          time: details[index].subTitle ?? ""),
                      if (index != details.length - 1) SizedBox(height: 8.h),
                      if (index != details.length - 1) const Divider(),
                      if (index != details.length - 1) SizedBox(height: 8.h),
                    ]); // Replace with your widget builder logic
                  }))
        ]));
  }
}
