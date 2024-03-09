import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';

import '../../common_data/constants/havahavai_strings.dart';
import '../../commons/components/cards/havahavai_card.dart';
import '../../commons/theme/typography.dart';
import '../../commons/widgets/image_renderer.dart';
import '../constants/images.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 16.h),
        height: 285.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            image: const DecorationImage(
                image: AssetImage(DashBoardImages.dubia), fit: BoxFit.cover)),
        child: Column(
          children: [
            const Spacer(),
            HavahavaiCard(
                height: 130.h,
                padding: EdgeInsets.zero,
                margin: EdgeInsets.all(12.r),
                child: Column(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 16.w),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                ImageRenderer(
                                  height: 16.r,
                                  width: 16.r,
                                  url: DashBoardImages.cloud,
                                ),
                                SizedBox(height: 4.h),
                                Text("19 C",
                                    style: HavahavaiTypography.heading3Style
                                        .copyWith(
                                            color: context
                                                .havahavaiColorScheme?.black1)),
                                SizedBox(height: 4.h),
                                Text("Cloudy",
                                    style: HavahavaiTypography.body1Style
                                        .copyWith(
                                            color: context
                                                .havahavaiColorScheme?.grey02)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    Flexible(
                      flex: 1,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  ImageRenderer(
                                    height: 16.r,
                                    width: 16.r,
                                    url: DashBoardImages.directionRight,
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(HavahavaiString.getDirection,
                                      style: HavahavaiTypography.heading4Style
                                          .copyWith(
                                              color: context
                                                  .havahavaiColorScheme
                                                  ?.black1)),
                                ],
                              ),
                              SizedBox(width: 20.w),
                              const VerticalDivider(
                                color: Colors.black,
                                // Set the color of the line
                                thickness: 2.0, // Set the thickness of the line
                              ),
                              SizedBox(width: 20.w),
                              Row(
                                children: [
                                  ImageRenderer(
                                    height: 16.r,
                                    width: 16.r,
                                    url: DashBoardImages.callBlue,
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(HavahavaiString.callAirport,
                                      style: HavahavaiTypography.heading4Style
                                          .copyWith(
                                              color: context
                                                  .havahavaiColorScheme
                                                  ?.black1)),
                                ],
                              )
                            ],
                          )),
                    )
                  ],
                )),
          ],
        ));
  }
}
