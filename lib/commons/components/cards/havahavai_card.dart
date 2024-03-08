import 'package:flutter/material.dart';

class HavahavaiCard extends StatelessWidget {
  const HavahavaiCard({
    Key? key,
    required this.child,
    this.margin = const EdgeInsets.all(0.0),
    this.padding = const EdgeInsets.all(16.0),
    this.height,
    this.borderSide = BorderSide.none,
    this.containerColor,
    this.onTap,
    this.elevation = 0,
    this.radius = 8,
  }) : super(key: key);

  final Widget child;
  final BorderSide borderSide;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final Color? containerColor;
  final VoidCallback? onTap;
  final double? elevation;
  final double radius;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: elevation,
        color: containerColor ?? Theme.of(context).cardColor,
        margin: margin,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            side: borderSide, borderRadius: BorderRadius.circular(radius)),
        child: InkWell(
            onTap: onTap,
            child: Container(height: height, padding: padding, child: child)));
  }
}
