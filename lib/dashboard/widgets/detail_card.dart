import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';
import 'package:havahavai_assignment/common_data/constants/havahavai_strings.dart';
import 'package:havahavai_assignment/commons/components/cards/havahavai_card.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';
import 'package:havahavai_assignment/commons/widgets/image_renderer.dart';
import 'package:havahavai_assignment/dashboard/constants/images.dart';
import 'package:havahavai_assignment/dashboard/models/DetailsModel.dart';
import 'package:havahavai_assignment/dashboard/widgets/detils_card_colum.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<DetailsModel> details = [
      DetailsModel(
          imageUrl: DashBoardImages.cloud, title: "19 C", subTitle: "Cloudy"),
      DetailsModel(
          imageUrl: DashBoardImages.calendar, title: "30 Jan", subTitle: "Mon"),
      DetailsModel(
          imageUrl: DashBoardImages.time,
          title: "8:45 PM",
          subTitle: "GMT + 4"),
      DetailsModel(
          imageUrl: DashBoardImages.currency,
          title: "AED",
          subTitle: "1\$ = 367AED")
    ];
    return Container(
        margin: EdgeInsets.symmetric(vertical: 16.h),
        height: 285.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            image: const DecorationImage(
                image: AssetImage(DashBoardImages.dubia), fit: BoxFit.cover)),
        child: Column(children: [
          const Spacer(),
          HavahavaiCard(
              height: 130.h,
              padding: EdgeInsets.zero,
              margin: EdgeInsets.all(12.r),
              child: Column(children: [
                Flexible(
                    flex: 2,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            details.length,
                            (index) => DetailsCardColumn(
                              imageUrl: details[index].imageUrl ?? "",
                              title: details[index].title ?? "",
                              subTitle: details[index].subTitle ?? "",
                            ),
                          ),
                        ))),
                const Divider(),
                Flexible(
                    flex: 1,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 20.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(children: [
                                ImageRenderer(
                                    height: 16.r,
                                    width: 16.r,
                                    url: DashBoardImages.directionRight),
                                SizedBox(width: 8.w),
                                Text(HavahavaiString.getDirection,
                                    style: HavahavaiTypography.heading4Style
                                        .copyWith(
                                            color: context
                                                .havahavaiColorScheme?.black1))
                              ]),
                              SizedBox(width: 20.w),
                              const VerticalDivider(
                                  color: Colors.black, thickness: 2.0),
                              SizedBox(width: 20.w),
                              Row(children: [
                                ImageRenderer(
                                    height: 16.r,
                                    width: 16.r,
                                    url: DashBoardImages.callBlue),
                                SizedBox(width: 8.w),
                                Text(HavahavaiString.callAirport,
                                    style: HavahavaiTypography.heading4Style
                                        .copyWith(
                                            color: context
                                                .havahavaiColorScheme?.black1))
                              ])
                            ])))
              ]))
        ]));
  }
}
