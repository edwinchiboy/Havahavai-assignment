import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';
import 'package:havahavai_assignment/common_data/constants/havahavai_strings.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';
import 'package:havahavai_assignment/commons/widgets/getsture_detector.dart';
import 'package:havahavai_assignment/commons/widgets/image_renderer.dart';
import 'package:havahavai_assignment/dashboard/constants/images.dart';
import 'package:havahavai_assignment/dashboard/widgets/contact_airport_card.dart';
import 'package:havahavai_assignment/dashboard/widgets/detail_card.dart';
import 'package:havahavai_assignment/dashboard/widgets/foreign_exchange_card.dart';
import 'package:havahavai_assignment/dashboard/widgets/header.dart';
import 'package:havahavai_assignment/dashboard/widgets/public_transport_card.dart';
import 'package:havahavai_assignment/dashboard/widgets/self_parking_card.dart';
import 'package:havahavai_assignment/dashboard/widgets/taxi_service_card.dart';
import 'package:havahavai_assignment/dashboard/widgets/terminal_map_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> navTexts = [
    HavahavaiString.transport,
    HavahavaiString.terminal,
    HavahavaiString.forex,
    HavahavaiString.contactInfo
  ];
  int activeNavIndex = 0;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
            child: StretchingOverscrollIndicator(
                axisDirection: AxisDirection.down,
                child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Header(),
                        const DetailCard(),
                        SizedBox(height: 20.h),
                        Wrap(
                            spacing: 12.r,
                            // Adjust spacing as needed (in logical pixels)
                            children: List.generate(
                                navTexts.length,
                                (index) => HavahavaiGestureDetector(
                                    height: 36.h,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8.h, horizontal: 12.w),
                                    activeColor:
                                        context.havahavaiColorScheme?.black1,
                                    inactiveColor:
                                        context.havahavaiColorScheme?.grey03,
                                    borderColor:
                                        context.havahavaiColorScheme?.grey03,
                                    active: activeNavIndex == index,
                                    borderWidth: 1.r,
                                    radius: 18.r,
                                    onTap: () {
                                      setState(() {
                                        activeNavIndex = index;
                                      });
                                    },
                                    child: Text(navTexts[index],
                                        style: HavahavaiTypography
                                            .subheading1Style
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary))))),
                        SizedBox(height: 20.h),
                        const TaxiServiceCard(),
                        SizedBox(height: 20.h),
                        const PublicTransportCard(),
                        SizedBox(height: 20.h),
                        const SelfParkingCard(),
                        SizedBox(height: 20.h),
                        const TerminalMapCard(),
                        SizedBox(height: 20.h),
                        const ForeignExchangeCard(),
                        SizedBox(height: 20.h),
                        const ContactAirportCard(),
                        SizedBox(height: 40.h),
                        Row(children: [
                          HavahavaiGestureDetector(
                              active: false,
                              radius: 10.r,
                              height: 48.h,
                              padding: EdgeInsets.all(16.r),
                              activeColor: context.havahavaiColorScheme?.black1,
                              inactiveColor:
                                  context.havahavaiColorScheme?.black1,
                              child: Row(children: [
                                ImageRenderer(
                                  height: 18.w,
                                  width: 18.w,
                                  url: DashBoardImages.transparentRight,
                                ),
                                SizedBox(width: 16.w),
                                Text(HavahavaiString.getDirection,
                                    style: HavahavaiTypography.heading2Style
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary))
                              ])),
                          SizedBox(width: 16.w),
                          HavahavaiGestureDetector(
                              active: false,
                              radius: 10.r,
                              height: 48.h,
                              padding: EdgeInsets.all(16.r),
                              activeColor: context.havahavaiColorScheme?.black1,
                              inactiveColor:
                                  context.havahavaiColorScheme?.black1,
                              child: Row(children: [
                                ImageRenderer(
                                  height: 18.w,
                                  width: 18.w,
                                  url: DashBoardImages.transparentRight,
                                ),
                                SizedBox(width: 16.w),
                                Text(HavahavaiString.getDirection,
                                    style: HavahavaiTypography.heading2Style
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary))
                              ]))
                        ])
                      ],
                    )))));
  }
}
