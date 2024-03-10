import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';
import 'package:havahavai_assignment/common_data/constants/havahavai_strings.dart';
import 'package:havahavai_assignment/commons/components/cards/havahavai_card.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_colors.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';
import 'package:havahavai_assignment/commons/widgets/image_renderer.dart';
import 'package:havahavai_assignment/dashboard/constants/images.dart';

class TaxiServiceCard extends StatelessWidget {
  const TaxiServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> taxiServices = [
      DashBoardImages.uber,
      DashBoardImages.careem,
      DashBoardImages.yango,
      DashBoardImages.blackLane
    ];
    return HavahavaiCard(
        elevation: 2.r,
        padding: EdgeInsets.all(16.r),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 4.h),
          Text(HavahavaiString.taxiService,
              style: context.havahavaiTextTheme?.heading1
                  .copyWith(color: context.havahavaiColorScheme?.black1)),
          SizedBox(height: 16.h),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8.r,
                  crossAxisSpacing: 8.r,
                  childAspectRatio: 3 / 2),
              itemCount: taxiServices.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                    width: 70.w,
                    height: 92.h,
                    child: HavahavaiCard(
                        padding: index != taxiServices.length - 1
                            ? EdgeInsets.all(8.r)
                            : EdgeInsets.zero,
                        height: 92.h,
                        elevation: 1.r,
                        child: Column(children: [
                          if (index == taxiServices.length - 1)
                            Column(children: [
                              Container(
                                width: 43.w,
                                height: 14.h,
                                decoration: BoxDecoration(
                                  color: HavahavaiColors.black1,
                                  border: Border.all(
                                      width: 1.r,
                                      color: context
                                              .havahavaiColorScheme?.black1 ??
                                          HavahavaiColors.black1),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(4.r),
                                      bottomRight: Radius.circular(4.r)),
                                ),
                                // child: Center(
                                //     child: Text("Luxury",
                                //         style: context.havahavaiTextTheme?.body2
                                //             .copyWith(
                                //                 color: HavahavaiColors.gold))),
                              ),
                              SizedBox(height: 12.h)
                            ]),
                          ImageRenderer(url: taxiServices[index]),
                          SizedBox(height: 8.h),
                          Center(
                              child: Text.rich(
                                  textAlign: TextAlign.center,
                                  TextSpan(
                                      text: '\$\$',
                                      style: context.havahavaiTextTheme?.body1
                                          .copyWith(
                                              color: context
                                                  .havahavaiColorScheme
                                                  ?.grey01),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "\$\$\$",
                                            style: context
                                                .havahavaiTextTheme?.body1
                                                .copyWith(
                                                    color: context
                                                        .havahavaiColorScheme
                                                        ?.grey04))
                                      ])))
                        ])));
              })
        ]));
  }
}
