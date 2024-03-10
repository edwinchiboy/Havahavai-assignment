import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';
import 'package:havahavai_assignment/common_data/constants/havahavai_strings.dart';
import 'package:havahavai_assignment/commons/theme/typography.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 16.h),
      Text(HavahavaiString.dubiaAirport,
          style: HavahavaiTypography.heading1Style
              .copyWith(color: context.havahavaiColorScheme?.black1)),
      SizedBox(height: 8.h),
      Row(children: [
        Text("${HavahavaiString.dubia} .",
            style: HavahavaiTypography.subheading2Style
                .copyWith(color: context.havahavaiColorScheme?.grey01)),
        const Text(" 🇦🇪 ", style: TextStyle(fontSize: 12)),
        Text(HavahavaiString.unitedAE,
            style: HavahavaiTypography.subheading2Style
                .copyWith(color: context.havahavaiColorScheme?.grey02))
      ])
    ]);
  }
}
