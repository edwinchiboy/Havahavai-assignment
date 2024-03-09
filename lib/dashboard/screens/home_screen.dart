import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';

import '../../common_data/constants/havahavai_strings.dart';
import '../../commons/components/cards/havahavai_card.dart';
import '../../commons/theme/typography.dart';
import '../../commons/widgets/getsture_detector.dart';
import '../../commons/widgets/image_renderer.dart';
import '../constants/images.dart';
import '../widgets/detail_card.dart';
import '../widgets/header.dart';
import '../widgets/public_transport_card.dart';
import '../widgets/taxi_service_card.dart';

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
                    padding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                    activeColor: context.havahavaiColorScheme?.black1,
                    inactiveColor: context.havahavaiColorScheme?.grey03,
                    borderColor: context.havahavaiColorScheme?.grey03,
                    active: activeNavIndex == index,
                    borderWidth: 1.r,
                    radius: 18.r,
                    onTap: () {
                      setState(() {
                        activeNavIndex = index;
                      });
                    },
                    child: Text(navTexts[index],
                        style: HavahavaiTypography.subheading1Style.copyWith(
                            color: Theme.of(context).colorScheme.secondary)),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              const TaxiServiceCard(),
              SizedBox(height: 20.h),
              const PublicTransportCard(),
              SizedBox(height: 20.h),

              HavahavaiCard(
                height: 234.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(HavahavaiString.selfparking),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(8.r),
                        margin: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 4.w),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            width: 1.r,
                            color: Colors.amber,
                          ),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: const Text(
                          "T1",
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        ImageRenderer(
                          url: DashBoardImages.twoWeeler,
                        ),
                        Text(HavahavaiString.twoWheeler),
                        Spacer(),
                        Text("AED 50/ day"),
                        Icon(Icons.info_outline, color: Colors.deepOrange),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              HavahavaiCard(
                height: 214.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(HavahavaiString.terminalMap),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(8.r),
                        margin: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 4.w),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            width: 1.r,
                            color: Colors.amber,
                          ),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: const Text(
                          "T1",
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            image: const DecorationImage(
                              image: AssetImage(DashBoardImages.map),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          child: Center(
                            child: Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 1.r,
                                    color: Colors.amber,
                                  ),
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: Center(
                                child: Text(
                                  "View",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),

               HavahavaiCard(
                height: 265.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(HavahavaiString.foreignExchange),
                    Row(
                      children: [
                        Text("Travelex"),
                        Spacer(),
                        ImageRenderer(
                          url: DashBoardImages.arrowUp,
                        ),
                      ],
                    ),
                    Text("Terminal 3-"),
                    Text(
                        "Terminal 3-Airside Dept Downtown, Concourse B,Terminal 3, beside Winston Smoking room"),
                    Divider()
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              HavahavaiCard(
                height: 295.h,
                child: Column(
                  children: [
                    const Text(HavahavaiString.contactAirport),
                    Row(
                      children: [
                        const Text(HavahavaiString.police),
                        Container(
                          child: const ImageRenderer(
                            url: DashBoardImages.arrowUp,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8.r),
                      margin:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 4.w),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          width: 1.r,
                          color: Colors.amber,
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: const Text(
                        "T1",
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
