import 'package:flutter/material.dart';

class myContainer extends StatelessWidget {
  final Decoration? decoration;
  final BoxBorder? border;
  final Widget? child;
  final AlignmentGeometry? alignment;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  const myContainer({super.key,  this.decoration, this.border, this.child, this.alignment, this.height, this.width, this.margin, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: decoration,
      alignment: alignment,
      height: height,
      width: width,
      margin: margin,
      child: child,
    );
  }
}
