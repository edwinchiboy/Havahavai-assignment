import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/common_data/constants/havahavai_strings.dart';
import 'package:havahavai_assignment/commons/components/cards/havahavai_card.dart';
import 'package:havahavai_assignment/commons/components/cards/havahavai_expandable_card.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';
import 'package:havahavai_assignment/dashboard/widgets/foreign_exchange_column.dart';

import 'package:havahavai_assignment/commons/theme/havahavai_colors.dart';

class ForeignExchangeCard extends StatefulWidget {
  const ForeignExchangeCard({super.key});

  @override
  State<ForeignExchangeCard> createState() => _ForeignExchangeCardState();
}

class _ForeignExchangeCardState extends State<ForeignExchangeCard> {
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;

  @override
  Widget build(BuildContext context) {
    return HavahavaiCard(
        elevation: 2.r,
        child: IntrinsicHeight(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 4.h),
          Text(HavahavaiString.foreignExchange,
              style: HavahavaiTypography.heading1Style
                  .copyWith(color: HavahavaiColors.black1)),
          SizedBox(height: 16.h),
          HavahavaiExpandableCard(
            title: "Travelex",
            content: const ForeignExchangeColumn(
                text1: "Terminal 3-",
                text2:
                    "Terminal 3-Airside Dept Downtown, Concourse B,Terminal 3, beside Winston Smoking room"),
            isExpanded: isExpanded1,
            onTap: () {
              setState(() {
                isExpanded1 = !isExpanded1;
              });
            },
          ),
          SizedBox(height: 8.h),
          const Divider(),
          SizedBox(height: 8.h),
          HavahavaiExpandableCard(
              title: "Al Ansari Exxchange",
              content: const ForeignExchangeColumn(
                text1: "Terminal 3-",
                text2:
                    "Terminal 3-Airside Dept Downtown, Concourse B,Terminal 3, beside Winston Smoking room",
              ),
              isExpanded: isExpanded2,
              onTap: () {
                setState(() {
                  isExpanded2 = !isExpanded2;
                });
              }),
          SizedBox(height: 8.h),
          const Divider(),
          SizedBox(height: 8.h),
          HavahavaiExpandableCard(
              title: "Emirates NBD",
              content: const ForeignExchangeColumn(
                  text1: "Terminal 3-",
                  text2:
                      "Terminal 3-Airside Dept Downtown, Concourse B,Terminal 3, beside Winston Smoking room"),
              isExpanded: isExpanded3,
              onTap: () {
                setState(() {
                  isExpanded3 = !isExpanded3;
                });
              })
        ])));
  }
}
