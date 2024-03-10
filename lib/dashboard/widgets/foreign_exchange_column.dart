import 'package:flutter/material.dart';
import 'package:havahavai_assignment/commons/theme/havahavai_theme.dart';

class ForeignExchangeColumn extends StatelessWidget {
  final String text1;
  final String text2;

  const ForeignExchangeColumn(
      {super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(text1,
          style: context.havahavaiTextTheme?.subheading1
              .copyWith(color: context.havahavaiColorScheme?.grey02)),
      Text(text2,
          style: context.havahavaiTextTheme?.subheading1
              .copyWith(color: context.havahavaiColorScheme?.grey02))
    ]);
  }
}
