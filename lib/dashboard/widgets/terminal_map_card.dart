import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';
import 'package:havahavai_assignment/common_data/constants/havahavai_strings.dart';
import 'package:havahavai_assignment/commons/components/cards/havahavai_card.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_colors.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';
import 'package:havahavai_assignment/commons/widgets/getsture_detector.dart';
import 'package:havahavai_assignment/dashboard/constants/images.dart';

class TerminalMapCard extends StatelessWidget {
  const TerminalMapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return HavahavaiCard(
        height: 214.h,
        elevation: 2.r,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 4.h),
          Text(HavahavaiString.terminalMap,
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
                        color: Theme.of(context).colorScheme.secondary))),
            SizedBox(width: 16.w),
            HavahavaiGestureDetector(
                active: true,
                padding: EdgeInsets.all(16.r),
                height: 40.h,
                activeColor: context.havahavaiColorScheme?.black1,
                inactiveColor: context.havahavaiColorScheme?.grey03,
                child: Text("T3",
                    style: HavahavaiTypography.heading2Style.copyWith(
                        color: Theme.of(context).colorScheme.secondary)))
          ]),
          SizedBox(height: 16.w),
          GestureDetector(
              onTap: () {},
              child: Container(
                  height: 74.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: const DecorationImage(
                          image: AssetImage(DashBoardImages.map),
                          fit: BoxFit.fitWidth)),
                  child: Center(
                      child: Container(
                          width: 61.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: context.havahavaiColorScheme?.black1,
                              border: Border.all(
                                  width: 1.r,
                                  color: context.havahavaiColorScheme?.black1 ??
                                      HavahavaiColors.black1),
                              borderRadius: BorderRadius.circular(18.r)),
                          child: Center(
                              child: Text(HavahavaiString.view,
                                  style: HavahavaiTypography.subheading1Style
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary)))))))
        ]));
  }
}
