import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';

import '../../common_data/constants/havahavai_strings.dart';
import '../../commons/components/cards/havahavai_card.dart';
import '../../commons/theme/typography.dart';
import '../../commons/widgets/image_renderer.dart';
import '../constants/images.dart';
import '../widgets/detail_card.dart';
import '../widgets/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              const Text("Tab bar"),
              HavahavaiCard(
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(HavahavaiString.taxiService),
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return const HavahavaiCard(
                              child: Column(
                                children: [Text("Uber"), Text("Dollars")],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              HavahavaiCard(
                height: 200,
                child: Column(
                  children: [
                    const Text(HavahavaiString.publicTransport),
                    SizedBox(
                      height: 16.h,
                    ),
                    const Row(
                      children: [
                        ImageRenderer(
                          url: DashBoardImages.metro,
                        ),
                        Text(HavahavaiString.metro),
                        Spacer(),
                        Text("6am-10pm"),
                        ImageRenderer(
                          url: DashBoardImages.arrowRight,
                        ),
                      ],
                    ),
                    const Divider()
                  ],
                ),
              ),
              HavahavaiCard(
                height: 400,
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
              HavahavaiCard(
                height: 300,
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
              const HavahavaiCard(
                height: 300,
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
              HavahavaiCard(
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
