import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';
import 'package:havahavai_assignment/dashboard/widgets/self_parking_card_row.dart';
import 'package:havahavai_assignment/common_data/constants/havahavai_strings.dart';
import 'package:havahavai_assignment/commons/components/cards/havahavai_card.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';
import 'package:havahavai_assignment/commons/widgets/getsture_detector.dart';
import 'package:havahavai_assignment/dashboard/constants/images.dart';

class SelfParkingCard extends StatelessWidget {
  const SelfParkingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return HavahavaiCard(
        height: 234.h,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 4.h),
          Text(HavahavaiString.selfparking,
              style: HavahavaiTypography.heading1Style
                  .copyWith(color: context.havahavaiColorScheme?.black1)),
          SizedBox(height: 16.h),
          Row(children: [
            HavahavaiGestureDetector(
                active: true,
                padding: EdgeInsets.all(16.r),
                height: 40.h,
                activeColor: context.havahavaiColorScheme?.black1,
                inactiveColor: context.havahavaiColorScheme?.grey03,
                child: Text("T1",
                    style: HavahavaiTypography.heading2Style.copyWith(
                        color: Theme.of(context).colorScheme.secondary))),
            SizedBox(width: 16.w),
            HavahavaiGestureDetector(
                active: true,
                padding: EdgeInsets.all(16.r),
                height: 40.h,
                activeColor: context.havahavaiColorScheme?.black1,
                inactiveColor: context.havahavaiColorScheme?.grey03,
                child: Text("T2",
                    style: HavahavaiTypography.heading2Style.copyWith(
                        color: Theme.of(context).colorScheme.secondary)))
          ]),
          SizedBox(height: 16.h),
          const SelfParkingRow(
              imageUrl: DashBoardImages.twoWeeler,
              title: HavahavaiString.twoWheeler,
              charge: "AED 50/ day"),
          SizedBox(height: 16.h),
          const SelfParkingRow(
              imageUrl: DashBoardImages.car,
              title: HavahavaiString.carParking,
              charge: "AED 100/ day"),
          SizedBox(height: 16.h),
          const SelfParkingRow(
              imageUrl: DashBoardImages.electricCar,
              title: HavahavaiString.electricCarParking,
              charge: "AED 100/ day")
        ]));
  }
}
