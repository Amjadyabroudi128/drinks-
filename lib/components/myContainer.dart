import 'package:flutter/material.dart';

class myContainer extends StatelessWidget {
  final Decoration? decoration;
  final BoxBorder? border;
  final Widget? child;
  final AlignmentGeometry? alignment;
  const myContainer({super.key,  this.decoration, this.border, this.child, this.alignment});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      alignment: alignment,
      child: child,
    );
  }
}
