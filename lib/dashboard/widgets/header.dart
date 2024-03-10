import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havahavai_assignment/common_data/constants/havahavai_strings.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 16.h),
      Text(HavahavaiString.dubiaAirport,
          style: context.havahavaiTextTheme?.heading1
              .copyWith(color: context.havahavaiColorScheme?.black1)),
      SizedBox(height: 8.h),
      Row(children: [
        Text("${HavahavaiString.dubia} .",
            style: context.havahavaiTextTheme?.subheading2
        .copyWith(color: context.havahavaiColorScheme?.grey01)),
        const Text(" 🇦🇪 ", style: TextStyle(fontSize: 12)),
        Text(HavahavaiString.unitedAE,
            style:  context.havahavaiTextTheme?.subheading2
        .copyWith(color: context.havahavaiColorScheme?.grey02)
        )
      ])
    ]);
  }
}
