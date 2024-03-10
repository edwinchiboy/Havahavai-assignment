import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';
import 'package:havahavai_assignment/common_data/constants/havahavai_strings.dart';
import 'package:havahavai_assignment/commons/components/cards/havahavai_card.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';
import 'package:havahavai_assignment/dashboard/widgets/contact_airport_card_row.dart';

class ContactAirportCard extends StatelessWidget {
  const ContactAirportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return HavahavaiCard(
        child: IntrinsicHeight(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 4.h),
      Text(HavahavaiString.contactAirport,
          style: HavahavaiTypography.heading1Style
              .copyWith(color: context.havahavaiColorScheme?.black1)),
      SizedBox(height: 16.h),
      const ContactAirportCardRow(text: HavahavaiString.police),
      SizedBox(height: 8.h),
      const Divider(),
      SizedBox(height: 8.h),
      const ContactAirportCardRow(text: HavahavaiString.lostAndFound),
      SizedBox(height: 8.h),
      const Divider(),
      SizedBox(height: 8.h),
      const ContactAirportCardRow(text: HavahavaiString.transport),
      SizedBox(height: 8.h),
      const Divider(),
      SizedBox(height: 8.h),
      const ContactAirportCardRow(text: HavahavaiString.headOffice)
    ])));
  }
}
