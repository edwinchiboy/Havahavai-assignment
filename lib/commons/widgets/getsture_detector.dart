import 'package:flutter/material.dart';

import 'package:havahavai_assignment/commons/theme/havahavai_colors.dart';

class HavahavaiGestureDetector extends StatelessWidget {
  final bool active;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? borderColor;
  final VoidCallback? onTap;
  final double borderWidth;
  final double radius;
  final double? height;

  const HavahavaiGestureDetector({
    required this.active,
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16.0),
    this.height,
    required this.activeColor,
    required this.inactiveColor,
    this.borderColor = Colors.black12,
    this.onTap,
    this.borderWidth = 0.0,
    this.radius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap ?? () {},
        child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: height ?? 36.0),
            child: IntrinsicWidth(
                child: Container(
                    padding: padding,
                    decoration: BoxDecoration(
                        color: active ? activeColor : inactiveColor,
                        border: Border.all(
                            width: borderWidth,
                            color: borderColor ?? HavahavaiColors.secondary),
                        borderRadius: BorderRadius.circular(radius)),
                    child: Center(child: child)))));
  }
}
